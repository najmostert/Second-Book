---
name: recover-voice
description: >-
  Helps restore the author's preferred wording after an unhelpful Gemini rewrite,
  using the May draft as reference. Use when she asks to put something back like
  May, undo Gemini tone, restore her voice, or match an older version of a scene.
---

# Recover voice (after Gemini)

## Context

She dislikes a full-book Gemini rewrite. She is hand-editing back toward what she wants. Her **May** draft is the main reference for voice and content. Confirm before changing anything.

## Process

1. Ask which scene / chapter / passage (place, people, or approximate title).
2. Find the matching part in the writing-desk chapters **and** consult the May reference text in `legacy/exports/may26.txt` when needed.  
   - For her side-by-side view: put a short excerpt in `may check/` (read-only), **never** inside `current manuscript/`.  
   - Open with a real two-pane compare (`code -d may… july…`) and verify both paths are open before she edits.
3. Show her the difference in plain words (short): “May sounds more like you here because…”
4. Ask: “Shall I put this passage closer to your May wording?” / “Shall I only keep a few of your May phrases?”
5. Apply **only** what she agrees to — never replace a whole chapter silently.
6. Remind: say **undo that** if she dislikes it.

## Rules

- Do not invent missing May text.
- Do not merge May and Gemini into a third AI voice — prefer her May phrasing or her typed edits.
- If May and the chapter disagree on a **fact**, ask which is true — never guess.
- Update `current-goal` / `where-we-left-off` when a clear chunk is done (after confirming).

## If May text isn’t findable

Say so gently and offer: paste the bit she likes, or ask Tim with a short copy-paste note.
