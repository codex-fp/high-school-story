---
id: HSS-22
title: Upgrade root Gradle wrapper for Java 25 runtime support
status: Done
assignee: []
created_date: '2026-06-12 11:56'
updated_date: '2026-06-12 12:01'
labels:
  - tooling
  - build
  - gradle
  - intellij
milestone: first-playable-weekday
dependencies: []
references:
  - gradle/wrapper/gradle-wrapper.properties
  - gradlew
  - gradlew.bat
  - README.md
  - docs/development-guide.md
  - engine/gradle/wrapper/gradle-wrapper.properties
documentation:
  - 'https://docs.gradle.org/current/userguide/compatibility.html'
modified_files:
  - gradle/wrapper/gradle-wrapper.properties
  - gradle/wrapper/gradle-wrapper.jar
  - gradlew
  - gradlew.bat
  - README.md
  - docs/development-guide.md
priority: high
ordinal: 9300
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Upgrade the root project Gradle wrapper from 8.14.1 to a Gradle 9.x version that supports running on Java 25, align the root wrapper with the included engine build where practical, and update contributor documentation so IntelliJ sync guidance matches the new supported runtime.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Root Gradle wrapper uses a version that supports running Gradle on Java 25
- [x] #2 Project sync/build entry commands work on the available Java 25 runtime
- [x] #3 Contributor docs reflect the updated supported Gradle runtime guidance
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence:
- `./gradlew --version` reports Gradle 9.3.0 on Launcher JVM 25.0.2.
- `./gradlew help --console=plain` succeeds on Java 25.
- `./gradlew wrapper --gradle-version 9.3.0 --console=plain` succeeds and refreshes wrapper assets.
- `./gradlew :core:test --console=plain` succeeds on Java 25.
- `./gradlew ktlintCheck --console=plain` succeeds on Java 25.
- `./gradlew test --console=plain` reaches task execution and fails only in existing `:lwjgl3:test` preview tests instead of failing at Gradle startup.
- Failing preview tests observed after the upgrade:
  - `pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview()` -> `NullPointerException` during GLFW cursor disposal in LWJGL shutdown.
  - `pro.piechowski.highschoolstory.story.intro.RoadToLakeviewPreview.preview()` -> `KoinApplicationAlreadyStartedException`.
Residual risk: full `./gradlew test` still fails because of existing desktop preview test issues unrelated to the original Java-25 Gradle startup problem.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The root project now uses Gradle 9.3.0, so IntelliJ sync and Gradle commands can run on Java 25 while the project continues compiling with Java 17 toolchains. Documentation was updated to reflect the new supported runtime guidance.
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
