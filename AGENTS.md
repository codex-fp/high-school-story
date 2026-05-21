# AGENTS.md

Treat this file as the operational contract for AI agents working in
`high-school-story`.

This repository inherits organization-level guidance from parent `AGENTS.md`
files and adds only game-local rules.

## Scope

This guidance applies to `high-school-story/`.

The repository owns:

- High School Story game logic, content, maps, dialogue, assets, and
  documentation.
- Desktop launch, sandbox iteration, and visual preview workflows.
- Game-layer product, design, architecture, and style contracts.

The repository does not own reusable Kotlin Game Engine behavior. Keep reusable
engine architecture and conventions in `engine/`.

## Operating Principles

- Work specification-first. Update the owning documentation contract before or
  alongside behavior changes.
- Keep changes small, explicit, and reviewable.
- Preserve the boundary between game-layer decisions and engine decisions.
- Match existing package, module, naming, and file patterns before adding new
  abstractions.
- Preserve user changes unless explicitly asked to revert them.

## Project Rules

- Treat `engine/` as a Git submodule and separate Gradle build included through
  `includeBuild("./engine")`.
- Treat `SandboxLauncher` as the main development entrypoint while
  `GameEntrypoint.run()` remains `TODO()`.
- Treat `MainLauncher` as incomplete until the full game flow is implemented.
- Treat preview tests as visual tooling that opens a live LibGDX window, not as
  headless unit tests.
- Keep game-specific guidance in root conventional documentation files.
- Keep narrative content in `docs/narrative/`.
- Do not recreate `docs/product/`, `docs/design/`, or `docs/development/` unless
  a future documentation contract explicitly reintroduces them.

## Canonical Commands

Run commands from the repository root. On Windows use `gradlew.bat`; on Unix use
`./gradlew`.

```bash
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher
./gradlew test
./gradlew :lwjgl3:test --tests "pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview"
./gradlew ktlintCheck
./gradlew ktlintFormat
```

## Workflow

1. Confirm the intended contract or behavior.
2. Synchronize remotes with `git fetch origin`.
3. Inspect the relevant source, documentation, and `engine/` boundary.
4. Update the owning documentation contract when behavior, workflow, or
   architecture changes.
5. Implement the smallest coherent change.
6. Run the relevant verification.
7. Summarize changed files, checks, and residual risk.

## Conventions

- Keep documentation, code-facing text, comments, commit messages, and
  configuration in English.
- Follow [STYLEGUIDE.md](STYLEGUIDE.md) for game-layer conventions.
- Follow [engine/STYLEGUIDE.md](engine/STYLEGUIDE.md) when changing reusable
  engine code.
- Use `TODO()` for visible unimplemented stubs; do not replace missing behavior
  with silent no-ops.
- Let exceptions propagate through coroutines unless local code has a clearer
  error contract.
- Preserve generated output, runtime state, secrets, credentials, and local
  machine data outside normal source edits.

## Disallowed

- Undocumented contract changes.
- Silent drift between documentation and implementation.
- Moving reusable engine rules into game documentation.
- Moving game-specific product, MVP, or narrative decisions into engine
  documentation.
- Treating live visual preview tests as headless correctness tests.
- Unrelated refactors or generated output churn.

## Verification

- After formatting-sensitive Kotlin or Gradle changes, run
  `./gradlew ktlintFormat`.
- After implementation changes, run `./gradlew ktlintCheck` and
  `./gradlew test` when practical.
- After visual game-object, map, dialogue, or scene changes, run the relevant
  preview test or sandbox launcher.
- Confirm the `engine/` submodule is available before build verification.
- If no executable check applies, state that clearly in the handoff.

## Conditional References

- Read [README.md](README.md) for human onboarding and project status.
- Read [ARCHITECTURE.md](ARCHITECTURE.md) before changing game-layer boundaries,
  modules, runtime composition, launchers, or dependency rules.
- Read [DESIGN.md](DESIGN.md) before changing product scope, gameplay systems,
  MVP behavior, pacing, or authored-system assumptions.
- Read [STYLEGUIDE.md](STYLEGUIDE.md) before changing naming, formatting,
  package structure, Kotlin idioms, preview tests, or local conventions.
- Read [docs/narrative/README.md](docs/narrative/README.md) before changing
  authored narrative content.
- Read [engine/ARCHITECTURE.md](engine/ARCHITECTURE.md) and
  [engine/STYLEGUIDE.md](engine/STYLEGUIDE.md) before changing reusable engine
  behavior.
