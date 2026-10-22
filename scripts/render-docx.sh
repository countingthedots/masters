#!/bin/sh
set -eu

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
OUTPUT="$REPO_ROOT/praca-magisterska.docx"
SOURCE_LIST="$REPO_ROOT/scripts/thesis-sources.txt"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc is not available in PATH." >&2
  exit 1
fi

PYTHON=${PYTHON:-python3}
if ! "$PYTHON" -c 'import docx' >/dev/null 2>&1; then
  BUNDLED_PYTHON="/Users/roman.judeszko/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3"
  if [ -x "$BUNDLED_PYTHON" ]; then
    PYTHON="$BUNDLED_PYTHON"
  else
    echo "Error: python-docx is not available." >&2
    exit 1
  fi
fi

sh "$REPO_ROOT/scripts/check-thesis-style.sh"

"$PYTHON" - "$REPO_ROOT" "$OUTPUT" <<'PY'
from pathlib import Path
import os
import re
import shutil
import subprocess
import sys
import tempfile
from zipfile import ZIP_DEFLATED, ZipFile
from xml.etree import ElementTree as ET

from docx import Document
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.shared import Cm, Pt

repo_root = Path(sys.argv[1])
output = Path(sys.argv[2])
source_list = repo_root / "scripts" / "thesis-sources.txt"
files = [
    repo_root / line.strip()
    for line in source_list.read_text(encoding="utf-8").splitlines()
    if line.strip() and not line.lstrip().startswith("#")
]

metadata = """---
title: "Praca magisterska"
subtitle: "Komunikacja marketingowa w mediach społecznościowych a zachowania konsumentów pokolenia Z, na przykładzie branży kinowej"
author: "Nastassia Żurawel"
lang: pl-PL
toc: true
toc-title: "Spis treści"
numbersections: false
---
"""

WORD_NS = "http://schemas.openxmlformats.org/wordprocessingml/2006/main"
REL_NS = "http://schemas.openxmlformats.org/officeDocument/2006/relationships"
XML_NS = "http://www.w3.org/XML/1998/namespace"
NS = {"w": WORD_NS, "r": REL_NS}
ET.register_namespace("w", WORD_NS)
ET.register_namespace("r", REL_NS)

TABLE_COLUMN_WEIGHTS = [
    [1.0, 1.25, 1.15],
]
TABLE_WIDTH_TWIPS = 9071
FONT_10_PT = "20"
UEP_BODY_SIZE = "24"
UEP_HEADING_1_SIZE = "28"
UEP_HEADING_2_SIZE = "24"
UEP_FONT = "Carlito"


def strip_yaml(text: str) -> str:
    if text.startswith("---\n"):
        end = text.find("\n---", 4)
        if end != -1:
            after = text.find("\n", end + 4)
            return text[after + 1 :] if after != -1 else ""
    return text


def split_cells(row: str) -> list[str]:
    parts: list[str] = []
    current: list[str] = []
    escaped = False
    depth = 0
    for ch in row:
        if escaped:
            current.append(ch)
            escaped = False
            continue
        if ch == "\\":
            current.append(ch)
            escaped = True
            continue
        if ch == "{":
            depth += 1
        elif ch == "}" and depth > 0:
            depth -= 1
        if ch == "&" and depth == 0:
            parts.append("".join(current).strip())
            current = []
        else:
            current.append(ch)
    parts.append("".join(current).strip())
    return parts


def clean_latex_cell(cell: str) -> str:
    cell = cell.strip()
    cell = re.sub(r"\\textbf\{([^{}]*(?:\{[^{}]*\}[^{}]*)*)\}", r"**\1**", cell)
    cell = re.sub(r"\\textit\{([^{}]*(?:\{[^{}]*\}[^{}]*)*)\}", r"*\1*", cell)
    cell = re.sub(r"\\url\{([^{}]+)\}", r"\1", cell)
    cell = cell.replace(r"\&", "&")
    cell = cell.replace(r"\%", "%")
    cell = cell.replace(r"\_", "_")
    cell = cell.replace(r"\newline", "<br />")
    cell = cell.replace("\\\\", "")
    cell = re.sub(r"\s+", " ", cell).strip()
    return cell.replace("|", r"\|")


