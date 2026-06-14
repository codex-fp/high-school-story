---
id: HSS-31
title: Add OpenCode workflow-init compatibility command
status: Done
assignee: []
created_date: '2026-06-12 22:23'
updated_date: '2026-06-14 12:11'
labels:
  - opencode
  - bmad
  - workflow
milestone: Developer Experience
dependencies: []
references:
  - opencode.json
  - /tmp/opencode/BMAD-METHOD/tools/installer/ide/_config-driven.js
  - /tmp/opencode/BMAD-METHOD/tools/docs/fix-refs.md
documentation:
  - docs/ai-agent-guide.md
modified_files:
  - .backlog/tasks/hss-31 - Add-OpenCode-workflow-init-compatibility-command.md
  - .opencode/commands/workflow-init.md
priority: medium
ordinal: 1900
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add the missing OpenCode command entry for `workflow-init` using the BMAD upstream OpenCode command-pointer format, mapped to the modern local BMAD help skill so legacy workflow references work in this repository.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Project contains an OpenCode command file for `workflow-init`
- [x] #2 The command file matches BMAD upstream OpenCode command-pointer format
- [x] #3 Invoking the command routes to the local BMAD help skill
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Inspect local `bmad-help` skill description for command frontmatter text.

Create `.opencode/commands/workflow-init.md` as a compatibility pointer to `@skills/bmad-help`.

Verify the file shape matches the upstream OpenCode command pointer pattern and record evidence in the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence:\n- Ran `git fetch origin` before the repository change per local workflow guidance.\n- Inspected BMAD upstream `tools/installer/ide/_config-driven.js` and confirmed OpenCode command pointers use description-only frontmatter and `@skills/{canonicalId}` body content.\n- Inspected BMAD upstream `tools/docs/fix-refs.md` and confirmed `workflow-init` is deprecated in favor of `bmad-help`.\n- Read `.opencode/commands/workflow-init.md` after editing and confirmed the file shape is:\n  - `---` frontmatter\n  - one `description:` line\n  - blank line\n  - `@skills/bmad-help` body\n- `git status --short` showed the expected new files for this task plus an unrelated pre-existing untracked `_bmad-output/brainstorming-session-2026-06-13.md` file left untouched.\n- Gradle checks not run: change is OpenCode command/config surface only, with no Kotlin or Gradle edits.\n- Runtime OpenCode invocation not executed in-session; residual risk is limited to OpenCode command discovery behavior in the user's local app session, which should be addressed by restarting OpenCode after loading the new command file.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added a project-local OpenCode compatibility command at `.opencode/commands/workflow-init.md`. The file follows the BMAD upstream OpenCode command-pointer shape: description-only frontmatter plus a single `@skills/...` body. The alias routes legacy `workflow-init` invocation to the local `bmad-help` skill, which upstream BMAD documents as the replacement for `workflow-init`.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 Specification or owning documentation is updated when behavior changes
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
