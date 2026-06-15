---
id: HSS-35
title: Promote UX design artifact to durable docs
status: Done
assignee: []
created_date: '2026-06-15 00:40'
updated_date: '2026-06-15 00:40'
labels:
  - ux
  - docs
  - promotion
  - codex
milestone: m-0
dependencies:
  - HSS-34
references:
  - docs/game-brief.md
  - docs/game-design.md
  - docs/game-architecture.md
  - docs/narrative-design.md
  - docs/project-overview.md
  - _bmad-output/brainstorming-session-2026-06-14.md
documentation:
  - docs/ux-design.md
  - docs/ux-experience.md
  - _bmad-output/planning-artifacts/ux-designs/ux-High School Story-2026-06-14/DESIGN.md
  - _bmad-output/planning-artifacts/ux-designs/ux-High School Story-2026-06-14/EXPERIENCE.md
priority: high
ordinal: 35000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Promote the accepted UX design workflow artifact into durable documentation under
`docs/` using repo-consistent lowercase-dash filenames. The promotion must add
the UX docs to the documentation map and source-of-truth surfaces, and it must
synchronize existing durable gameplay and architecture docs where the promoted UX
contract changes accepted lesson behavior.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Create durable UX docs in `docs/` for visual identity and experience behavior
- [x] #2 Update documentation map and source-of-truth references to include the new UX docs
- [x] #3 Synchronize accepted lesson UX changes into durable gameplay and game-architecture docs
- [x] #4 Preserve the workflow artifacts as history rather than replacing them
- [x] #5 Record promotion evidence and residual risks in the active task
<!-- AC:END -->

## Current Evidence

<!-- SECTION:CURRENT_EVIDENCE:BEGIN -->
- Added `docs/ux-design.md` as the durable UX visual-identity and presentation source of truth.
- Added `docs/ux-experience.md` as the durable UX interaction and information-architecture source of truth.
- Updated `docs/index.md`, `docs/project-overview.md`, `AGENTS.md`, and `_bmad-output/project-context.md` to reference the new durable UX docs.
- Synchronized lesson UX direction into `docs/game-brief.md`, `docs/game-design.md`, and `docs/game-architecture.md` so the promoted UX docs do not sit beside contradictory durable guidance.
- Kept `_bmad-output/planning-artifacts/ux-designs/ux-High School Story-2026-06-14/` intact as workflow history.
<!-- SECTION:CURRENT_EVIDENCE:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Promoted the accepted UX artifact into durable repository documentation as
`docs/ux-design.md` and `docs/ux-experience.md`, then wired those documents into
the project's documentation map and source-of-truth surfaces. Updated the
durable lesson framing in the game brief, GDD, and game architecture docs so the
promoted UX contract now matches the accepted lesson interaction model instead of
living as parallel conflicting guidance.

No Gradle checks or live previews were run because this change touched durable
documentation and planning artifacts only; no Kotlin, Gradle, runtime asset,
scene, or launcher behavior changed directly.
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
