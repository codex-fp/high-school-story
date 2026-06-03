# High School Story

High School Story is a Kotlin/JVM school-life social simulation game where the
player creates a high school student and guides them through routine, lessons,
relationships, activities, and exams.

The game is built on Kotlin Game Engine 2D through the `engine/` Gradle
composite build.

## What Is This?

High School Story is a cozy-leaning, lightly demanding social simulation game.
The intended player experience is a readable school routine where time is
limited, school attendance is central, and everyday choices shape a personal
semester story.

Current MVP direction:

- One playable semester.
- A `12`-week school rhythm.
- A daily loop of dormitory morning, weekday school block, afternoon free time,
  dormitory evening, and sleep.
- Systems for `15-minute` time, travel pressure, lessons, condition,
  relationships, grades, and a semester exam.
- MVP locations: `dormitory`, `school`, `district`, `shop`, and `park`.

## Repository Boundary

This repository owns the game layer:

- Game-specific logic, scenes, maps, dialogue, assets, and authored content.
- Product and gameplay design contracts for the High School Story MVP.
- Desktop launchers, sandbox iteration, and visual preview tests.

This repository does not own reusable Kotlin Game Engine behavior. Engine
architecture and reusable implementation rules belong in `engine/`.

## Quick Start

Use Java 17, install [`mani`](https://github.com/alajmo/mani), and sync the
managed `engine/` checkout before building.

If you previously initialized `engine/` as a submodule in an older clone,
remove the old submodule checkout metadata locally before the first `mani sync`.

```bash
mani sync
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
./gradlew test
./gradlew ktlintCheck
```

On Windows, use `gradlew.bat` with the same tasks.

## Current Status

- `SandboxLauncher` is the current development entrypoint for interactive
  iteration.
- `MainLauncher` exists, but `GameEntrypoint.run()` is still `TODO()`.
- Visual preview tests in `lwjgl3/src/test/` open a live LibGDX window and are
  not headless unit tests.
- Current implemented surface includes player-character spawning, player input
  ownership, character and bus game objects, town and road Tiled maps, dialogue
  UI wiring, and the `RoadToLakeview` intro beat preview.

## High-Level Architecture

- `core/` contains platform-independent game logic under
  `pro.piechowski.highschoolstory`.
- `lwjgl3/` contains desktop launchers and live preview tests.
- `assets/` contains runtime assets and is the desktop run working directory.
- `docs/narrative/` contains authored story content and should remain narrative
  focused.
- `engine/` is a mani-managed checkout and included Gradle build for Kotlin Game
  Engine 2D.

Read [ARCHITECTURE.md](ARCHITECTURE.md) for the game-layer architecture and
`engine/ARCHITECTURE.md` for reusable engine architecture.

## Documentation Map

- [AGENTS.md](AGENTS.md) - AI operational contract for this game repository.
- [ARCHITECTURE.md](ARCHITECTURE.md) - game-layer architecture and boundaries.
- [DESIGN.md](DESIGN.md) - product and gameplay design contract for the MVP.
- [STYLEGUIDE.md](STYLEGUIDE.md) - game-layer coding and documentation
  conventions.
- [docs/narrative/README.md](docs/narrative/README.md) - narrative content
  index.
- [engine/README.md](engine/README.md) - Kotlin Game Engine overview.
- [engine/ARCHITECTURE.md](engine/ARCHITECTURE.md) - reusable KGE architecture.
- [engine/STYLEGUIDE.md](engine/STYLEGUIDE.md) - reusable KGE implementation
  conventions.

## Documentation Rules

- Keep documentation in English.
- Keep product and gameplay design for the game in `DESIGN.md`.
- Keep game architecture in `ARCHITECTURE.md`.
- Keep reusable engine architecture in `engine/ARCHITECTURE.md`.
- Keep authored scenes and story text in `docs/narrative/`.
- Update the owning document instead of adding parallel notes.