def latex_table_to_markdown(match: re.Match[str]) -> str:
    body = match.group(1)
    raw_rows: list[str] = []
    current: list[str] = []
    i = 0
    while i < len(body):
        if body.startswith("\\\\", i):
            raw_rows.append("".join(current).strip())
            current = []
            i += 2
            continue
        current.append(body[i])
        i += 1
    tail = "".join(current).strip()
    if tail:
        raw_rows.append(tail)

    rows: list[list[str]] = []
    for row in raw_rows:
        row = row.replace(r"\hline", "").strip()
        if not row:
            continue
        cells = [clean_latex_cell(cell) for cell in split_cells(row)]
        if any(cells):
            rows.append(cells)
    if not rows:
        return ""

    width = max(len(row) for row in rows)
    rows = [row + [""] * (width - len(row)) for row in rows]
    lines = [
        "| " + " | ".join(rows[0]) + " |",
        "| " + " | ".join(["---"] * width) + " |",
    ]
    lines.extend("| " + " | ".join(row) + " |" for row in rows[1:])
    return "\n" + "\n".join(lines) + "\n"


def convert_docx_markdown(text: str) -> str:
    text = strip_yaml(text)
    text = re.sub(
        r"\\begin\{xltabular\}\{\\linewidth\}\{.*?\}\n(.*?)\\end\{xltabular\}",
        latex_table_to_markdown,
        text,
        flags=re.S,
    )
    text = text.replace(r"\footnotesize", "").replace(r"\normalsize", "")
    text = re.sub(r"\\articlecite\{([^{}]+)\}\{([^{}]+)\}", r"\1^[*\2*]", text)
    text = re.sub(r"\\articlefooter\{([^{}]+)\}", r"^[*\1*]", text)
    text = re.sub(r"\\figuretitle\{([^{}]+)\}", r"**\1**", text)
    text = re.sub(r"\\figuresource\{([^{}]+)\}", r"\1", text)
    text = text.replace(r"\newline", "\n")
    return text


def w_tag(name: str) -> str:
    return f"{{{WORD_NS}}}{name}"


def ensure_child(parent: ET.Element, tag: str) -> ET.Element:
    child = parent.find(f"w:{tag}", NS)
    if child is None:
        child = ET.SubElement(parent, w_tag(tag))
    return child


def ensure_first_child(parent: ET.Element, tag: str) -> ET.Element:
    child = parent.find(f"w:{tag}", NS)
    if child is None:
        child = ET.Element(w_tag(tag))
        parent.insert(0, child)
    elif list(parent).index(child) != 0:
        parent.remove(child)
        parent.insert(0, child)
    return child


def set_run_size(run: ET.Element, size: str = FONT_10_PT) -> None:
    rpr = ensure_first_child(run, "rPr")
    for tag in ("sz", "szCs"):
        size_el = ensure_child(rpr, tag)
        size_el.set(w_tag("val"), size)


def set_paragraph_default_size(paragraph: ET.Element, size: str = FONT_10_PT) -> None:
    ppr = ensure_first_child(paragraph, "pPr")
    rpr = ensure_child(ppr, "rPr")
    for tag in ("sz", "szCs"):
        size_el = ensure_child(rpr, tag)
        size_el.set(w_tag("val"), size)


def set_table_font_size(table: ET.Element) -> None:
    for paragraph in table.findall(".//w:p", NS):
        set_paragraph_default_size(paragraph)
        ppr = ensure_first_child(paragraph, "pPr")
        ensure_child(ppr, "jc").set(w_tag("val"), "left")
        ensure_child(ppr, "ind").set(w_tag("firstLine"), "0")
        spacing = ensure_child(ppr, "spacing")
        spacing.set(w_tag("before"), "0")
        spacing.set(w_tag("after"), "0")
        spacing.set(w_tag("line"), "240")
        spacing.set(w_tag("lineRule"), "auto")
    for run in table.findall(".//w:r", NS):
        set_run_size(run)


def proportional_widths(weights: list[float], total: int = TABLE_WIDTH_TWIPS) -> list[int]:
    weight_sum = sum(weights)
    widths = [round(total * weight / weight_sum) for weight in weights]
    widths[-1] += total - sum(widths)
    return widths


