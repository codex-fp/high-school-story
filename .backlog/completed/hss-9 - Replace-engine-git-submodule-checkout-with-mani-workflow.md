---
id: HSS-9
title: Replace engine git submodule checkout with mani workflow
status: Done
assignee: []
created_date: '2026-06-03 11:23'
updated_date: '2026-06-12 12:29'
labels:
  - tooling
  - docs
milestone: first-playable-weekday
dependencies: []
references:
  - .gitmodules
  - settings.gradle.kts
  - README.md
  - ARCHITECTURE.md
  - AGENTS.md
  - mani.yaml
  - .gitignore
documentation:
  - 'https://github.com/alajmo/mani'
modified_files:
  - mani.yaml
  - .gitignore
  - .gitmodules
  - README.md
  - ARCHITECTURE.md
  - AGENTS.md
priority: medium
ordinal: 9000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Switch the repository from managing engine/ as a git submodule to managing the engine checkout through mani. Update owning documentation and repository metadata so local setup and architecture guidance reflect the new workflow.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Repository no longer tracks engine/ via .gitmodules
- [x] #2 Repository includes mani configuration for fetching engine into engine/
- [x] #3 Owning documentation describes the mani-based setup and no longer instructs git submodule initialization
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Confirm the repository no longer uses `.gitmodules` and instead defines the engine checkout through `mani.yaml`.
2. Verify the owning setup and architecture documentation points to `mani sync` rather than git submodule initialization.
3. Re-run the required Gradle verification commands and close the task if the previous environment-only blocker is resolved.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
2026-06-12: Re-verified the task after the repository's Gradle runtime compatibility work. `./gradlew test` exited 0 and `./gradlew ktlintCheck` exited 0.

This task changes tooling and documentation only. Visual preview or launcher verification was not applicable.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
HSS-9 replaced the `engine/` git submodule workflow with a mani-managed checkout. The repository now relies on `mani.yaml` to fetch the engine into `engine/`, `settings.gradle.kts` includes that checkout as a composite build, and the setup documentation points contributors to `mani sync` instead of git submodule initialization.

Verification was re-run after the Gradle runtime compatibility fix landed elsewhere in the repo. `./gradlew test` and `./gradlew ktlintCheck` both completed successfully on 2026-06-12, clearing the only remaining blocker that had kept this task open.

Residual risk is low and limited to contributor environment setup: developers with older local clones may still need to remove stale submodule metadata before their first `mani sync`, which is already documented in `docs/development-guide.md`.
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
