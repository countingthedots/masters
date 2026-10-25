#!/bin/sh
set -eu

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
METADATA="$REPO_ROOT/00-pdf-metadata.yaml"
SOURCE_LIST="$REPO_ROOT/scripts/thesis-sources.txt"
OUTPUT="$REPO_ROOT/praca-magisterska.pdf"
TEMP_DIR="${TMPDIR:-/tmp}"
TEMP_FILE=$(mktemp "$TEMP_DIR/praca-magisterska.XXXXXX")

cleanup() {
  rm -f "$TEMP_FILE"
}

trap cleanup EXIT INT TERM

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc is not available in PATH." >&2
  exit 1
fi

if ! command -v tectonic >/dev/null 2>&1; then
  echo "Error: tectonic is not available in PATH." >&2
  exit 1
fi

if [ ! -f "$METADATA" ]; then
  echo "Error: metadata file not found: $METADATA" >&2
  exit 1
fi

if [ ! -f "$SOURCE_LIST" ]; then
  echo "Error: source list not found: $SOURCE_LIST" >&2
  exit 1
fi

sh "$REPO_ROOT/scripts/check-thesis-style.sh"

cp "$METADATA" "$TEMP_FILE"

while IFS= read -r relative_path || [ -n "$relative_path" ]; do
  case "$relative_path" in
    ''|'#'*) continue ;;
  esac
  file="$REPO_ROOT/$relative_path"
  if [ ! -f "$file" ]; then
    echo "Error: thesis source not found: $file" >&2
    exit 1
  fi
  printf '\n\\clearpage\n' >> "$TEMP_FILE"
  printf '\n' >> "$TEMP_FILE"
  cat "$file" >> "$TEMP_FILE"
  printf '\n' >> "$TEMP_FILE"
done < "$SOURCE_LIST"

printf 'Rendering thesis sources -> %s\n' "$OUTPUT"
pandoc -f markdown "$TEMP_FILE" --resource-path "$REPO_ROOT" --lua-filter "$REPO_ROOT/scripts/thesis-headings.lua" --toc-depth=2 --pdf-engine=tectonic --output "$OUTPUT"