def set_table_widths(table: ET.Element, widths: list[int]) -> None:
    tbl_pr = ensure_child(table, "tblPr")
    tbl_w = ensure_child(tbl_pr, "tblW")
    tbl_w.set(w_tag("type"), "dxa")
    tbl_w.set(w_tag("w"), str(sum(widths)))

    tbl_layout = ensure_child(tbl_pr, "tblLayout")
    tbl_layout.set(w_tag("type"), "fixed")

    old_grid = table.find("w:tblGrid", NS)
    if old_grid is not None:
        table.remove(old_grid)
    tbl_grid = ET.Element(w_tag("tblGrid"))
    for width in widths:
        grid_col = ET.SubElement(tbl_grid, w_tag("gridCol"))
        grid_col.set(w_tag("w"), str(width))
    insert_at = list(table).index(tbl_pr) + 1
    table.insert(insert_at, tbl_grid)

    for row in table.findall("w:tr", NS):
        cells = row.findall("w:tc", NS)
        for index, cell in enumerate(cells):
            if index >= len(widths):
                continue
            tc_pr = ensure_child(cell, "tcPr")
            tc_w = ensure_child(tc_pr, "tcW")
            tc_w.set(w_tag("type"), "dxa")
            tc_w.set(w_tag("w"), str(widths[index]))


def set_footnote_font_size(root: ET.Element) -> None:
    for paragraph in root.findall(".//w:p", NS):
        set_paragraph_default_size(paragraph)
        ppr = ensure_first_child(paragraph, "pPr")
        ensure_child(ppr, "ind").set(w_tag("firstLine"), "0")
        ensure_child(ppr, "jc").set(w_tag("val"), "left")
        spacing = ensure_child(ppr, "spacing")
        spacing.set(w_tag("before"), "0")
        spacing.set(w_tag("after"), "0")
        spacing.set(w_tag("line"), "240")
        spacing.set(w_tag("lineRule"), "auto")
    for run in root.findall(".//w:r", NS):
        set_run_size(run)


def set_font(run_properties: ET.Element, name: str = UEP_FONT) -> None:
    fonts = ensure_child(run_properties, "rFonts")
    for attribute in ("asciiTheme", "hAnsiTheme", "eastAsiaTheme", "cstheme"):
        fonts.attrib.pop(w_tag(attribute), None)
    for attribute in ("ascii", "hAnsi", "eastAsia", "cs"):
        fonts.set(w_tag(attribute), name)


def set_size(run_properties: ET.Element, size: str) -> None:
    for tag in ("sz", "szCs"):
        size_el = ensure_child(run_properties, tag)
        size_el.set(w_tag("val"), size)


def configure_paragraph_style(
    style: ET.Element,
    *,
    size: str,
    bold: bool = False,
    first_line: bool = False,
    justified: bool = False,
    page_break_before: bool = False,
    line_spacing: str = "360",
) -> None:
    ppr = ensure_child(style, "pPr")
    spacing = ensure_child(ppr, "spacing")
    spacing.set(w_tag("before"), "0")
    spacing.set(w_tag("after"), "0")
    spacing.set(w_tag("line"), line_spacing)
    spacing.set(w_tag("lineRule"), "auto")
    indent = ensure_child(ppr, "ind")
    indent.set(w_tag("firstLine"), "283" if first_line else "0")
    if justified:
        ensure_child(ppr, "jc").set(w_tag("val"), "both")
    if page_break_before:
        ensure_child(ppr, "pageBreakBefore")
    rpr = ensure_child(style, "rPr")
    set_font(rpr)
    set_size(rpr, size)
    if bold:
        ensure_child(rpr, "b")
        ensure_child(rpr, "bCs")
    color = ensure_child(rpr, "color")
    color.set(w_tag("val"), "000000")
    for attribute in ("themeColor", "themeShade", "themeTint"):
        color.attrib.pop(w_tag(attribute), None)


