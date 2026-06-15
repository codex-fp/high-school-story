---
id: HSS-42
title: Add tmux-driven Codex handoff and fork skills
status: Done
assignee: []
created_date: '2026-06-15 14:11'
updated_date: '2026-06-15 19:48'
labels: []
dependencies: []
documentation:
  - AGENTS.md
  - docs/agent/guide.md
  - _bmad-output/project-context.md
priority: medium
ordinal: 41000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Create repo-local Codex skills and supporting local personal agent instructions for tmux-based multi-session work. The workflow must support starting new `codex --yolo` sessions in named tmux windows and giving them either a fresh handoff prompt or a fork prompt based on the current session context, while keeping developer-specific tmux conventions out of shared project documentation.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Repo-local `tmux-handoff` and `tmux-fork` skills exist with clear trigger descriptions and deterministic instructions for launching a new Codex tmux pane from resolved local guidance.
- [x] #2 The skills include or use a reliable local command workflow that targets the requested tmux window and injects the generated prompt into the new Codex CLI session.
- [x] #3 Local personal agent guidance documents the tmux session name, allowed tmux windows, and the requirement to use `codex --yolo`, while shared project guidance only points to the optional local guidance file.
- [x] #4 The change includes verification evidence showing the skills and command helpers were created, `AGENTS.local.md` is gitignored, and the shared documentation paths are internally consistent.
<!-- AC:END -->



## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification commands: `bash -n .agents/skills/tmux-handoff/scripts/launch-codex-tmux-pane.sh`, `bash .agents/skills/tmux-handoff/scripts/launch-codex-tmux-pane.sh --session high-school-story --window design --prompt-file <tmp> --launch-command 'codex --yolo' --dry-run`, `bash .agents/skills/tmux-handoff/scripts/launch-codex-tmux-pane.sh --session high-school-story --window design --prompt-file <tmp> --launch-command cat`, `tmux capture-pane -p -S - -t <pane_id> | rg 'fork-line-[12]'`, `git check-ignore -v AGENTS.local.md`, `git diff --check -- AGENTS.md .gitignore .agents/skills/tmux-handoff/SKILL.md .agents/skills/tmux-handoff/scripts/launch-codex-tmux-pane.sh .agents/skills/tmux-fork/SKILL.md`.

Scenario steps: created repo-local `tmux-handoff` and `tmux-fork` skills, added a shared tmux launcher helper, created a local `AGENTS.local.md` file for developer-specific tmux workflow, updated shared `AGENTS.md` to instruct agents to read the optional local file, and kept tmux-specific rules out of shared project docs.

Observed results: dry-run resolved explicit `session=high-school-story`, `window=design`, `cwd=/home/fpiechowski/high-school-story`, and explicit `launch_command=codex --yolo`; live harness returned a real `pane_id` and `tmux capture-pane` matched both injected lines `fork-line-1` and `fork-line-2`; `git check-ignore -v AGENTS.local.md` confirmed the local file is ignored; `git diff --check` returned clean for the shared tracked files.

Relevant logs or artifact notes: `AGENTS.local.md` remains intentionally untracked and local-only; Gradle and visual preview were not run because the change only touched agent docs, `.gitignore`, skill metadata, and a shell helper; no Kotlin, Gradle, scene, map, or launcher files changed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added repo-local `tmux-handoff` and `tmux-fork` skills plus a shared tmux launcher helper. Moved the concrete tmux session, window, and `codex --yolo` preferences into local-only `AGENTS.local.md`, added `AGENTS.local.md` to `.gitignore`, and kept shared project guidance limited to pointing agents at the optional local supplement when it exists.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [ ] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
