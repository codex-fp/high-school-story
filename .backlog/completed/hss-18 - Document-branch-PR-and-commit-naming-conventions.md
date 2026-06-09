---
id: HSS-18
title: Document branch PR and commit naming conventions
status: Done
assignee: []
created_date: '2026-06-09 17:47'
updated_date: '2026-06-09 17:48'
labels:
  - docs
  - workflow
  - git
milestone: m-0
dependencies: []
references:
  - docs/ai-agent-guide.md
  - docs/development-guide.md
  - _bmad-output/project-context.md
documentation:
  - docs/ai-agent-guide.md
  - docs/development-guide.md
  - _bmad-output/project-context.md
modified_files:
  - docs/ai-agent-guide.md
  - docs/development-guide.md
  - _bmad-output/project-context.md
priority: medium
ordinal: 18000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add explicit repository workflow guidance for branch names, PR titles, and commit messages if the current agent guidance does not already define a preferred style. Document the preferred formats using task IDs and Conventional Commits.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Agent guidance explicitly defines branch naming as TASK-ID/short-description
- [x] #2 Agent guidance explicitly defines PR title format as TASK-ID Short description
- [x] #3 Agent guidance explicitly defines commit messages as Conventional Commits with TASK-ID before the message text
- [x] #4 Documentation stays consistent with existing task-traceability guidance
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence: reviewed existing workflow guidance in docs/ai-agent-guide.md, docs/development-guide.md, and _bmad-output/project-context.md; confirmed there was no explicit preferred commit message style before the change; self-reviewed updated sections for consistency with existing HSS task traceability rules. No Gradle checks were run because the change is documentation-only.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Documented explicit Git naming conventions for agents and contributors. Added branch naming as `TASK-ID/short-description`, PR title format as `TASK-ID Short description`, and commit message format as Conventional Commits with the task ID at the start of the summary text, for example `type(scope): TASK-ID Short description`, in docs/ai-agent-guide.md, docs/development-guide.md, and _bmad-output/project-context.md.
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
