---
id: HSS-38
title: Refresh epic and story planning artifacts from canonical game docs
status: Done
assignee: []
created_date: '2026-06-15 10:06'
updated_date: '2026-06-15 10:49'
labels:
  - planning
  - gdd
  - ux
  - bmad
dependencies: []
documentation:
  - docs/game/brief.md
  - docs/game/gdd.md
  - docs/game/architecture.md
  - docs/engineering/architecture.md
  - docs/game/ux/design.md
  - docs/game/ux/experience.md
  - docs/game/narrative/design.md
  - docs/game/narrative/content.md
  - docs/index.md
  - docs/agent/guide.md
  - _bmad-output/project-context.md
modified_files:
  - _bmad-output/planning-artifacts/epics.md
priority: high
ordinal: 37000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Rebuild or update the BMAD epic/story planning artifacts so they reflect the current durable game documentation in docs/game and no longer depend on the pre-UX planning state from the earlier session. The work should validate canonical inputs, refresh extracted requirements, and leave `_bmad-output/planning-artifacts/epics.md` ready for continued epic/story design.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Canonical input documents for GDD, architecture, UX, and narrative are explicitly identified and recorded for the planning artifact refresh.
- [x] #2 The requirements section in `_bmad-output/planning-artifacts/epics.md` is updated from the current durable documentation rather than the older pre-UX planning state.
- [x] #3 The refreshed artifact captures actionable UX-derived requirements separately enough to support later story writing.
- [x] #4 Any scope or source-of-truth differences between older planning artifacts and current docs are surfaced in the task notes or final handoff.
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Validated canonical input set as `docs/game/brief.md`, `docs/game/gdd.md`, `docs/game/architecture.md`, `docs/engineering/architecture.md`, `docs/game/ux/design.md`, `docs/game/ux/experience.md`, `docs/game/narrative/design.md`, and `docs/game/narrative/content.md`. Explicitly excluded older `epics.md` artifacts from source analysis.

Rebuilt `_bmad-output/planning-artifacts/epics.md` from durable docs, refreshed requirements inventory, created FR coverage map, approved 6-epic structure, and generated 32 stories across all epics.

Verification evidence: `git diff --check -- _bmad-output/planning-artifacts/epics.md` passed; placeholder scan `rg -n '\{\{' _bmad-output/planning-artifacts/epics.md` returned no matches; story count check returned 32 stories.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Refreshed the BMAD epic/story planning artifact from current durable game documentation, with UX and narrative requirements promoted into first-class planning inputs. The final artifact at `_bmad-output/planning-artifacts/epics.md` now contains an updated requirements inventory, FR-to-epic coverage map, 6 approved user-value epics, and 32 implementation-ready stories. Validation passed for template completeness, placeholder removal, and markdown sanity checks. Residual risk: the next workflow should still verify story readiness against implementation constraints via `gds-check-implementation-readiness` before sprint planning.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 Specification or owning documentation is updated when behavior changes
- [ ] #2 Implementation matches the accepted task scope
- [ ] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [ ] #5 Verification evidence records commands run
- [ ] #6 Verification evidence records scenario steps
- [ ] #7 Verification evidence records observed results
- [ ] #8 Verification evidence records relevant logs or artifact notes
- [ ] #9 Self-review is completed before handoff
- [ ] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
