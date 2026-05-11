# High School Story

High School Story is a Kotlin/JVM social simulation game where the player creates a high school student and guides them through school years, relationships, lessons, activities, and exams.

The game is built on Kotlin Game Engine 2D through the `engine/` Gradle composite build.

## Product Shape

- Cozy-leaning, lightly demanding school-life sim built around limited time and school routine.
- MVP direction is one playable semester with a 12-week rhythm.
- Core loop: dormitory morning, weekday school block, afternoon free time, dormitory evening, and sleep.
- Intended systems include 15-minute time, lessons, travel pressure, relationships, condition management, grades, and a semester exam.
- MVP locations are documented as dormitory, school, district, shop, and park.

## Current Implementation Baseline

- `SandboxLauncher` is the current development entrypoint for interactive iteration.
- `MainLauncher` exists, but the game entrypoint in `core` is still a `TODO()`, so the full game flow is not implemented yet.
- `lwjgl3/src/test/` contains visual preview tests that open a live LibGDX window instead of running as headless assertions.
- Current implemented surface includes player-character spawning, player ownership for input, character and bus game objects, town and road Tiled maps, dialogue UI wiring, and the `RoadToLakeview` intro beat preview.

## Repository Boundary

- `core/` owns platform-independent game logic.
- `lwjgl3/` owns the desktop launcher and visual preview tests.
- `engine/` is the included Kotlin Game Engine build used by the game.
- `docs/` is the design and product documentation vault.

## Architecture Snapshot

- The game layer is Kotlin-first and runs on JVM 17.
- Runtime composition uses Koin dependency injection through `highSchoolStoryModule`.
- World state and gameplay objects are built on the KGE + Fleks ECS stack.
- Story scenes are implemented as `Story.Beat<GameState>` coroutines.
- Assets and configuration are loaded from the repository, with runtime configuration in `core/src/main/resources/config.yml`.

## Start Here

1. Read [AGENTS.md](AGENTS.md) for coding-agent guidance, architecture rules, and validation commands.
2. Read [docs/product/README.md](docs/product/README.md) for product-facing intent and MVP scope.
3. Read [docs/design/README.md](docs/design/README.md) for system-level game design.
4. Read [docs/narrative/README.md](docs/narrative/README.md) for implementation-ready story content.

## Common Commands

Use the Gradle wrapper from the repository root.

```bash
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher
./gradlew test
./gradlew ktlintCheck
./gradlew ktlintFormat
```

On Windows, use `gradlew.bat` with the same tasks.

## Setup Notes

- Initialize the `engine/` Git submodule before building if it is not present locally.
- Use Java 17. Gradle toolchains are configured in the build.
- Assets are loaded from the repository `assets/` directory; the desktop run task uses that directory as its working directory.

## Documentation Rules

- Keep documentation in English.
- Keep product intent in `docs/product`, gameplay systems in `docs/design`, and authored scenes in `docs/narrative`.
- Update the existing source of truth when a decision changes instead of adding parallel notes.
