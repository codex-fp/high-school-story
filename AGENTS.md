# AGENTS.md

Guidance for coding agents working in `high-school-story`.
This file inherits organization defaults from parent `AGENTS.md` files and
defines only local guidance.

## Scope

This repository is a social simulation game built on KGE, the Kotlin Game
Engine 2D, through a Gradle composite build from `./engine`.

- Applies to `high-school-story/`.
- Inherits broader `codex-fp` guidance when opened inside the organization
  workspace.
- The `engine/` directory is a Git submodule and separate Gradle build.

## Purpose

This area owns the High School Story game implementation and authored game
content.

This area owns:

- Game logic, scenes, maps, dialogue, and project-specific gameplay.
- Product, design, and narrative documentation for the MVP.
- Desktop launch and visual preview workflows.

This area does not own:

- Reusable KGE engine behavior except through the `engine/` submodule.
- Headless correctness tests for visual preview scenarios.
- Engine-wide architecture decisions that belong in the KGE repository.

## Read Order

Before changing this area, read:

1. `README.md` for the repository overview.
2. This file and any deeper `AGENTS.md` for the touched path.
3. `docs/product/`, `docs/design/`, or `docs/narrative/` for the behavior
   being changed.
4. The relevant KGE guidance under `engine/` when touching engine APIs.

## Documentation Contract

- Keep product intent in `docs/product/`.
- Keep gameplay systems in `docs/design/`.
- Keep authored scenes in `docs/narrative/`.
- Treat the docs as the intended MVP contract, not as proof that every
  described system is already implemented.
- Update documentation before or with behavior, workflow, or boundary changes.

## Layout

- `core/` - platform-independent game logic.
- `lwjgl3/` - desktop launcher and visual preview tests.
- `engine/` - Git submodule and composite build for KGE.
- `assets/` - runtime assets used as the desktop run working directory.
- `docs/` - English Obsidian vault for product, design, and narrative docs.

## Architecture And Boundaries

- The game targets JVM 17 through the LWJGL3 desktop backend.
- Game code lives under `pro.piechowski.highschoolstory`.
- Engine code lives under `pro.piechowski.kge`.
- The engine is a separate Gradle composite build through
  `includeBuild("./engine")`.

### GameObject Pattern

- Game objects are Kotlin interfaces annotated with `@GameObject`.
- The KSP processor generates a companion base class.
- Companion objects hold suspend factories and reusable `Prototype` builders.
- `Prototype` is a `fun interface` holding a suspend entity-builder lambda.
- Prototypes compose through `Entity.from(prototype)`.
- Keep rendering and physics logic out of `@GameObject` interfaces; delegate to
  components.
- Use companion factories named `<Name>Companion` when extending generated
  `EntityGameObjectCompanion<T>` classes.

```kotlin
@GameObject
interface PlayerCharacter : PlayerCharacterBase {
    companion object : PlayerCharacterCompanion() {
        suspend operator fun invoke(firstName: String, lastName: String): PlayerCharacter =
            invoke(world.entity { it.from(prototype(firstName, lastName)) })
    }
}
```

### Entity Component System

- Components are plain data classes added to a Fleks `Entity`.
- Systems extend `IntervalSystem` or `MeasuredIntervalSystem`.
- Register new systems through the injected `SystemComposer`.

### Dependency Injection

- DI modules live in `Module.kt` files: one per gameplay module plus the root
  `highSchoolStoryModule` that includes them all.
- Use `single<Interface> { ConcreteImpl() }` for singletons when an interface
  is the useful binding key.
- Prefer lazy `inject<T>()` inside class bodies.
- Use eager `get<T>()` in companion objects or top-level contexts only when the
  current pattern requires it.

### Story And Dialogue

- Game scenes are `Story.Beat<GameState>` implementations.
- Beats declare `shouldBePlayed(state)` or `shouldBeSpawned(state)` and run
  content through suspending `play()` or `spawn()` coroutines.
- Dialogue uses the dialogue DSL through `dialogueManager.startDialogue(...)`.
- Use Arrow `awaitAll { async { ... } }` for parallel asset loading.

## Workflow Overrides

- Treat `SandboxLauncher` as the main development entrypoint for live
  iteration.
- Treat `MainLauncher` as incomplete while `GameEntrypoint.run()` remains
  `TODO()`.
- Treat preview tests as visual tooling, not headless unit tests.
- Use `TODO()` for visible unimplemented stubs; do not replace missing behavior
  with silent no-ops.

## Build, Run, And Validation

