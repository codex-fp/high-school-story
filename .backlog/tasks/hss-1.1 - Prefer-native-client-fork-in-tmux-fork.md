---
id: HSS-1.1
title: Prefer native client fork in tmux-fork
status: Done
assignee: []
created_date: '2026-06-16 13:06'
updated_date: '2026-06-16 13:08'
labels: []
dependencies: []
modified_files:
  - .agents/skills/tmux-fork/SKILL.md
  - .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh
parent_task_id: HSS-1
priority: medium
ordinal: 2000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Update the repo-local `tmux-fork` skill so it prefers native agent-client session forking when the launched client supports it, instead of copying the current context into a pasted handoff. Codex should use its native `fork` capability with an explicit session id when available, with `--last` only as a fallback when the current session is known to be the most recent. Clients without a native fork mechanism should still fall back to the manual handoff path.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `tmux-fork` documents native client forking as the primary path and manual prompt pasting as the fallback only for clients without native fork support.
- [x] #2 The shared tmux launcher supports starting a new pane without pasting prompt text so native fork commands can run directly in the pane.
- [x] #3 The skill includes concrete Codex guidance based on verified local behavior: `codex fork [SESSION_ID] [PROMPT]` works for a live interactive session, and explicit session id is preferred over `--last` when available.
- [x] #4 Validation covers the updated skill and launcher behavior without changing unrelated tmux skills.
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Verify whether the local agent clients expose native session forking so `tmux-fork` can avoid manual context pasting.
2. Update the shared tmux launcher to support non-paste prompt delivery for native fork commands.
3. Rewrite `tmux-fork` so native client forking is the primary path and pasted handoff is only the fallback.
4. Validate the launcher and skill updates, then record the observed client behavior in the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verified locally that `codex-cli 0.139.0` exposes `codex fork [SESSION_ID] [PROMPT]`. A disposable probe showed `codex fork --last --no-alt-screen -C <tmp> "Reply only with FORKED..."` successfully started a second interactive Codex session while the original session remained open, and the fork replied `FORKED`.

The active Codex session footer shows a session UUID, although the TUI truncates it in a narrow terminal capture. For `tmux-fork`, explicit session id remains the preferred path, with `--last` documented only as a fallback when the current session is known to be the most recent one.

Updated `launch-agent-tmux-pane.sh` to add `--prompt-mode paste|argv|none`, allowing native fork commands to receive the generated subtask prompt as a CLI argument instead of requiring tmux paste injection.

Dry-run validation against the live tmux topology had to use the real current window name `high-school-story:eng-%13` instead of the earlier local default `engineering`, because the active tmux layout now uses a dynamic engineering window name.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Updated `tmux-fork` so it prefers native client session forking instead of always creating a manual pasted handoff. The skill now treats native forking as the primary path, with concrete verified Codex guidance and an explicit fallback to the old pasted-hand-off behavior only for clients that do not support native session fork.

The shared launcher now supports `--prompt-mode paste|argv|none`. This lets `tmux-fork` start a new pane with a native command such as `codex fork <session-id>` and pass the generated subtask prompt as a CLI argument instead of launching the client and then pasting a copied context blob into it.

Verification:
- `codex --help`
- `codex fork --help`
- `codex resume --help`
- `opencode --help`
- `opencode session --help`
- `codex --version`
- `opencode --version`
- Disposable live probe: started a temporary interactive Codex session, then ran `codex fork --last --no-alt-screen -C /tmp/codex-fork-probe... "Reply only with FORKED if this fork starts successfully."`; the fork launched in a second terminal and returned `FORKED`
- `python3 /home/fpiechowski/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/tmux-fork`
- `bash -n .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh`
- dry-run with `--prompt-mode argv` against the live tmux target `high-school-story:eng-%13`
- dry-run with `--prompt-mode paste` against the live tmux target `high-school-story:eng-%13`
- `git diff --check`

Residual risk: native fork support remains client-specific. Codex is verified locally, OpenCode has CLI-level fork flags but was not live-tested here, and clients without a real fork mechanism still need the manual fallback path.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [x] #3 Required Gradle checks pass
- [x] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
