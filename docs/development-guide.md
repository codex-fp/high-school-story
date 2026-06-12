# Development Guide

## Prerequisites

- Java 17 toolchain for compiled output.
- Gradle runtime JDK 17 through 25.
- Gradle wrapper from this repository.
- `mani` installed to synchronize the managed `engine/` checkout.
- Local desktop environment capable of opening LibGDX LWJGL3 windows for preview
  tests and sandbox runs.

## Setup

```bash
mani sync
./gradlew test
```

If an older clone has `engine/` initialized as a git submodule, remove stale
submodule metadata locally before the first `mani sync`.

## IntelliJ Sync

- Set `Settings > Build, Execution, Deployment > Build Tools > Gradle > Gradle JVM`
  to any supported runtime JDK, including JDK 21, 24, or 25.
- Keep Java 17 as the compilation toolchain target used by the build.
- The root project wrapper uses Gradle 9.3.0, which supports running Gradle on
  Java 25 while preserving Java 17 compilation toolchains.

## Common Commands

```bash
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher
./gradlew test
./gradlew ktlintCheck
./gradlew ktlintFormat
```

Use `SandboxLauncher` for normal development iteration. Treat `MainLauncher` as
incomplete until the full game flow is implemented.

## Packaging

Local packaging tasks:

```bash
./gradlew :lwjgl3:jar
./gradlew :lwjgl3:jarWin
./gradlew :lwjgl3:jarLinux
./gradlew :lwjgl3:jarMac
./gradlew :lwjgl3:dist
```

Artifacts are local build outputs under `lwjgl3/build/libs/` and
`lwjgl3/build/distributions/`. Do not treat them as published releases unless the
user explicitly asks.

## Verification Policy

- Run `./gradlew test` after non-visual game logic changes when practical.
- Run `./gradlew ktlintCheck` after Kotlin or Gradle edits.
- Run `./gradlew ktlintFormat` after formatting-sensitive Kotlin or Gradle
  edits.
- Run the relevant live preview after visual object, map, dialogue, scene, or
  launcher changes.
- Documentation-only changes can be verified by reading the generated docs,
  checking links and paths, and recording evidence in the backlog task.

Preview example:

```bash
./gradlew :lwjgl3:test --tests "pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview"
```

## Coding Conventions

| Element | Convention | Example |
|---|---|---|
| Packages | lowercase dot-separated | `pro.piechowski.highschoolstory.character.player` |
| Classes and interfaces | PascalCase | `PlayerCharacter` |
| Game-object interfaces | PascalCase plus `@GameObject` | `@GameObject interface Bus` |
| Koin modules | `val <feature>Module` | `val characterModule` |
| Root Koin module | `highSchoolStoryModule` | `highSchoolStoryModule` |
| Properties and variables | camelCase | `playerCharacter` |
| Constants and enum entries | SCREAMING_SNAKE_CASE | `BusColor.YELLOW` |
| Suspend factories | `operator fun invoke(...)` | `PlayerCharacter("First", "Last")` |

Formatting rules:

- `.editorconfig` is authoritative.
- Use 4 spaces for Kotlin, Java, and Gradle Kotlin DSL files.
- Use LF line endings, UTF-8 encoding, final newlines, and trimmed trailing
  whitespace outside Markdown files.
- Do not use wildcard imports.
- Keep imports alphabetically ordered.

## Kotlin And Game-Layer Idioms

- Prefer expression bodies for single-expression Kotlin functions and properties.
- Use trailing lambdas outside parentheses.
- Use named arguments for complex construction.
- Use globally opted-in experimental APIs without per-file opt-ins unless the
  compiler requires a local opt-in.
- Keep game-specific behavior in game packages and consume reusable KGE patterns
  from `engine/_bmad-output/project-context.md`.
- Do not document or change reusable KGE generated-code contracts from the game
  layer.
- Use `TODO()` for visible unimplemented stubs.
- Let coroutine exceptions propagate unless a local API defines a clearer error
  contract.

Globally opted-in APIs include `kotlin.ExperimentalContextParameters`,
`kotlinx.coroutines.ExperimentalCoroutinesApi`, `kotlin.time.ExperimentalTime`,
`kotlin.ExperimentalUnsignedTypes`,
`arrow.fx.coroutines.await.ExperimentalAwaitAllApi`, and
`org.koin.core.annotation.KoinInternalApi`.

## Documentation Workflow

- Use `docs/` as the durable BMAD-native documentation source.
- Use `_bmad-output/project-context.md` as the compact agent context.
- Update documentation before or with behavior, architecture, workflow, command,
  path, packaging, or narrative changes.
- Keep documentation and code-facing text in English.
- Record verification evidence in the active `HSS-<number>` task.

## Git Workflow Conventions

- Branch name format: `TASK-ID/short-description`.
- PR title format: `TASK-ID Short description`.
- Commit message format: Conventional Commits with the task ID at the start of the summary text, for example `type(scope): TASK-ID Short description`.