Run commands from `high-school-story/`.
On Windows use `gradlew.bat`; on Unix use `./gradlew`.
Use Java 17. The repository configures Gradle JVM toolchains accordingly.
Ensure the `engine/` Git submodule is available before building.

```bash
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher
./gradlew test
./gradlew :lwjgl3:test --tests "pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview"
./gradlew ktlintCheck
./gradlew ktlintFormat
```

Validation expectations:

- Run `./gradlew ktlintFormat` before submitting formatting-sensitive changes.
- Run `./gradlew ktlintCheck` and `./gradlew test` when practical before
  publishing.
- Run a specific preview test for visual game-object or scene work.
- If no executable check applies, state that clearly in the handoff.

## Conventions

- Use 4 spaces for Kotlin and Java; use 2 spaces for Gradle files.
- Use LF line endings, UTF-8 encoding, final newlines, and trimmed trailing
  whitespace.
- Do not use wildcard imports.
- Keep imports alphabetically ordered.
- Treat `.editorconfig` at the repository root as the authoritative style
  source.
- Prefer expression bodies for single-expression Kotlin functions and
  properties.
- Use trailing lambdas outside parentheses and named arguments for complex
  construction.
- Use `context(...)` and the globally opted-in experimental Kotlin APIs where
  they match existing patterns.
- Let exceptions propagate through coroutines unless the local code has a
  clearer error contract.

Experimental APIs are globally opted in through `build.gradle.kts` and do not
require per-file opt-in annotations unless the local compiler still requires
one:

| API | Usage |
|---|---|
| `kotlin.ExperimentalContextParameters` | `context(ecc: EntityCreateContext)` on functions and classes |
| `kotlinx.coroutines.ExperimentalCoroutinesApi` | coroutine internals |
| `kotlin.time.ExperimentalTime` | `Duration`, `.seconds`, `.s` extension values |
| `kotlin.ExperimentalUnsignedTypes` | unsigned integer types |
| `arrow.fx.coroutines.await.ExperimentalAwaitAllApi` | `awaitAll { async { ... } }` for parallel loading |
| `org.koin.core.annotation.KoinInternalApi` | Koin DI internals |

Naming conventions:

| Element | Convention | Example |
|---|---|---|
| Packages | lowercase, dot-separated | `pro.piechowski.highschoolstory.character.player` |
| Classes and interfaces | PascalCase | `PlayerCharacter` |
| GameObject interfaces | PascalCase plus `@GameObject` | `@GameObject interface Bus : Visual, Spatial, Kinetic` |
| Koin modules | `val <Feature>Module` | `CharacterModule` |
| Properties and variables | camelCase | `playerCharacter` |
| Constants | SCREAMING_SNAKE_CASE | `BusColor.YELLOW` |
| Suspend factory functions | `operator fun invoke(...)` | `PlayerCharacter("First", "Last")` |

## Runtime Or Deployment Notes

- The desktop run task uses `assets/` as its working directory.
- Preview tests in `lwjgl3/src/test/` open a live LibGDX window and do not
  assert headless correctness.
- There are no traditional headless unit tests in the game layer at this time.
- Always pass the Koin DI module, such as `highSchoolStoryModule`, to
  `preview(...)`.
- Load assets before spawning game objects in preview tests.
- Current implemented gameplay includes player-character spawning, controllable
  sandbox ownership, character and bus game objects, town and road Tiled maps,
  dialogue UI wiring, and the `RoadToLakeview` intro beat preview.

Technology baseline:

| Library | Role |
|---|---|
| LibGDX 1.13.1 | Rendering backend |
| KTX 1.13.1-rc1 | Kotlin extensions for LibGDX |
| Fleks 2.11 | Entity Component System |
| Koin 4.0.3 | Dependency injection |
| Box2D through LibGDX | Physics |
| KtxAsync and Kotlin Coroutines 1.10.2 | Async game logic |
| Arrow 2.2.0 | `awaitAll` parallel coroutines |
| Hoplite 2.9.0 | YAML config in `core/src/main/resources/config.yml` |
| KSP 2.2.20-2.0.4 | `@GameObject` annotation processing |
| JUnit 5.13.4 | Preview test runner |

## Quality Gates

- Confirm changed files match this repository's scope.
- Confirm documentation and implementation agree.
- Confirm internal links and file references remain correct.
- Confirm the `engine/` submodule is available before build verification.
- Review the diff for accidental generated output, hidden artifacts, local
  state, and scope creep.

## References

- `README.md` - repository overview.
- `docs/product/` - product intent.
- `docs/design/` - gameplay system design.
- `docs/narrative/` - authored scenes.
- `engine/` - KGE composite build.
