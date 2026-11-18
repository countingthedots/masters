-- Keep each source file flat while giving the assembled thesis a TOC hierarchy.
local function subsection_number(content)
  return pandoc.utils.stringify(content):match("^(%d+%.%d+)%.%s")
end

function Header(header)
  if header.level == 1 and subsection_number(header.content) then
    header.level = 2
  end
  return header
end

function Para(paragraph)
  if #paragraph.content == 1 and paragraph.content[1].t == "Strong" then
    local content = paragraph.content[1].content
    local number = subsection_number(content)
    if number then
      return pandoc.Header(2, content, pandoc.Attr("podrozdzial-" .. number:gsub("%.", "-")))
    end
  end
end

local function escape_xml(text)
  return (text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
end

local function cover_paragraph(field, format)
  local alignment = field.align or "center"
  if format == "latex" then
    local commands = {center = "centering", left = "raggedright", right = "raggedleft"}
    local contents = pandoc.write(pandoc.Pandoc({pandoc.Plain(field.text)}), "latex"):gsub("%s+$", "")
    local star = field.first and "*" or ""
    return pandoc.RawBlock("latex", string.format(
      "\\vspace%s{%dpt}{\\%s\\fontsize{%d}{%d}\\selectfont%s %s\\par}",
      star, field.gap, commands[alignment], field.size, field.line,
      field.bold and "\\bfseries" or "", contents
    ))
  end

  return pandoc.RawBlock("openxml", string.format(
    [[<w:p>
      <w:pPr>
        <w:pStyle w:val="Title"/>
        <w:spacing w:before="%d" w:after="0" w:line="%d" w:lineRule="exact"/>
        <w:ind w:firstLine="0"/>
        <w:contextualSpacing w:val="0"/>
        <w:jc w:val="%s"/>
      </w:pPr>
      <w:r>
        <w:rPr><w:rFonts w:ascii="Carlito" w:hAnsi="Carlito"/><w:b w:val="%d"/><w:sz w:val="%d"/></w:rPr>
        <w:t xml:space="preserve">%s</w:t>
      </w:r>
    </w:p>]],
    20 * field.gap, 20 * field.line, alignment, field.bold and 1 or 0,
    2 * field.size, escape_xml(pandoc.utils.stringify(field.text))
  ))
end

function Meta(meta)
  if FORMAT ~= "latex" and FORMAT ~= "docx" then
    return meta
  end

  local function text(key, label)
    assert(meta[key], "Missing thesis cover field: " .. key)
    local inlines = pandoc.Inlines{}
    if label then
      inlines:extend({pandoc.Str(label), pandoc.Space()})
    end
    inlines:extend(meta[key])
    return inlines
  end

  local fields = {
    {text = text("author"), size = 18, line = 25, gap = 108, bold = true, first = true},
    {text = text("title"), size = 18, line = 26, gap = 36, align = "left"},
    {text = text("title-en"), size = 18, line = 26, gap = 26, align = "left"},
    {text = text("thesis-type"), size = 11, line = 15, gap = 103, bold = true},
    {text = text("supervisor", "Promotor:"), size = 11, line = 15, gap = 71, align = "right"},
    {text = text("programme", "Kierunek:"), size = 11, line = 15, gap = 71, align = "left"},
    {text = text("date"), size = 11, line = 15, gap = 50},
  }
  local cover = pandoc.Blocks{}
  if FORMAT == "latex" then
    cover:insert(pandoc.RawBlock("latex", "\\thispagestyle{empty}\\begingroup\\setstretch{1}\\setlength{\\parindent}{0pt}"))
  end
  for _, field in ipairs(fields) do
    cover:insert(cover_paragraph(field, FORMAT))
  end
  if FORMAT == "latex" then
    cover:insert(pandoc.RawBlock("latex", "\\endgroup\\clearpage"))
  end

  meta["include-before"] = pandoc.MetaList{pandoc.MetaBlocks(cover)}
  meta["title-meta"] = meta.title
  meta["author-meta"] = meta.author
  meta.title = nil
  meta.author = nil
  meta.date = nil
  return meta
end
