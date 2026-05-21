# ARCHITECTURE.md

## System Overview

High School Story is a Kotlin/JVM game layer built on Kotlin Game Engine 2D
through the `engine/` Gradle composite build. The game layer defines content and
composition for a school-life social simulation. The engine layer defines the
reusable architecture for game objects, ECS, rendering, input, physics, maps,
story, dialogue, preview, and runtime launch.

## Context And Boundaries

The game layer owns:

- Game-specific Kotlin code under `pro.piechowski.highschoolstory`.
- Game-specific Koin modules, assets, maps, sprites, scenes, dialogue, and story
  beats.
- Desktop launcher wiring and High School Story visual preview tests.
- Product and gameplay design contracts in `DESIGN.md`.
- Authored story content in `docs/narrative/`.

The engine layer owns:

- Reusable KGE architecture under `pro.piechowski.kge`.
- `@GameObject` generation, `Prototype`, Fleks ECS integration, Koin runtime
  support, preview runtime, story, dialogue, map, animation, physics, rendering,
  and input modules.
- Engine-wide conventions documented in `engine/ARCHITECTURE.md` and
  `engine/STYLEGUIDE.md`.

Game code may depend on engine code. Engine code must not depend on this game.

## Components

- `core/` - platform-independent High School Story game logic.
- `lwjgl3/` - desktop launchers, distribution packaging, and live visual
  preview tests.
- `assets/` - runtime assets used as the desktop run working directory.
- `docs/narrative/` - authored story content and narrative index.
- `engine/` - Git submodule and included Gradle build for Kotlin Game Engine 2D.

## Runtime Composition

Runtime composition uses Koin. Game-specific modules live in `Module.kt` files
and are included by `highSchoolStoryModule`.

`SandboxLauncher` starts the current development sandbox with
`highSchoolStoryModule`. `MainLauncher` is wired for the full game path, but the
core `GameEntrypoint.run()` remains an explicit `TODO()` until the full game
flow exists.

## Game Objects And ECS

High School Story game objects follow the KGE game-object contract documented in
`engine/ARCHITECTURE.md`.

Game-layer responsibilities:

- Define game-specific `@GameObject` interfaces such as characters and vehicles.
- Keep rendering, physics, input, and animation behavior in components and
  systems instead of placing it directly in game-object interfaces.
- Compose entities through KGE `Prototype` builders and `Entity.from(...)`.
- Register new game systems through the injected `SystemComposer`.

## Story And Dialogue

Game scenes are implemented as `Story.Beat<GameState>` instances. Beats declare
whether they should be played or spawned and run content through suspending
coroutines.

Dialogue uses the engine dialogue module through `DialogueManager`. High School
Story owns the authored dialogue, beat sequencing, game-state checks, and
narrative files under `docs/narrative/`.

## Assets And Maps

The desktop run task uses `assets/` as its working directory. Game code loads
assets before spawning preview objects or scene content. Runtime configuration is
loaded from `core/src/main/resources/config.yml`.

The current implemented map surface includes town and road Tiled maps.

## Visual Preview

Preview tests in `lwjgl3/src/test/` open a live LibGDX window. They are
development tools for visual inspection, not headless correctness tests.

Preview code must pass the game Koin module, usually `highSchoolStoryModule`, to
the engine `preview(...)` helper and load required assets before spawning game
objects.

## Dependency Rules

- Game packages live under `pro.piechowski.highschoolstory`.
- Engine packages live under `pro.piechowski.kge`.
- Game code depends on engine modules through Gradle and the included build.
- Engine code must remain reusable and must not reference High School Story
  packages, assets, story, or product decisions.
- Put reusable architecture changes in `engine/`; keep game-specific rules in
  this repository root.

## Decision Summary

- The game follows engine architecture instead of redefining it locally, because
  KGE owns reusable runtime, ECS, and game-object patterns.
- Product and gameplay design live in `DESIGN.md`, because they are game
  contracts rather than engine architecture.
- Narrative content remains in `docs/narrative/`, because authored story files
  benefit from a dedicated content index.
- `docs/product/`, `docs/design/`, and `docs/development/` are retired in favor
  of conventional root documentation.

## References

- [README.md](README.md)
- [DESIGN.md](DESIGN.md)
- [STYLEGUIDE.md](STYLEGUIDE.md)
- [docs/narrative/README.md](docs/narrative/README.md)
- [engine/ARCHITECTURE.md](engine/ARCHITECTURE.md)
- [engine/STYLEGUIDE.md](engine/STYLEGUIDE.md)
