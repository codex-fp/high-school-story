---
id: HSS-12
title: Generate BMAD-native project context from existing docs
status: Done
assignee: []
created_date: '2026-06-09 09:31'
updated_date: '2026-06-09 09:38'
labels:
  - documentation
  - bmad
  - context
milestone: Documentation Alignment
dependencies: []
references:
  - README.md
  - AGENTS.md
  - ARCHITECTURE.md
  - DESIGN.md
  - STYLEGUIDE.md
  - docs/
  - .backlog/
  - _bmad-output/project-context.md
modified_files:
  - _bmad-output/project-context.md
  - >-
    .backlog/tasks/hss-12 -
    Generate-BMAD-native-project-context-from-existing-docs.md
priority: medium
ordinal: 9000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Compose BMAD/GDS-native project context from existing backlog, root documentation, and docs/ content. Reconcile legacy guidance files only after the new context captures their actionable project rules.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 BMAD-native project context captures critical stack, architecture, implementation, testing, and documentation rules
- [x] #2 Existing AI-agent documentation is used as source material
- [x] #3 Legacy guidance is not removed until replacement context exists
- [x] #4 Verification evidence is recorded in the final handoff
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence for HSS-12: ran `git fetch origin`; resolved GDS workflow customization; read source docs and code/build patterns; wrote `_bmad-output/project-context.md`; resolved completion hook; read generated file; ran `git status --short` and `git diff --stat`. Gradle checks were intentionally skipped because this is documentation-only.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Created BMAD/GDS-native project context for HSS-12 at `_bmad-output/project-context.md`, covering stack versions, source-of-truth rules, game/engine boundaries, KGE patterns, story/dialogue conventions, assets, MVP design invariants, code organization, testing, build commands, anti-patterns, and usage guidance. Verification was documentation-only: read the generated file and inspected git status/diff; Gradle was not run because no Kotlin, Gradle, assets, or runtime code changed. Residual risk: legacy root docs still reference `engine/ARCHITECTURE.md` and `engine/STYLEGUIDE.md`, but the current engine checkout exposes `engine/README.md` and `engine/AGENTS.md` instead.
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
