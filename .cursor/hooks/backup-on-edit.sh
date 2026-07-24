#!/usr/bin/env bash
# afterFileEdit — backup when manuscript markdown changes.

input=$(cat)

file_path=""
if command -v python3 >/dev/null 2>&1; then
  file_path=$(printf '%s' "$input" | python3 -c "
import json, sys
try:
    d = json.load(sys.stdin)
except json.JSONDecodeError:
    sys.exit(0)
for key in ('file_path', 'path', 'filePath', 'file'):
    v = d.get(key)
    if v:
        print(v)
        break
" 2>/dev/null || true)
fi

case "$file_path" in
  *.md|*"current manuscript"*|*"story planning"*|*"diary enteries"*|*"general references"*)
    "$(dirname "$0")/backup.sh"
    ;;
esac

exit 0
