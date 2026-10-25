#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.10"
# dependencies = ["python-docx>=1.1,<2"]
# ///
"""Build both full exports, or reuse unchanged outputs. Use --force to rebuild."""

import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent.parent
CACHE = ROOT / ".cache" / "thesis-render.json"
OUTPUTS = [ROOT / "praca-magisterska.pdf", ROOT / "praca-magisterska.docx"]


def digest(paths):
    checksum = hashlib.sha256()
    for path in sorted(set(paths)):
        checksum.update(str(path).encode())
        checksum.update(path.read_bytes())
    return checksum.hexdigest()


def input_signature():
    source_list = ROOT / "scripts" / "thesis-sources.txt"
    paths = [ROOT / "00-pdf-metadata.yaml", ROOT / "AGENTS.md", source_list]
    paths += [ROOT / line.strip() for line in source_list.read_text().splitlines()
              if line.strip() and not line.lstrip().startswith("#")]
    paths += [p for directory in ("scripts", "assets")
              for p in (ROOT / directory).rglob("*") if p.is_file()]
    # Font changes can alter pagination without changing the Markdown.
    paths += [p for directory in (Path.home() / "Library/Fonts", Path("/Library/Fonts"))
              if directory.is_dir() for p in directory.rglob("*") if p.is_file()]
    tools = {}
    for command in ("pandoc", "tectonic", "uv", "soffice", "pdftotext"):
        executable = shutil.which(command)
        if executable:
            stat = Path(executable).stat()
            tools[command] = [executable, stat.st_size, stat.st_mtime_ns]
    environment = {key: os.environ.get(key) for key in ("SOFFICE", "PDFTOTEXT", "PATH")}
    return {"files": digest(paths), "tools": tools, "environment": environment,
            "python": sys.version, "python_executable": sys.executable}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--force", action="store_true", help="rebuild both exports")
    args = parser.parse_args()
    start = time.perf_counter()
    signature = input_signature()
    try:
        cached = json.loads(CACHE.read_text())
    except (OSError, ValueError):
        cached = {}
    if (not args.force and cached.get("inputs") == signature
            and all(p.is_file() for p in OUTPUTS)
            and cached.get("outputs") == digest(OUTPUTS)):
        print(f"PDF and DOCX unchanged; reusing both exports ({time.perf_counter() - start:.2f}s).")
        return
    environment = dict(os.environ, PYTHON=sys.executable)
    for label, script in (("PDF", "render-pdf.sh"), ("DOCX", "render-docx.sh")):
        stage_start = time.perf_counter()
        subprocess.run([str(ROOT / "scripts" / script)], cwd=ROOT,
                       env=environment, check=True)
        print(f"{label}: {time.perf_counter() - stage_start:.2f}s", flush=True)
    if input_signature() != signature:
        raise RuntimeError("Inputs changed during rendering; run the build again.")
    CACHE.parent.mkdir(parents=True, exist_ok=True)
    CACHE.write_text(json.dumps({"inputs": signature, "outputs": digest(OUTPUTS)}, indent=2))
    print(f"Both exports ready ({time.perf_counter() - start:.2f}s).")


if __name__ == "__main__":
    main()