def configure_styles(styles_path: Path) -> None:
    tree = ET.parse(styles_path)
    root = tree.getroot()
    defaults = root.find("w:docDefaults", NS)
    if defaults is not None:
        rpr_default = defaults.find("w:rPrDefault/w:rPr", NS)
        if rpr_default is not None:
            set_font(rpr_default)
            set_size(rpr_default, UEP_BODY_SIZE)

    styles = {
        style.get(w_tag("styleId")): style
        for style in root.findall("w:style", NS)
    }
    normal = styles.get("Normal")
    if normal is not None:
        configure_paragraph_style(
            normal,
            size=UEP_BODY_SIZE,
            first_line=True,
            justified=True,
        )
    heading_1 = styles.get("Heading1")
    if heading_1 is not None:
        configure_paragraph_style(
            heading_1,
            size=UEP_HEADING_1_SIZE,
            bold=True,
            page_break_before=True,
        )
        heading_1_ppr = ensure_child(heading_1, "pPr")
        ensure_child(heading_1_ppr, "outlineLvl").set(w_tag("val"), "0")
        ensure_child(heading_1, "qFormat")
    heading_2 = styles.get("Heading2")
    if heading_2 is not None:
        configure_paragraph_style(
            heading_2,
            size=UEP_HEADING_2_SIZE,
            bold=True,
        )
    for style_id, size, bold in (
        ("Title", "40", True),
        ("Subtitle", "28", False),
        ("Author", UEP_BODY_SIZE, False),
        ("TOCHeading", UEP_HEADING_1_SIZE, True),
        ("TOC1", UEP_BODY_SIZE, False),
        ("FootnoteText", FONT_10_PT, False),
    ):
        style = styles.get(style_id)
        if style is not None:
            configure_paragraph_style(
                style,
                size=size,
                bold=bold,
                line_spacing="240" if style_id == "FootnoteText" else "360",
            )
    tree.write(styles_path, encoding="utf-8", xml_declaration=True)


def configure_page_geometry(document_root: ET.Element) -> ET.Element:
    sect_pr = document_root.find(".//w:sectPr", NS)
    if sect_pr is None:
        body = document_root.find("w:body", NS)
        if body is None:
            raise RuntimeError("DOCX document body is missing")
        sect_pr = ET.SubElement(body, w_tag("sectPr"))
    page_size = ensure_child(sect_pr, "pgSz")
    page_size.set(w_tag("w"), "11906")
    page_size.set(w_tag("h"), "16838")
    margins = ensure_child(sect_pr, "pgMar")
    for attribute, value in {
        "top": "1417",
        "right": "1134",
        "bottom": "1417",
        "left": "1701",
        "header": "708",
        "footer": "708",
        "gutter": "0",
    }.items():
        margins.set(w_tag(attribute), value)
    ensure_child(sect_pr, "titlePg")
    return sect_pr


def insert_break_before_toc(document_root: ET.Element) -> None:
    body = document_root.find("w:body", NS)
    if body is None:
        return


