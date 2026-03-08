# AGENTS.md

Guidance for agentic coding assistants working in this repository.

## Project Overview

High School Story is a social simulation game built on **KGE (Kotlin Game Engine 2D)**, a custom engine included as a Gradle composite build from `./engine`. The game targets JVM 17 via the LWJGL3 desktop backend.

## Build & Run Commands

All commands use the Gradle wrapper. On Windows use `gradlew.bat`; on Unix use `./gradlew`.

```bash
# Run the sandbox (development/iteration mode)
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher

# Run the full game
./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher

# Run ALL tests
./gradlew test

# Run a SINGLE test (fully-qualified class + method name)
./gradlew :lwjgl3:test --tests "pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview"

# Lint check
./gradlew ktlintCheck

# Lint auto-format (run before committing)
./gradlew ktlintFormat
```

> **Note:** Tests in `lwjgl3/src/test/` are "Preview tests" — they open a live LibGDX window for visual iteration, not headless unit tests. There are no traditional headless unit tests in the game layer at this time.

## Module Structure

```
high-school-story/
  core/       — game logic (platform-independent)
  lwjgl3/     — desktop launcher + Preview tests
  engine/     — git submodule, composite build (KGE)
    core/                — engine core (LibGDX, Fleks ECS, Koin, physics)
    gameplay/            — genre-specific modules (character, dialogue, story, time, …)
    annotation/          — @GameObject and other annotations
    annotation-processor/— KSP processor for @GameObject
```

The engine is a separate Gradle composite build (`includeBuild("./engine")`). Game code lives under `pro.piechowski.highschoolstory`; engine code lives under `pro.piechowski.kge`.

## Code Style

### Formatter & Linter

- **ktlint 1.8.0** is enforced on all subprojects via the `org.jlleitschuh.gradle.ktlint` plugin.
- Always run `./gradlew ktlintFormat` before submitting changes.
- The `.editorconfig` at the repo root is the authoritative style source.

### Indentation & Whitespace

- 4 spaces for Kotlin/Java; 2 spaces for `.gradle` files.
- LF line endings, UTF-8 encoding.
- Trim trailing whitespace; insert final newline.

### Imports

- **No wildcard/star imports.** The `ij_kotlin_name_count_to_use_star_import` threshold is set to `Int.MAX_VALUE` in `.editorconfig`, effectively banning them. Every import must be explicit.
- Keep imports alphabetically ordered (ktlint enforces this).

### Naming Conventions

| Element | Convention | Example |
|---|---|---|
| Packages | lowercase, dot-separated | `pro.piechowski.highschoolstory.character.player` |
| Classes / interfaces | PascalCase | `PlayerCharacter`, `RoadToLakeview` |
| GameObject interfaces | PascalCase + `@GameObject` | `@GameObject interface Bus : Visual, Spatial, Kinetic` |
| Koin modules | `val <Feature>Module` | `highSchoolStoryModule`, `CharacterModule` |
| Companion factories | `<Name>Companion` (KSP-generated, extend `EntityGameObjectCompanion<T>`) | `BusCompanion` |
| Properties / variables | camelCase | `playerCharacter`, `currentMap` |
| Constants | SCREAMING_SNAKE_CASE | `BusColor.YELLOW` |
| Suspend factory functions | `operator fun invoke(...)` on companion objects | `PlayerCharacter("First", "Last")` |

### Function Style

- Prefer **expression bodies** (`= expr`) for single-expression functions and properties.
- Use **trailing lambdas** outside parentheses.
- Use **named arguments** liberally when constructing complex objects.

```kotlin
// Preferred
fun prototype(firstName: String, lastName: String) = Prototype {
    it.from(PlayerCharacterBase.prototype(firstName, lastName, CharacterBody(), ...))
}
```

### Kotlin Features in Use

These experimental APIs are globally opted-in via `build.gradle.kts` and do **not** require per-file opt-in annotations:

| API | Usage |
|---|---|
| `kotlin.ExperimentalContextParameters` | `context(ecc: EntityCreateContext)` on functions/classes |
| `kotlinx.coroutines.ExperimentalCoroutinesApi` | coroutine internals |
| `kotlin.time.ExperimentalTime` | `Duration`, `.seconds`, `.s` extension values |
| `kotlin.ExperimentalUnsignedTypes` | unsigned integer types |
| `arrow.fx.coroutines.await.ExperimentalAwaitAllApi` | `awaitAll { async { … } }` for parallel loading |
| `org.koin.core.annotation.KoinInternalApi` | Koin DI internals |

If a file-level opt-in is still needed (e.g., for Arrow), use `@file:OptIn(ExperimentalAwaitAllApi::class)`.

## Architecture Patterns

### GameObject Pattern

