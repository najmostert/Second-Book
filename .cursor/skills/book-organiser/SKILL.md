---
name: book-organiser
description: >-
  Organises the autobiography writing session from natural language. Opens the
  right chapter, diary, or plan file; updates where-we-left-off; explains changes
  and undo. Use when the author asks where she was, what to do next, to open a
  chapter, list the book, start a session, or makes a vague writing request.
---

# Book organiser

## Goal

She speaks in everyday language. You manage folders, files, and next steps. Never make her feel lost.

## Steps

1. **Understand** — Restate in one sentence if the request is broad.
2. **Orient** — Read `story planning/where-we-left-off.md` and `current manuscript/00-table-of-contents.md` when helpful.
3. **Open** — Name the file you are using in plain words (“I’m opening Chapter One”). Prefer reading/editing that file rather than dumping paths.
4. **Act** — Do the smallest useful step; hand off to a more specific skill when needed (edit, grammar, review, diary, plan).
5. **Comfort** — End with:
   - What I did
   - Where it is (chapter / diary / plan)
   - If you don’t like it, say **undo that**

## Routing cheat sheet

| She wants… | Skill / action |
|------------|----------------|
| Polish / rewrite a bit | `edit-and-polish` |
| Grammar only | `check-grammar` |
| Voice / rhythm | `check-prose` |
| Feedback on a chapter | `review-chapter` |
| Outline vs chapter | `review-structure` |
| Better plan / timeline | `improve-plan` |
| Diary → chapter | `diary-to-story` |
| Undo / put back | `undo-and-reassure` |

## Session end

Update `story planning/where-we-left-off.md` with date, what was worked on, and one gentle next step. Run `.cursor/hooks/backup.sh` after manuscript or planning edits.
