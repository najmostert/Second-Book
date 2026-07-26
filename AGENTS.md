# Second Book — Agent instructions (source of truth index)

Keep this file short. **Do not** duplicate long guidance here — update the owning file instead.

## Read order (every new chat)

1. `story planning/current-goal.md` — what we’re doing now  
2. `story planning/where-we-left-off.md` — session bookmark  
3. Always-on rules in `.cursor/rules/` (already injected)

## Who owns what (anti-drift)

| Topic | Single owner | Do not also rewrite in… |
|-------|--------------|-------------------------|
| Voice, confirm, Tim notes | `.cursor/rules/mum-voice.mdc` | README, skills, AGENTS |
| Session flow / open pages | `.cursor/rules/organiser.mdc` | book-organiser skill body |
| Folders, facts, safety | `.cursor/rules/book-project.mdc` | — |
| Silent backup | `.cursor/rules/git-backup.mdc` + hooks | chat with author |
| Chapter file format | `.cursor/rules/manuscript-markdown.mdc` | — |
| Phrases she can say | `COMMANDS.md` | README (link only) |
| Current goal | `story planning/current-goal.md` | where-we-left-off, outline |
| Session bookmark | `story planning/where-we-left-off.md` | current-goal, README |
| Life outline (stable) | `story planning/ideas-and-outline.md` | status chatter |
| Narrative shape / hero’s journey | `story planning/story-shape.md` | outline, chapter files |
| Voice hallmarks + anti-Gemini checklist | `story planning/voice-guide.md` | recover-voice skill body, rules |
| Recurring motifs and payoffs | `story planning/threads-and-echoes.md` | outline, story-shape |
| Per-chapter summary + lengths | `story planning/chapter-by-chapter.md` | table of contents |
| Name/place register | `story planning/people-and-places.md` | outline “people who matter” |
| Years and places | `story planning/life-timeline.md` | outline, chapter-by-chapter |
| Working chapters | `current manuscript/` | legacy Pages |
| Voice reference (May) | `legacy/exports/may26.txt` (local) | don’t re-import as “lead” |
| May side-by-side pages | `may check/` only | never under `current manuscript/` |

## Draft roles (do not mix)

- **Working book** = `current manuscript/` (edit here).  
- **May reference** = preferred voice/content while undoing Gemini tone — consult, don’t treat as a second live manuscript.  
- **legacy/*.pages** = archive only.  
- **diary enteries/** = source notes; never overwrite with chapter prose.

## Skills

Thin playbooks under `.cursor/skills/`. If a skill restates a rule, **delete the restatement** and point to the rule.

| Skill | Use when |
|-------|----------|
| book-organiser | vague / navigate / session start |
| edit-and-polish | polish / tone |
| check-grammar | grammar only |
| check-prose | voice / flow |
| review-chapter | chapter feedback |
| review-structure | vs plan |
| improve-plan | outline / timeline |
| diary-to-story | diary ↔ chapter |
| recover-voice | closer to May / un-Gemini |
| undo-and-reassure | undo / what changed |

## Anti-drift rules (Tim)

- Prefer **updating** an owner file over adding a new always-on rule or guide.  
- No second “status” doc. Goal ≠ bookmark ≠ outline.  
- Author docs: `README.md` (welcome) + `COMMANDS.md` (phrases) only — don’t grow parallel how-tos.  
- Never invent facts. Confirm before edits. Tech → copy-paste for **Tim**.

## Backup (invisible)

After manuscript/planning/diary edits: `.cursor/hooks/backup.sh`. Don’t mention to author.
