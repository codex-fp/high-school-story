---
id: HSS-17
title: Promote GDD artifact to durable documentation
status: Done
assignee: []
created_date: '2026-06-09 17:31'
updated_date: '2026-06-09 17:39'
labels:
  - design
  - docs
  - gdd
milestone: m-0
dependencies:
  - HSS-15
  - HSS-16
references:
  - _bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/gdd.md
  - >-
    _bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/epics.md
  - >-
    _bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/decision-log.md
documentation:
  - docs/game-design.md
  - docs/index.md
  - _bmad-output/project-context.md
  - docs/project-overview.md
modified_files:
  - docs/game-design.md
  - docs/index.md
  - docs/project-overview.md
  - _bmad-output/project-context.md
priority: high
ordinal: 17000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Promote the current planning GDD artifact into the repository's durable documentation so docs/game-design.md becomes the canonical game design source of truth and lean agent context reflects the updated design rules.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 docs/game-design.md reflects the promoted GDD contract
- [x] #2 docs/index.md identifies game-design.md as the durable GDD/design source
- [x] #3 _bmad-output/project-context.md reflects critical updated design rules for agents
- [x] #4 Planning artifact remains available as workflow history
- [x] #5 Self-review verifies no stale contradictions with the promoted GDD
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence: ran git fetch origin; searched docs/ and _bmad-output/project-context.md for stale old-contract phrases including weak grades hard fail wording, 50/50 teacher weighting, small allowances, and old loss-state phrasing; checked docs/game-design.md for unfilled template tokens; reviewed assumption markers. Gradle checks and visual previews were not applicable for documentation-only promotion.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Promoted the HSS-15/HSS-16 planning GDD into durable project documentation. Replaced docs/game-design.md with a canonical MVP-first GDD, updated docs/index.md to describe game-design.md as the durable GDD/design source, updated docs/project-overview.md current status, and refreshed _bmad-output/project-context.md with the critical promoted design rules agents must preserve. The planning artifact remains in _bmad-output/planning-artifacts/ as workflow history. Verification was documentation self-review: searched for stale old-contract phrases, unfilled template tokens, and assumption markers; no Gradle checks were run because no code, Kotlin, or Gradle files changed.
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
