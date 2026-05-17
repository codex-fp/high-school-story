# Development Agent Guidance

This document contains High School Story implementation guidance that is too
project-specific for the root `AGENTS.md` structure.

## GameObject Pattern

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

## Entity Component System

- Components are plain data classes added to a Fleks `Entity`.
- Systems extend `IntervalSystem` or `MeasuredIntervalSystem`.
- Register new systems through the injected `SystemComposer`.

## Dependency Injection

- DI modules live in `Module.kt` files: one per gameplay module plus the root
  `highSchoolStoryModule` that includes them all.
- Use `single<Interface> { ConcreteImpl() }` for singletons when an interface
  is the useful binding key.
- Prefer lazy `inject<T>()` inside class bodies.
- Use eager `get<T>()` in companion objects or top-level contexts only when the
  current pattern requires it.

## Story And Dialogue

- Game scenes are `Story.Beat<GameState>` implementations.
- Beats declare `shouldBePlayed(state)` or `shouldBeSpawned(state)` and run
  content through suspending `play()` or `spawn()` coroutines.
- Dialogue uses the dialogue DSL through `dialogueManager.startDialogue(...)`.
- Use Arrow `awaitAll { async { ... } }` for parallel asset loading.

## Runtime And Preview Notes

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

## Experimental APIs

Experimental APIs are globally opted in through `build.gradle.kts` and do not
require per-file opt-in annotations unless the local compiler still requires
one.

| API | Usage |
|---|---|
| `kotlin.ExperimentalContextParameters` | `context(ecc: EntityCreateContext)` on functions and classes |
| `kotlinx.coroutines.ExperimentalCoroutinesApi` | coroutine internals |
| `kotlin.time.ExperimentalTime` | `Duration`, `.seconds`, `.s` extension values |
| `kotlin.ExperimentalUnsignedTypes` | unsigned integer types |
| `arrow.fx.coroutines.await.ExperimentalAwaitAllApi` | `awaitAll { async { ... } }` for parallel loading |
| `org.koin.core.annotation.KoinInternalApi` | Koin DI internals |

## Naming Conventions

| Element | Convention | Example |
|---|---|---|
| Packages | lowercase, dot-separated | `pro.piechowski.highschoolstory.character.player` |
| Classes and interfaces | PascalCase | `PlayerCharacter` |
| GameObject interfaces | PascalCase plus `@GameObject` | `@GameObject interface Bus : Visual, Spatial, Kinetic` |
| Koin modules | `val <Feature>Module` | `CharacterModule` |
| Properties and variables | camelCase | `playerCharacter` |
| Constants | SCREAMING_SNAKE_CASE | `BusColor.YELLOW` |
| Suspend factory functions | `operator fun invoke(...)` | `PlayerCharacter("First", "Last")` |

## Technology Baseline

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
