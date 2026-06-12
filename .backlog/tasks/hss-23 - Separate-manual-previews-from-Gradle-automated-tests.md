---
id: HSS-23
title: Separate manual previews from Gradle automated tests
status: Done
assignee: []
created_date: '2026-06-12 12:20'
updated_date: '2026-06-12 12:24'
labels:
  - gradle
  - testing
  - preview
milestone: Build Workflow
dependencies: []
references:
  - docs/development-guide.md
  - docs/source-tree-analysis.md
  - lwjgl3/build.gradle.kts
  - docs/index.md
  - docs/architecture.md
  - docs/component-inventory.md
  - docs/project-overview.md
  - docs/ai-agent-guide.md
  - _bmad-output/project-context.md
modified_files:
  - lwjgl3/build.gradle.kts
  - >-
    lwjgl3/src/preview/kotlin/pro/piechowski/highschoolstory/character/player/PlayerCharacterPreview.kt
  - >-
    lwjgl3/src/preview/kotlin/pro/piechowski/highschoolstory/story/intro/RoadToLakeviewPreview.kt
  - docs/index.md
  - docs/development-guide.md
  - docs/source-tree-analysis.md
  - docs/project-overview.md
  - docs/architecture.md
  - docs/component-inventory.md
  - docs/ai-agent-guide.md
  - _bmad-output/project-context.md
priority: high
ordinal: 23000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Move `lwjgl3` visual previews out of the `test` source set so `./gradlew test` and `./gradlew check` run only automated unit/integration verification. Add explicit preview execution tasks and update workflow documentation to match.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `lwjgl3` visual previews no longer compile or run as part of the default Gradle `test` task
- [x] #2 A dedicated non-test source set or equivalent manual preview execution path exists for current preview classes
- [x] #3 Project documentation distinguishes automated tests from manual previews and shows the new preview command
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Commands run: `git fetch origin`, `./gradlew test :lwjgl3:previewClasses ktlintCheck`, `./gradlew :lwjgl3:tasks --all`.

Scenario steps: confirmed preview classes were only present under `lwjgl3/src/test/kotlin`, moved them into a dedicated preview source set, and verified the dedicated preview task exists while automated checks still pass.

Observed results: Gradle exposed `preview`, `previewClasses`, and `compilePreviewKotlin`; `test`/`ktlintCheck` completed without requiring the manual previews to run.

Relevant logs/artifacts: `:lwjgl3:tasks --all` lists `preview - Runs manual LibGDX previews.` under Verification tasks.

Checks not run: no live preview window was manually exercised in-session because this task changed Gradle wiring and source-set placement rather than preview behavior, and LibGDX previews are interactive local tooling.

Residual risk: if future preview-only dependencies diverge from test dependencies, the `preview` source set configuration may need its own explicit dependency declarations instead of inheriting from test/runtime scopes.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Separated `lwjgl3` visual previews from automated tests by moving preview classes into `lwjgl3/src/preview/kotlin` and registering a manual `:lwjgl3:preview` task.

Updated project docs and lean agent context so the source tree and verification workflow now distinguish automated `test` runs from manual preview execution.

Verified `./gradlew test :lwjgl3:previewClasses ktlintCheck` and confirmed `:lwjgl3:preview` is exposed as a dedicated Gradle task.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [x] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
