# AGENTS.md

Guidance for agents working in `high-school-story`, a Kotlin/JVM social
simulation game built on Kotlin Game Engine 2D through the `engine/` Gradle
composite build. This file inherits organization defaults from parent
AGENTS.md files and defines only project-local guidance.

## Scope

This repository owns the High School Story game implementation, authored game
content, and project documentation.

- Applies to `high-school-story/`.
- Inherits broader codex-fp guidance when opened inside the organization
  workspace.
- More specific nested AGENTS.md files may override this file for their
  subtree and should follow this repository's nested guidance template when
  one exists.
- Treat `engine/` as a Git submodule and separate Gradle build included through
  `includeBuild("./engine")`.

## Purpose

High School Story is a Kotlin/JVM school-life social simulation game where the
player creates a high school student and guides them through school years,
relationships, lessons, activities, and exams.

This repository owns:

- Game-specific logic, scenes, maps, dialogue, assets, and gameplay content.
- Product, design, and narrative documentation for the MVP.
- Desktop launch, sandbox iteration, and visual preview workflows.

This repository does not own:

- Reusable Kotlin Game Engine behavior except through the `engine/` submodule.
- Engine-wide architecture decisions that belong in the KGE repository.
- Headless correctness tests for visual preview scenarios.

## Layout

- `core/` - platform-independent game logic under
  `pro.piechowski.highschoolstory`.
- `lwjgl3/` - desktop launcher and live LibGDX visual preview tests.
- `engine/` - Git submodule and composite build for Kotlin Game Engine 2D.
- `assets/` - runtime assets used as the desktop run working directory.
- `docs/product/` - product intent, MVP scope, and product decisions.
- `docs/development/` - project-specific implementation guidance for agents.
- `docs/design/` - gameplay systems, mechanics, pacing, and design rules.
- `docs/narrative/` - authored scenes and implementation-ready story content.

## Architecture

- The game targets JVM 17 through the LWJGL3 desktop backend.
- Game code lives under `pro.piechowski.highschoolstory`; engine code lives
  under `pro.piechowski.kge`.
- Runtime composition uses Koin; gameplay objects use KGE, Fleks ECS,
  `@GameObject` generation, story beats, and the dialogue DSL as described in
  `docs/development/agent-guidance.md`.
- Treat `SandboxLauncher` as the main development entrypoint while
  `GameEntrypoint.run()` remains `TODO()`.
- Treat `MainLauncher` as incomplete until the full game flow is implemented.
- Treat preview tests as visual tooling that opens a live LibGDX window, not as
  headless unit tests.
- Match existing naming, package, module, and file patterns before adding new
  abstractions.
- Keep durable architecture details in referenced documentation instead of
  adding repository-specific AGENTS.md sections.

## Build, Run, And Validation

Run commands from `high-school-story/` unless a deeper AGENTS.md states
otherwise. On Windows use `gradlew.bat`; on Unix use `./gradlew`. Use Java 17
and ensure the `engine/` Git submodule is available before building.

```bash
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher
./gradlew test
./gradlew :lwjgl3:test --tests "pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview"
./gradlew ktlintCheck
./gradlew ktlintFormat
```

Validation expectations:

- After formatting-sensitive Kotlin or Gradle changes, run
  `./gradlew ktlintFormat`.
- After implementation changes, run `./gradlew ktlintCheck` and
  `./gradlew test` when practical.
- After visual game-object, map, dialogue, or scene changes, run the relevant
  preview test or sandbox launcher.
- If no executable check applies, state that clearly in the handoff.

## Conventions

- Keep documentation, code-facing text, comments, commit messages, and
  configuration in English.
- Treat `.editorconfig` at the repository root as the authoritative style
  source.
- Use 4 spaces for Kotlin, Java, and Gradle Kotlin DSL files; use 2 spaces for
  `.gradle` files.
- Use LF line endings, UTF-8 encoding, final newlines, and trimmed trailing
  whitespace outside Markdown files.
- Do not use wildcard imports; keep imports alphabetically ordered.
- Prefer expression bodies for single-expression Kotlin functions and
  properties.
- Use trailing lambdas outside parentheses and named arguments for complex
  construction.
- Use globally opted-in experimental Kotlin APIs and Arrow coroutine helpers
  only where they match existing patterns documented in
  `docs/development/agent-guidance.md`.
- Let exceptions propagate through coroutines unless local code has a clearer
  error contract.
- Use `TODO()` for visible unimplemented stubs; do not replace missing behavior
  with silent no-ops.
- Follow the naming conventions in `docs/development/agent-guidance.md`.
- Preserve existing style and avoid unrelated refactors.
- Keep generated output, runtime state, secrets, credentials, and local machine
  data out of normal source edits unless the local contract explicitly says
  otherwise.

## Quality Gates

- Confirm changed files match this repository's scope.
- Confirm project documentation and implementation agree.
- Confirm local links and file references remain correct.
- Confirm the `engine/` submodule is available before build verification.
- Run `./gradlew ktlintCheck` and `./gradlew test` when this repository's
  contract requires implementation verification.
- Review the diff for accidental generated output, hidden artifacts, local
  state, secrets, and scope creep.

## References

Read these before changing this repository:

1. `README.md` - project overview, purpose, current implementation baseline,
   and repository boundaries.
2. `AGENTS.md` - this project-local guidance.
3. `docs/product/README.md` - product intent, MVP scope, and product decisions.
4. `docs/development/agent-guidance.md` - project-specific implementation,
   preview, naming, experimental API, and technology guidance.
5. `docs/design/README.md` - gameplay system design, mechanics, and design
   reading order.
6. `docs/narrative/README.md` - authored story content and narrative index.
7. `engine/` - Kotlin Game Engine composite build used by this game.

Keep repository-specific deep guidance in referenced docs/ files, not as extra
AGENTS.md sections.
