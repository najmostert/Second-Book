# Second Book — Agent instructions

This repository is a **book-writing workspace** for a non-technical author. Agents must treat **writing support** as the product and **git/infra** as invisible plumbing.

## Primary mission

Help the author draft, edit, organise, and plan her second book. Match her voice. Be warm and clear. Never expose technical machinery unless explicitly asked by Jan (the technical setup person).

## Repository layout

```
current manuscript/     ← chapters + 00-table-of-contents.md
story planning/           ← outlines, characters, plot
diary enteries/           ← dated diary entries (folder name has typo — keep it)
general references/       ← research notes
legacy/                   ← archived Apple Pages binaries — do not edit
.cursor/rules/            ← persistent AI behaviour
.cursor/hooks/            ← automatic git backup (silent)
```

## Automatic backup

| Trigger | Mechanism |
|---------|-----------|
| File edit (`.md` in manuscript folders) | `afterFileEdit` hook → `backup.sh` |
| Session end | `sessionEnd` hook → `backup.sh` |
| Agent writes manuscript files | Agent runs `.cursor/hooks/backup.sh` after edits |

Backup script behaviour:

- Debounces commits to at most once every **2 minutes**
- Commits only manuscript paths + user-facing docs
- Pushes to `origin` (GitHub: `najmostert/Second-Book`)
- Logs to `.cursor/backup-state/backup.log` — never show this to the author

On push failure: reassure that local saves exist; do not dump git errors.

## Author-facing language

| Instead of | Say |
|------------|-----|
| commit / push / git | "saved" / "backed up" |
| merge conflict | "two versions need reconciling — I'll help" |
| branch | (don't mention) |
| markdown / .md | "your chapter file" |

## Common tasks

### New chapter

1. Create `current manuscript/NN-slug.md` with `# Title` and placeholder body.
2. Update `00-table-of-contents.md`.
3. Run backup script.

### Diary entry

1. Create `diary enteries/YYYY-MM-DD.md`.
2. Run backup script.

### Editing

- Small, explainable diffs.
- Ask before deleting large passages.
- Use rules in `.cursor/rules/manuscript-markdown.mdc`.

### Legacy Pages

Binary `.pages` in `legacy/` cannot be read programmatically. Guide copy-paste or export to Word/PDF if conversion is needed.

## One-time setup (Jan only)

```bash
./setup-github.sh   # init remote, first push
chmod +x .cursor/hooks/*.sh   # already set in repo
```

Ensure GitHub credentials work on Mum's Mac (credential helper or SSH). Hooks need network for push.

## What agents must not do

- Ask the author to use the terminal
- Force-push, `--amend`, or rewrite history
- Edit `legacy/*.pages` binaries
- Commit secrets or `.env` files
- Over-engineer structure without being asked

## Rules reference

Always-applied Cursor rules:

- `book-project.mdc` — audience, folders, tone
- `git-backup.mdc` — silent backup discipline

File-scoped:

- `manuscript-markdown.mdc` — when editing `**/*.md` in manuscript folders