def populate_toc(document_root: ET.Element) -> None:
    body = document_root.find("w:body", NS)
    if body is None:
        return
    headings: list[tuple[str, str]] = []
    pending_bookmark = ""
    for child in list(body):
        if child.tag == w_tag("bookmarkStart"):
            pending_bookmark = child.get(w_tag("name"), "")
            continue
        if child.tag != w_tag("p"):
            continue
        style = child.find("w:pPr/w:pStyle", NS)
        if style is None or style.get(w_tag("val")) != "Heading1":
            continue
        inline_bookmark = child.find("w:bookmarkStart", NS)
        if inline_bookmark is not None:
            pending_bookmark = inline_bookmark.get(w_tag("name"), "")
        if not pending_bookmark:
            continue
        title = "".join(text.text or "" for text in child.findall(".//w:t", NS))
        headings.append((title, pending_bookmark))
        pending_bookmark = ""

    toc = body.find("w:sdt", NS)
    if toc is None:
        return
    content = toc.find("w:sdtContent", NS)
    if content is None or not headings:
        return
    children = list(content)
    for child in children[1:]:
        content.remove(child)
    for index, (title, bookmark_name) in enumerate(headings):
        paragraph = ET.SubElement(content, w_tag("p"))
        ppr = ET.SubElement(paragraph, w_tag("pPr"))
        ET.SubElement(ppr, w_tag("pStyle")).set(w_tag("val"), "TOC1")
        tabs = ET.SubElement(ppr, w_tag("tabs"))
        tab = ET.SubElement(tabs, w_tag("tab"))
        tab.set(w_tag("val"), "right")
        tab.set(w_tag("leader"), "dot")
        tab.set(w_tag("pos"), str(TABLE_WIDTH_TWIPS))
        if index == 0:
            outer_run = ET.SubElement(paragraph, w_tag("r"))
            outer_begin = ET.SubElement(outer_run, w_tag("fldChar"))
            outer_begin.set(w_tag("fldCharType"), "begin")
            outer_instruction = ET.SubElement(outer_run, w_tag("instrText"))
            outer_instruction.set(f"{{{XML_NS}}}space", "preserve")
            outer_instruction.text = ' TOC \\o "1-1" \\h \\z \\u '
            ET.SubElement(outer_run, w_tag("fldChar")).set(
                w_tag("fldCharType"), "separate"
            )
        title_run = ET.SubElement(paragraph, w_tag("r"))
        ET.SubElement(title_run, w_tag("t")).text = title
        tab_run = ET.SubElement(paragraph, w_tag("r"))
        ET.SubElement(tab_run, w_tag("tab"))
        begin_run = ET.SubElement(paragraph, w_tag("r"))
        begin = ET.SubElement(begin_run, w_tag("fldChar"))
        begin.set(w_tag("fldCharType"), "begin")
        instruction_run = ET.SubElement(paragraph, w_tag("r"))
        instruction = ET.SubElement(instruction_run, w_tag("instrText"))
        instruction.set(f"{{{XML_NS}}}space", "preserve")
        instruction.text = f" PAGEREF {bookmark_name} \\h "
        separate_run = ET.SubElement(paragraph, w_tag("r"))
        ET.SubElement(separate_run, w_tag("fldChar")).set(
            w_tag("fldCharType"), "separate"
        )
        value_run = ET.SubElement(paragraph, w_tag("r"))
        ET.SubElement(value_run, w_tag("t")).text = "1"
        end_run = ET.SubElement(paragraph, w_tag("r"))
        ET.SubElement(end_run, w_tag("fldChar")).set(w_tag("fldCharType"), "end")
        if index == len(headings) - 1:
            outer_end_run = ET.SubElement(paragraph, w_tag("r"))
            ET.SubElement(outer_end_run, w_tag("fldChar")).set(
                w_tag("fldCharType"), "end"
            )
    for index, child in enumerate(list(body)):
        if child.tag != w_tag("sdt"):
            continue
        gallery = child.find(".//w:docPartGallery", NS)
        if gallery is None or gallery.get(w_tag("val")) != "Table of Contents":
            continue
        paragraph = ET.Element(w_tag("p"))
        run = ET.SubElement(paragraph, w_tag("r"))
        page_break = ET.SubElement(run, w_tag("br"))
        page_break.set(w_tag("type"), "page")
        body.insert(index, paragraph)
        return