Game objects are Kotlin interfaces annotated with `@GameObject`. The KSP processor generates a companion base class. The companion object holds a suspend factory (`invoke`) and a reusable `Prototype` builder.

```kotlin
@GameObject
interface PlayerCharacter : PlayerCharacterBase {
    companion object : PlayerCharacterCompanion() {
        suspend operator fun invoke(firstName: String, lastName: String): PlayerCharacter =
            invoke(world.entity { it.from(prototype(firstName, lastName)) })

        fun prototype(firstName: String, lastName: String) = Prototype {
            it.from(PlayerCharacterBase.prototype(...))
        }
    }
}
```

- `Prototype` is a `fun interface` holding a suspend entity-builder lambda.
- Prototypes compose via `Entity.from(prototype)`.
- Never put rendering or physics logic directly in the interface; delegate to components.

### Entity-Component-System (Fleks)

- **Components** are plain data classes added to a Fleks `Entity`.
- **Systems** extend `IntervalSystem` (or `MeasuredIntervalSystem`), ordered by the injected `SystemComposer`.
- The `systemComposer` is defined in `core/…/SystemComposer.kt` and injected into the engine — always register new systems there.

### Dependency Injection (Koin)

```kotlin
// Lazy delegate — preferred inside class bodies
private val dialogueManager by inject<DialogueManager>()

// Eager get — use in companion objects or top-level contexts
val spriteSheet = get<PlayerCharacterSpriteSheet>()
```

- DI modules live in `Module.kt` files: one per gameplay module (e.g., `CharacterModule`, `DialogueModule`) plus the root `highSchoolStoryModule` that includes them all.
- Use `single<Interface> { ConcreteImpl() }` for singletons; prefer interfaces as the binding key.

### Story / Beat System

Game scenes are `Story.Beat<GameState>` implementations. A beat declares `shouldBePlayed(state)` / `shouldBeSpawned(state)` and runs content in the suspending `play()` / `spawn()` coroutines.

```kotlin
class RoadToLakeview private constructor(val bus: Bus) : Story.Beat<GameState> {
    override fun shouldBePlayed(state: GameState): Boolean = true
    override suspend fun play() = with(world) { /* … */ }

    companion object : Story.Beat.Definition<GameState, RoadToLakeview> {
        context(ecc: EntityComponentContext)
        override suspend fun invoke(): RoadToLakeview { … }
        override fun shouldBeSpawned(state: GameState): Boolean = mapManager.currentMap is Road
    }
}
```

### Dialogue DSL

```kotlin
dialogueManager.startDialogue(
    dialogue {
        playerCharacter.says("Some line.")
        wait(2.seconds)
        npcCharacter.says("Another line.")
    }
).await()
```

### Async / Parallel Loading (Arrow)

Use `awaitAll { async { … } }` from Arrow for parallel asset loading:

```kotlin
suspend operator fun invoke() = awaitAll {
    val textures = async { Textures() }
    val maps = async { Maps() }
    Assets(textures.await(), maps.await())
}
```

## Error Handling

- Let exceptions propagate through coroutines; there is no explicit try/catch convention in the game layer.
- Use Arrow's structured `awaitAll` for parallel coroutines to get proper cancellation and error propagation.
- Use `TODO()` as a placeholder for unimplemented stubs during development — do not leave silent no-ops.

## Preview Tests

Preview tests in `lwjgl3/src/test/` open a live LibGDX window. They use JUnit 5 (`@Test`) but are purely visual — they do not assert anything.

```kotlin
class PlayerCharacterPreview {
    @Test
    fun preview() {
        preview(highSchoolStoryModule) {
            get<AssetsLoader<Assets>>().load()
            PlayerCharacter("Preview", "Character")
        }
    }
}
```

- Always pass the Koin DI module (`highSchoolStoryModule`) to `preview(...)`.
- Load assets before spawning game objects.
- Run a specific preview: `./gradlew :lwjgl3:test --tests "<FullyQualifiedClass>.<methodName>"`

## Key Technologies

| Library | Role |
|---|---|
| LibGDX 1.13.1 | Rendering backend |
| KTX 1.13.1-rc1 | Kotlin extensions for LibGDX |
| Fleks 2.11 | Entity-Component-System |
| Koin 4.0.3 | Dependency injection |
| Box2D (via LibGDX) | Physics |
| KtxAsync / Kotlin Coroutines 1.10.2 | Async game logic |
| Arrow 2.2.0 | `awaitAll` parallel coroutines |
| Hoplite 2.9.0 | YAML config (`core/src/main/resources/config.yml`) |
| KSP 2.2.20-2.0.4 | `@GameObject` annotation processing |
| JUnit 5.13.4 | Test runner (JUnit Platform) |
