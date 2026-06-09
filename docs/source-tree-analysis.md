# Source Tree Analysis

## Top-Level Tree

```text
.
├── README.md
├── AGENTS.md
├── ARCHITECTURE.md
├── DESIGN.md
├── STYLEGUIDE.md
├── _bmad/
├── _bmad-output/
├── .backlog/
├── assets/
├── core/
├── docs/
├── engine/
├── gradle/
├── lwjgl3/
├── build.gradle.kts
├── gradle.properties
├── mani.yaml
└── settings.gradle.kts
```

## Critical Directories

| Path | Role |
|---|---|
| `core/src/main/kotlin/pro/piechowski/highschoolstory/` | Platform-independent game implementation. |
| `core/src/main/resources/config.yml` | Runtime configuration loaded through Hoplite. |
| `lwjgl3/src/main/kotlin/` | Desktop launchers. |
| `lwjgl3/src/test/kotlin/` | Live visual preview tests. |
| `assets/maps/` | Tiled map files and map tooling output. |
| `assets/textures/` | Runtime textures and sprite sheets. |
| `assets/ui/` | UI skin, atlas, fonts, and UI graphics. |
| `engine/` | Managed reusable Kotlin Game Engine checkout. |
| `docs/` | BMAD-native project documentation. |

## Game Package Layout

| Package | Current Responsibility |
|---|---|
| `animation.character` | Character animation sets and animation IDs. |
| `asset` | Game asset aggregate and loading paths. |
| `character` | Character game-object interfaces. |
| `character.player` | Player character game-object factory and ownership. |
| `exterior` | Exterior texture support. |
| `map` | Game map adapters for town and road maps. |
| `physics.body.character` | Character physics body setup. |
| `sprite.character` | Character sprite and sprite sheet support. |
| `state` | `GameState` placeholder/root state model. |
| `story.intro` | Intro beat implementation. |
| `ui` | Game UI composition. |
| `vehicle.bus` | Bus game-object, visuals, physics, color, and lights. |

## Entry Points

- `core/src/main/kotlin/pro/piechowski/highschoolstory/Entrypoint.kt` defines
  `GameEntrypoint` and currently keeps `run()` as `TODO()`.
- `lwjgl3/src/main/kotlin/pro/piechowski/highschoolstory/game/lwjgl3/SandboxLauncher.kt`
  starts the current development sandbox.
- `lwjgl3/src/main/kotlin/pro/piechowski/highschoolstory/game/lwjgl3/MainLauncher.kt`
  is reserved for the eventual full game path.

## Build Structure

- `settings.gradle.kts` includes `:core`, `:lwjgl3`, and `includeBuild("./engine")`.
- Root `build.gradle.kts` applies shared Kotlin, Java, ktlint, KSP, repositories,
  toolchain, and asset-list generation settings.
- `core/build.gradle.kts` depends on KGE modules and game runtime libraries.
- `lwjgl3/build.gradle.kts` configures desktop backend, run working directory,
  packaging, and platform-specific jar tasks.

## Asset Organization

- `assets/maps/` contains `town.tmx`, `road.tmx`, map rules, and Tiled session
  files.
- `assets/tilesets/` contains tileset definitions.
- `assets/textures/character/` contains character sheets.
- `assets/textures/phone/` contains phone UI textures and atlas data.
- `assets/ui/skin/` contains the LibGDX skin JSON, atlas, and fonts used by
  `UserInterface` and Koin `Skin` binding.