def configure_with_python_docx(path: Path) -> None:
    document = Document(path)

    def style_font(style_id: str, size: float, bold: bool = False) -> None:
        if style_id not in document.styles:
            return
        style = document.styles[style_id]
        style.font.name = UEP_FONT
        style.font.size = Pt(size)
        style.font.bold = bold
        rpr = style.element.get_or_add_rPr()
        rfonts = rpr.get_or_add_rFonts()
        for attribute in ("ascii", "hAnsi", "eastAsia", "cs"):
            rfonts.set(qn(f"w:{attribute}"), UEP_FONT)

    def style_paragraph(
        style_id: str,
        *,
        first_line_cm: float | None,
        alignment: WD_ALIGN_PARAGRAPH,
        line_spacing: float = 1.5,
        page_break_before: bool = False,
    ) -> None:
        if style_id not in document.styles:
            return
        paragraph_format = document.styles[style_id].paragraph_format
        paragraph_format.left_indent = Cm(0)
        paragraph_format.right_indent = Cm(0)
        paragraph_format.first_line_indent = (
            Cm(first_line_cm) if first_line_cm is not None else None
        )
        paragraph_format.space_before = Pt(0)
        paragraph_format.space_after = Pt(0)
        paragraph_format.line_spacing = line_spacing
        paragraph_format.alignment = alignment
        paragraph_format.page_break_before = page_break_before

    for style_id in ("Normal", "BodyText", "BlockText"):
        style_font(style_id, 12)
        style_paragraph(
            style_id,
            first_line_cm=0.5,
            alignment=WD_ALIGN_PARAGRAPH.JUSTIFY,
        )
    style_font("Compact", 12)
    style_paragraph(
        "Compact",
        first_line_cm=None,
        alignment=WD_ALIGN_PARAGRAPH.LEFT,
    )
    style_font("Heading1", 14, True)
    style_paragraph(
        "Heading1",
        first_line_cm=None,
        alignment=WD_ALIGN_PARAGRAPH.LEFT,
        page_break_before=True,
    )
    style_font("Heading2", 12, True)
    style_paragraph(
        "Heading2",
        first_line_cm=None,
        alignment=WD_ALIGN_PARAGRAPH.LEFT,
    )
    for style_id, size in (
        ("Title", 20),
        ("Subtitle", 14),
        ("Author", 12),
        ("TOCHeading", 14),
        ("TOC1", 12),
    ):
        style_font(style_id, size, style_id in {"Title", "TOCHeading"})
        style_paragraph(
            style_id,
            first_line_cm=None,
            alignment=(
                WD_ALIGN_PARAGRAPH.CENTER
                if style_id in {"Title", "Subtitle", "Author"}
                else WD_ALIGN_PARAGRAPH.LEFT
            ),
        )
    style_font("FootnoteText", 10)
    style_paragraph(
        "FootnoteText",
        first_line_cm=None,
        alignment=WD_ALIGN_PARAGRAPH.LEFT,
        line_spacing=1.0,
    )

    for paragraph in document.paragraphs:
        style_id = paragraph.style.style_id if paragraph.style is not None else ""
        paragraph_text = paragraph.text.strip()
        num_pr = paragraph._p.pPr.numPr if paragraph._p.pPr is not None else None
        if paragraph._p.xpath(".//w:drawing"):
            paragraph.paragraph_format.left_indent = Cm(0)
            paragraph.paragraph_format.right_indent = Cm(0)
            paragraph.paragraph_format.first_line_indent = Cm(0)
            paragraph.paragraph_format.alignment = WD_ALIGN_PARAGRAPH.CENTER
            paragraph.paragraph_format.space_before = Pt(6)
            paragraph.paragraph_format.space_after = Pt(3)
        elif paragraph_text.startswith("Rysunek "):
            paragraph.paragraph_format.left_indent = Cm(0)
            paragraph.paragraph_format.right_indent = Cm(0)
            paragraph.paragraph_format.first_line_indent = Cm(0)
            paragraph.paragraph_format.alignment = WD_ALIGN_PARAGRAPH.CENTER
            paragraph.paragraph_format.space_before = Pt(0)
            paragraph.paragraph_format.space_after = Pt(0)
            paragraph.paragraph_format.line_spacing = 1.0
        elif paragraph_text.startswith("Źródło:"):
            paragraph.paragraph_format.left_indent = Cm(0)
            paragraph.paragraph_format.right_indent = Cm(0)
            paragraph.paragraph_format.first_line_indent = Cm(0)
            paragraph.paragraph_format.alignment = WD_ALIGN_PARAGRAPH.LEFT
            paragraph.paragraph_format.space_before = Pt(0)
            paragraph.paragraph_format.space_after = Pt(6)
            paragraph.paragraph_format.line_spacing = 1.0
            for run in paragraph.runs:
                run.font.name = UEP_FONT
                run.font.size = Pt(10)
        elif num_pr is not None:
            paragraph.paragraph_format.left_indent = Cm(0.75)
            paragraph.paragraph_format.first_line_indent = Cm(-0.5)
            paragraph.paragraph_format.right_indent = Cm(0)
            paragraph.paragraph_format.alignment = WD_ALIGN_PARAGRAPH.LEFT
            paragraph.paragraph_format.space_before = Pt(0)
            paragraph.paragraph_format.space_after = Pt(0)
            paragraph.paragraph_format.line_spacing = 1.5
        elif style_id in {"Normal", "BodyText", "BlockText"}:
            paragraph.paragraph_format.left_indent = Cm(0)
            paragraph.paragraph_format.right_indent = Cm(0)
            paragraph.paragraph_format.first_line_indent = Cm(0.5)
            paragraph.paragraph_format.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
        elif style_id in {"Heading1", "Heading2", "TOCHeading", "TOC1"}:
            paragraph.paragraph_format.left_indent = Cm(0)
            paragraph.paragraph_format.right_indent = Cm(0)
            paragraph.paragraph_format.first_line_indent = Cm(0)

    numbering = document.part.numbering_part.element
    for level in numbering.xpath(".//w:lvl[@w:ilvl='0']"):
        num_format = level.find(qn("w:numFmt"))
        if num_format is None or num_format.get(qn("w:val")) != "bullet":
            continue
        level_text = level.find(qn("w:lvlText"))
        if level_text is not None:
            level_text.set(qn("w:val"), "•")
        run_properties = level.find(qn("w:rPr"))
        if run_properties is None:
            run_properties = OxmlElement("w:rPr")
            level.append(run_properties)
        run_fonts = run_properties.find(qn("w:rFonts"))
        if run_fonts is None:
            run_fonts = OxmlElement("w:rFonts")
            run_properties.insert(0, run_fonts)
        for attribute in ("ascii", "hAnsi", "cs"):
            run_fonts.set(qn(f"w:{attribute}"), UEP_FONT)

    for section in document.sections:
        section.page_width = Cm(21)
        section.page_height = Cm(29.7)
        section.top_margin = Cm(2.5)
        section.bottom_margin = Cm(2.5)
        section.left_margin = Cm(3)
        section.right_margin = Cm(2)
        section.header_distance = Cm(1.25)
        section.footer_distance = Cm(1.25)
        section.different_first_page_header_footer = True

        first_footer = section.first_page_footer
        for paragraph in first_footer.paragraphs:
            paragraph.clear()

        footer = section.footer
        footer.is_linked_to_previous = False
        paragraph = footer.paragraphs[0]
        paragraph.clear()
        paragraph.alignment = WD_ALIGN_PARAGRAPH.CENTER
        paragraph.paragraph_format.left_indent = Cm(0)
        paragraph.paragraph_format.right_indent = Cm(0)
        paragraph.paragraph_format.first_line_indent = Cm(0)
        paragraph.paragraph_format.space_before = Pt(0)
        paragraph.paragraph_format.space_after = Pt(0)
        simple_field = OxmlElement("w:fldSimple")
        simple_field.set(qn("w:instr"), "PAGE")
        run = OxmlElement("w:r")
        text = OxmlElement("w:t")
        text.text = "1"
        run.append(text)
        simple_field.append(run)
        paragraph._p.append(simple_field)

    document.save(path)


