#!/bin/sh
set -eu

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
SRC_DIR="$REPO_ROOT/bibliografia"
DST_DIR="$REPO_ROOT/bibliografia-md"

mkdir -p "$SRC_DIR" "$DST_DIR"

# No PDFs yet, exit cleanly
if ! ls "$SRC_DIR"/*.pdf >/dev/null 2>&1; then
  echo "No PDFs in $SRC_DIR, nothing to convert."
  exit 0
fi

for src in "$SRC_DIR"/*.pdf; do
  [ -e "$src" ] || continue
  base=$(basename "$src" .pdf)
  dst="$DST_DIR/$base.md"
  echo "Converting $src -> $dst"
  uv run --with "pymupdf4llm" python3 - "$src" "$dst" <<'PY'
import sys
from pathlib import Path

src = Path(sys.argv[1])
dst = Path(sys.argv[2])

try:
    import pymupdf4llm
except ImportError as e:
    print(f"Error: pymupdf4llm not available: {e}", file=sys.stderr)
    sys.exit(1)

md = pymupdf4llm.to_markdown(str(src))
dst.write_text(md, encoding="utf-8")
print(f"Wrote {dst} ({len(md)} chars)")
PY
done

echo "Done. Markdown files in $DST_DIR"
