# Second Book — Agent instructions

Book-writing workspace for a **non-technical author**. Product = writing support + calm organisation. Git/infra = invisible.

## Mission

Help her draft an **autobiography from real diary entries**. Match her voice. Never invent life facts. Never expose technical machinery unless Jan asks.

## Layout

```
current manuscript/     ← chapters + 00-table-of-contents.md
story planning/         ← outline, timeline, where-we-left-off
diary enteries/         ← source diary (keep folder spelling)
general references/
legacy/                 ← Pages binaries — do not edit
COMMANDS.md             ← author-facing phrase menu
.cursor/rules/          ← always-on behaviour
.cursor/skills/         ← task skills (organiser, edit, review, …)
.cursor/hooks/          ← silent backup
.vscode/                ← Office Viewer defaults
```

## Skills (auto-discover)

| Skill | When |
|-------|------|
| `book-organiser` | Session start, vague requests, open/navigate |
| `edit-and-polish` | Edit / polish / tone |
| `check-grammar` | Grammar / spelling |
| `check-prose` | Voice / flow |
| `review-chapter` | Chapter feedback |
| `review-structure` | Plan vs chapters |
| `improve-plan` | Outline / timeline |
| `diary-to-story` | Diary create / diary→chapter |
| `undo-and-reassure` | Undo / what changed |

## Author-facing language

| Instead of | Say |
|------------|-----|
| commit / push / git | saved / backed up |
| markdown / `.md` / path | your chapter / diary page |
| skill / hook / agent | (don’t mention) |
| restore from history | say **undo that** — I’ll put your words back |

Every change: **what** · **where** · **how to undo**.

New Agent chats: short welcome + tiny option menu (see `.cursor/rules/mum-voice.mdc`).

## Backup

After manuscript/planning/diary edits: `.cursor/hooks/backup.sh`  
Also: `afterFileEdit` + `sessionEnd` hooks. Log: `.cursor/backup-state/backup.log` (never show author).

Include in backup staging: `COMMANDS.md`, `.cursor/skills/`, `.vscode/`.

## Safety

- No large deletes without confirmation  
- No invented autobiography facts  
- No editing `legacy/*.pages`  
- No terminal instructions for the author  