def disable_automatic_field_updates(settings_path: Path) -> None:
    settings_tree = ET.parse(settings_path)
    settings_root = settings_tree.getroot()
    update_fields = settings_root.find("w:updateFields", NS)
    if update_fields is not None:
        settings_root.remove(update_fields)
    settings_tree.write(settings_path, encoding="utf-8", xml_declaration=True)


def resolve_executable(
    environment_variable: str, command: str, candidates: list[str]
) -> str | None:
    configured = os.environ.get(environment_variable)
    paths = [configured, shutil.which(command), *candidates]
    for value in paths:
        if value and Path(value).is_file() and os.access(value, os.X_OK):
            return value
    return None


def refresh_cached_toc_pages(path: Path) -> None:
    soffice = resolve_executable(
        "SOFFICE",
        "soffice",
        [
            "/Applications/LibreOffice.app/Contents/MacOS/soffice",
            str(Path.home() / "Applications/LibreOffice.app/Contents/MacOS/soffice"),
            "/opt/homebrew/bin/soffice",
            "/usr/local/bin/soffice",
        ],
    )
    pdftotext = resolve_executable(
        "PDFTOTEXT",
        "pdftotext",
        [
            "/opt/homebrew/bin/pdftotext",
            "/usr/local/bin/pdftotext",
        ],
    )
    missing = []
    if soffice is None:
        missing.append(
            "LibreOffice (install on macOS with: brew install --cask libreoffice)"
        )
    if pdftotext is None:
        missing.append("Poppler (install on macOS with: brew install poppler)")
    if missing:
        raise RuntimeError(
            "Missing tools required to cache DOCX page numbers: " + ", ".join(missing)
        )

    with tempfile.TemporaryDirectory() as render_dir:
        render_path = Path(render_dir)
        profile_path = render_path / "libreoffice-profile"
        profile_path.mkdir()
        subprocess.run(
            [
                soffice,
                "--headless",
                f"-env:UserInstallation={profile_path.as_uri()}",
                "--convert-to",
                "pdf",
                "--outdir",
                str(render_path),
                str(path),
            ],
            check=True,
            capture_output=True,
            text=True,
        )
        rendered_pdf = render_path / f"{path.stem}.pdf"
        pdf_text = subprocess.run(
            [pdftotext, "-layout", str(rendered_pdf), "-"],
            check=True,
            capture_output=True,
            text=True,
        ).stdout
        pages = pdf_text.split("\f")

    with tempfile.TemporaryDirectory() as tmp_dir:
        tmp_path = Path(tmp_dir)
        with ZipFile(path) as source:
            source.extractall(tmp_path)
        document_path = tmp_path / "word" / "document.xml"
        document_tree = ET.parse(document_path)
        document_root = document_tree.getroot()
        body = document_root.find("w:body", NS)
        if body is None:
            raise RuntimeError("DOCX document body is missing")
        heading_pages: dict[str, str] = {}
        for paragraph in body.findall("w:p", NS):
            style = paragraph.find("w:pPr/w:pStyle", NS)
            if style is None or style.get(w_tag("val")) != "Heading1":
                continue
            title = " ".join(
                "".join(text.text or "" for text in paragraph.findall(".//w:t", NS)).split()
            )
            for page_number, page_text in enumerate(pages, start=1):
                normalized_page = " ".join(page_text.split())
                if normalized_page.startswith(title):
                    heading_pages[title] = str(page_number)
                    break
            if title not in heading_pages:
                raise RuntimeError(f"Could not determine the page for heading: {title}")

        toc = body.find("w:sdt", NS)
        content = toc.find("w:sdtContent", NS) if toc is not None else None
        if content is None:
            raise RuntimeError("DOCX table of contents is missing")
        for paragraph in content.findall("w:p", NS)[1:]:
            texts = paragraph.findall(".//w:t", NS)
            if len(texts) < 2:
                continue
            title = " ".join((texts[0].text or "").split())
            if title in heading_pages:
                texts[-1].text = heading_pages[title]
        document_tree.write(document_path, encoding="utf-8", xml_declaration=True)
        with ZipFile(path, "w", ZIP_DEFLATED) as target:
            for file in tmp_path.rglob("*"):
                if file.is_file():
                    target.write(file, file.relative_to(tmp_path))


