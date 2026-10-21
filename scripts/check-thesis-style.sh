#!/bin/sh
set -eu
REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
SOURCE_LIST="$REPO_ROOT/scripts/thesis-sources.txt"
if [ ! -f "$SOURCE_LIST" ]; then
  exit 0
fi
ok=1
while IFS= read -r relative_path || [ -n "$relative_path" ]; do
  case "$relative_path" in ''|'#'*) continue ;; esac
  file="$REPO_ROOT/$relative_path"
  if [ ! -f "$file" ]; then continue; fi
  h1_count=$(grep -c "^# " "$file" || true)
  if [ "$h1_count" -ne 1 ]; then
    echo "Style check: $relative_path ma $h1_count nagłówków H1, oczekiwano 1" >&2
    ok=0
  fi
  h_lower=$(grep -c "^###" "$file" || true)
  if [ "$h_lower" -ne 0 ]; then
    echo "Style check: $relative_path zawiera nagłówki poniżej poziomu podrozdziałów (###), co jest niedozwolone" >&2
    ok=0
  fi
  if grep -q " — \| – \| -- " "$file"; then
    echo "Style check: $relative_path zawiera myślniki lub półpauzy jako interpunkcję" >&2
    ok=0
  fi
done < "$SOURCE_LIST"
if [ "$ok" -ne 1 ]; then
  echo "Style check failed" >&2
  exit 1
fi
exit 0
