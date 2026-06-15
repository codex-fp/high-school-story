---
id: HSS-40
title: Close implementation-readiness gaps in epics and architecture
status: Done
assignee:
  - Codex
created_date: '2026-06-15 11:16'
updated_date: '2026-06-15 12:28'
labels:
  - planning
  - readiness
  - epics
  - architecture
  - ux
  - bmad
dependencies: []
references:
  - HSS-39
documentation:
  - docs/index.md
  - docs/agent/guide.md
  - docs/game/gdd.md
  - docs/game/architecture.md
  - docs/engineering/architecture.md
  - docs/game/ux/design.md
  - docs/game/ux/experience.md
  - _bmad-output/project-context.md
  - _bmad-output/planning-artifacts/epics.md
  - >-
    _bmad-output/planning-artifacts/implementation-readiness-report-2026-06-15.md
modified_files:
  - _bmad-output/planning-artifacts/epics.md
  - docs/game/architecture.md
  - docs/engineering/architecture.md
  - >-
    _bmad-output/planning-artifacts/implementation-readiness-handoff-2026-06-15.md
priority: high
ordinal: 39000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Use the completed readiness assessment to make the planning artifacts and owner architecture docs implementation-ready. The work should resolve the structural epic/story issue identified in Epic 6, close the remaining FR traceability gaps, and assign explicit architectural ownership for the accepted UX runtime behaviors that are still undocumented.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `_bmad-output/planning-artifacts/epics.md` no longer contains a release-level integration story in place of an independently completable story, and Epic 6 cleanly owns only full-game progression/graduation concerns.
- [x] #2 The epic artifact explicitly addresses the missing or partial readiness findings for `FR38`, `FR47`, `FR49`, and the missing parts of `FR64`, with clear story-level traceability.
- [x] #3 `docs/game/architecture.md` or `docs/engineering/architecture.md` explicitly assigns ownership for reduced-motion/accessibility-floor behavior, phone-overlay runtime/session state, and contextual alert handling.
- [x] #4 A follow-up readiness pass should be able to classify the current blockers as resolved without introducing new source-of-truth ambiguity between `docs/` and `_bmad-output/`.
- [x] #5 The handoff or task notes capture the exact source documents, report sections, and verification expectations needed by a fresh agent session.
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Re-read the readiness report sections that identify the remaining blockers and map each blocker to the owning source document or planning artifact.
2. Update `_bmad-output/planning-artifacts/epics.md` to remove the release-level Epic 6 integration story pattern and replace it with independently completable story ownership for the remaining full-game progression concerns, including explicit story-level traceability for FR38, FR47, FR49, and the missing parts of FR64.
3. Update the owning architecture document (`docs/game/architecture.md` unless a concern is clearly framework-facing) to assign explicit ownership for reduced-motion/accessibility-floor behavior, phone-overlay runtime/session state, and contextual alert handling without creating a new source-of-truth split.
4. Append a short HSS-40 completion note to the readiness handoff so a fresh agent can see exactly which report findings were closed, which document now owns each behavior, and what lightweight verification was run.
5. Verify the touched docs with `git diff --check -- _bmad-output/planning-artifacts/epics.md docs/game/architecture.md docs/engineering/architecture.md _bmad-output/planning-artifacts/implementation-readiness-handoff-2026-06-15.md` and finish with a self-review against the GDD and UX owner docs.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Primary handoff artifact prepared at `_bmad-output/planning-artifacts/implementation-readiness-handoff-2026-06-15.md`. Start the follow-up session from that file plus the readiness report `_bmad-output/planning-artifacts/implementation-readiness-report-2026-06-15.md`.

Reviewed canonical owner docs and readiness findings from `docs/game/gdd.md`, `docs/game/architecture.md`, `docs/game/ux/design.md`, `docs/game/ux/experience.md`, and `_bmad-output/planning-artifacts/implementation-readiness-report-2026-06-15.md` before editing.

Updated `_bmad-output/planning-artifacts/epics.md` to remove the release-level use of Epic 6 Story 6.5, add an artifact-level delivery-slice scope note, add Story 5.5 for rotating peripheral characters, extend club traceability for future-path and light skill flavor, and repurpose Story 6.5 into a full-game academic-identity / future-direction story with explicit canonical GDD traceability.

Updated `docs/game/architecture.md` to assign game-layer ownership for phone-overlay session state, pause semantics, contextual alert routing, and accessibility-floor behavior so the accepted UX runtime contract is no longer implicit.

Appended an `HSS-40 Completion Note` to `_bmad-output/planning-artifacts/implementation-readiness-handoff-2026-06-15.md` listing source docs, report sections used, changed ownership, and follow-up verification expectations.

Verification commands run: `git diff --check -- _bmad-output/planning-artifacts/epics.md docs/game/architecture.md docs/engineering/architecture.md _bmad-output/planning-artifacts/implementation-readiness-handoff-2026-06-15.md`.

Scenario steps exercised: self-review against readiness-report findings for Story 6.5, FR38, FR47, FR49, FR64, reduced-motion/accessibility-floor ownership, phone-overlay runtime ownership, and contextual-alert ownership.

Observed results: `git diff --check` returned no issues on the targeted files; the epic artifact now contains explicit canonical GDD traceability notes for the previously partial items; `docs/game/architecture.md` now names the owning game-layer runtime model for the UX behaviors called out as missing.

Artifact notes: task remains docs/planning-only; no gameplay code or engine files were changed; Gradle and preview verification were not required by repo rules for docs-only scope.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Closed the remaining implementation-readiness gaps for HSS-40 by refactoring Epic 6 away from a release-level Story 6.5, adding explicit canonical GDD traceability for FR38/FR47/FR49/the missing FR64 parts, assigning UX-runtime ownership in `docs/game/architecture.md`, and recording the exact source/report/verification context in the readiness handoff.
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