def postprocess_docx(path: Path) -> None:
    with tempfile.TemporaryDirectory() as tmp_dir:
        tmp_path = Path(tmp_dir)
        with ZipFile(path) as source:
            source.extractall(tmp_path)

        document_path = tmp_path / "word" / "document.xml"
        document_tree = ET.parse(document_path)
        document_root = document_tree.getroot()
        sect_pr = configure_page_geometry(document_root)
        insert_break_before_toc(document_root)
        populate_toc(document_root)
        tables = document_root.findall(".//w:tbl", NS)
        for table, weights in zip(tables, TABLE_COLUMN_WEIGHTS):
            set_table_font_size(table)
            set_table_widths(table, proportional_widths(weights))
        for table in tables[len(TABLE_COLUMN_WEIGHTS) :]:
            set_table_font_size(table)
        document_tree.write(document_path, encoding="utf-8", xml_declaration=True)

        configure_styles(tmp_path / "word" / "styles.xml")
        disable_automatic_field_updates(tmp_path / "word" / "settings.xml")

        footnotes_path = tmp_path / "word" / "footnotes.xml"
        if footnotes_path.exists():
            footnotes_tree = ET.parse(footnotes_path)
            set_footnote_font_size(footnotes_tree.getroot())
            footnotes_tree.write(footnotes_path, encoding="utf-8", xml_declaration=True)

        with ZipFile(path, "w", ZIP_DEFLATED) as target:
            for file in tmp_path.rglob("*"):
                if file.is_file():
                    target.write(file, file.relative_to(tmp_path))


combined = [metadata]
for file in files:
    combined.append(convert_docx_markdown(file.read_text(encoding="utf-8")))
    combined.append("\n")

with tempfile.NamedTemporaryFile("w", encoding="utf-8", suffix=".md", delete=False) as tmp:
    tmp.write("\n".join(combined))
    tmp_path = tmp.name

subprocess.run(
    [
        "pandoc",
        "-f",
        "markdown+footnotes+pipe_tables",
        tmp_path,
        "--resource-path",
        str(repo_root),
        "--output",
        str(output),
    ],
    check=True,
)
postprocess_docx(output)
configure_with_python_docx(output)
refresh_cached_toc_pages(output)
print(f"Rendered {output}")
PY
