# Development Guide

## Prerequisites

- JDK 17 or newer. The build compiles project output with Java 17 toolchains.
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

## Common Commands

```bash
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher
./gradlew test
./gradlew :lwjgl3:preview
./gradlew ktlintCheck
./gradlew ktlintFormat
```

Use `SandboxLauncher` for normal development iteration. Treat `MainLauncher` as
incomplete until the full game flow is implemented.

## Local Codex Tooling

- `docs/codex-mem0-selfhosted.md` documents the local mem0 MCP setup for Codex
  memory.
- `docs/codex-gitnexus-selfhosted.md` documents the local GitNexus MCP setup for
  Codex code knowledge-graph indexing and the optional official Web UI bridge.
- `docs/codex-llamaindex-docs-rag.md` documents the local LlamaIndex plus
  dedicated Qdrant setup for Codex documentation retrieval over `docs/` and
  `_bmad-output/`.
- GitNexus repository indexing is local-only. Keep `/.gitnexus/` out of git and
  preserve the repository-owned `AGENTS.md` by using `gitnexus analyze
  --skip-agents-md --skip-skills` for this project.
- Use `gitnexus serve` when you want the official browser UI to inspect the
  existing local index. Stop the serve process before reindexing or depending
  on concurrent GitNexus CLI/MCP graph access.
- Keep the documentation RAG state local under `/.docs-rag/` and run it against
  a dedicated Qdrant instance on a different port than mem0. The repository
  project-scoped Codex config expects the docs RAG instance at
  `http://127.0.0.1:6334`.
- Use the three Codex context layers intentionally: `mem0` for memory,
  `gitnexus` for code structure and execution relationships, and
  `hss-docs-rag` for durable project documentation in `docs/` and
  `_bmad-output/`.

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
  launcher changes with `:lwjgl3:preview`.
- Documentation-only changes can be verified by reading the generated docs,
  checking links and paths, and recording evidence in the backlog task.

Preview examples:

```bash
./gradlew :lwjgl3:preview
./gradlew :lwjgl3:preview --tests "pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview"
```

Visual previews live in `lwjgl3/src/preview/kotlin/` so they do not run as part
of the default automated `test` or `check` lifecycle.

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
- When the user asks documentation questions or cross-document contract checks,
  prefer the documentation RAG layer before relying on memory or code search
  alone.
- Keep documentation and code-facing text in English.
- Record verification evidence in the active `HSS-<number>` task.

## Git Workflow Conventions

- Branch name format: `TASK-ID/short-description`.
- PR title format: `TASK-ID Short description`.
- Commit message format: Conventional Commits with the task ID at the start of the summary text, for example `type(scope): TASK-ID Short description`.
