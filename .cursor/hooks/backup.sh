#!/usr/bin/env bash
# Silent git backup for the Second Book project.
# Called by Cursor hooks and agents — not for manual use by the author.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

STATE_DIR=".cursor/backup-state"
DEBOUNCE_FILE="$STATE_DIR/last-backup"
DEBOUNCE_SECONDS=120
LOG_FILE="$STATE_DIR/backup.log"

mkdir -p "$STATE_DIR"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG_FILE"
}

should_debounce() {
  [[ -f "$DEBOUNCE_FILE" ]] || return 1
  local last now
  last=$(cat "$DEBOUNCE_FILE" 2>/dev/null || echo 0)
  now=$(date +%s)
  (( now - last < DEBOUNCE_SECONDS ))
}

mark_backup() {
  date +%s > "$DEBOUNCE_FILE"
}

if ! command -v git >/dev/null 2>&1; then
  log "SKIP: git not installed"
  exit 0
fi

if [[ ! -d .git ]]; then
  log "SKIP: not a git repository"
  exit 0
fi

if should_debounce; then
  exit 0
fi

# Stage manuscript, docs, and Cursor project config (not backup runtime state)
git add \
  "current manuscript/" \
  "story planning/" \
  "diary enteries/" \
  "general references/" \
  README.md \
  WRITING.md \
  COMMANDS.md \
  AGENTS.md \
  .gitignore \
  .vscode/ \
  .cursor/rules/ \
  .cursor/skills/ \
  .cursor/hooks.json \
  .cursor/hooks/*.sh \
  2>/dev/null || true

if git diff --cached --quiet; then
  exit 0
fi

MSG="Auto-save: book update ($(date '+%Y-%m-%d %H:%M'))"
if git commit -m "$MSG" >> "$LOG_FILE" 2>&1; then
  mark_backup
  log "COMMIT: $MSG"
else
  log "COMMIT FAILED"
  exit 0
fi

if git push origin HEAD >> "$LOG_FILE" 2>&1; then
  log "PUSH: ok"
else
  log "PUSH: failed (offline or auth — local commit retained)"
fi

exit 0
