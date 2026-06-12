# High School Story

High School Story is a Kotlin/JVM desktop school-life social simulation game. The
player creates a high school student and guides them through school routine,
lessons, relationships, condition management, travel, and semester outcomes.

This repository is BMAD/GDS-native. Durable project knowledge lives in `docs/`,
AI execution context lives in `_bmad-output/project-context.md`, and work is
tracked with `backlog.md` tasks using `HSS-<number>` IDs.

## Current State

- Active traceability task for this documentation migration: `HSS-13`.
- Current development entrypoint: `SandboxLauncher`.
- Full-game entrypoint: `MainLauncher`, currently incomplete because
  `GameEntrypoint.run()` is intentionally `TODO()`.
- Implemented surface: player-character spawning, player input ownership,
  character and bus game objects, town and road Tiled maps, dialogue UI wiring,
  and the `RoadToLakeview` intro preview.
- Visual preview tests in `lwjgl3/src/test/` open a live LibGDX window and are
  development tools, not headless unit tests.

## Quick Start

Prerequisites:

- JDK 17 or newer.
- Gradle wrapper from this repository.
- `mani` installed for the managed `engine/` checkout.

Setup and run:

```bash
mani sync
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
```

Verification commands:

```bash
./gradlew test
./gradlew ktlintCheck
```

On Windows, use `gradlew.bat` with the same tasks.

## Repository Map

| Path | Purpose |
|---|---|
| `core/` | Platform-independent High School Story game logic. |
| `lwjgl3/` | Desktop launchers, packaging tasks, and live visual previews. |
| `assets/` | Runtime assets; desktop run tasks use this as the working directory. |
| `engine/` | Mani-managed Kotlin Game Engine 2D checkout included through Gradle composite build. |
| `docs/` | BMAD-native project documentation and source of truth for humans and agents. |
| `_bmad/` | Installed BMAD/GDS configuration and workflow support. |
| `_bmad-output/project-context.md` | Lean AI-agent execution context generated from the project docs. |
| `.backlog/` | `backlog.md` task tracking files. |

## Documentation Entry Points

- [docs/index.md](docs/index.md) - master BMAD-native documentation index.
- [docs/project-overview.md](docs/project-overview.md) - product, scope, and
  current status.
- [docs/architecture.md](docs/architecture.md) - game-layer architecture and
  boundaries.
- [docs/game-design.md](docs/game-design.md) - full-game-first GDD and gameplay
  rules.
- [docs/development-guide.md](docs/development-guide.md) - setup, build,
  testing, packaging, and workflow.
- [docs/source-tree-analysis.md](docs/source-tree-analysis.md) - repository and
  source layout.
- [docs/component-inventory.md](docs/component-inventory.md) - current game
  components, scenes, assets, and previews.
- [docs/narrative-content.md](docs/narrative-content.md) - narrative content
  source for the implemented intro arc.
- [docs/ai-agent-guide.md](docs/ai-agent-guide.md) - operational rules for AI
  coding agents.

Compatibility files `AGENTS.md`, `ARCHITECTURE.md`, `DESIGN.md`, and
`STYLEGUIDE.md` remain at the repository root as thin BMAD-native entrypoints for
tools that expect those filenames. The canonical documentation is the linked
`docs/` set above.

## Project Boundaries

This repository owns game-specific implementation and content for High School
Story. It does not own reusable Kotlin Game Engine behavior. Reusable engine
changes belong under `engine/` and must follow `engine/README.md` and
`engine/AGENTS.md`.

External mutation is not part of normal development. Do not push to remote git,
change GitHub state, edit secrets, or mutate anything outside the workspace
without explicit approval.
