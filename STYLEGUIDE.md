# STYLEGUIDE.md

## Naming

| Element | Convention | Example |
|---|---|---|
| Packages | lowercase, dot-separated | `pro.piechowski.highschoolstory.character.player` |
| Classes and interfaces | PascalCase | `PlayerCharacter` |
| Game-object interfaces | PascalCase plus `@GameObject` | `@GameObject interface Bus` |
| Koin modules | `val <feature>Module` | `val characterModule` |
| Root Koin module | `highSchoolStoryModule` | `highSchoolStoryModule` |
| Properties and variables | camelCase | `playerCharacter` |
| Constants and enum entries | SCREAMING_SNAKE_CASE | `BusColor.YELLOW` |
| Suspend factories | `operator fun invoke(...)` | `PlayerCharacter("First", "Last")` |

## Formatting

- Treat `.editorconfig` at the repository root as the authoritative style
  source.
- Use 4 spaces for Kotlin, Java, and Gradle Kotlin DSL files.
- Use 2 spaces for `.gradle` files.
- Use LF line endings, UTF-8 encoding, final newlines, and trimmed trailing
  whitespace outside Markdown files.
- Do not use wildcard imports.
- Keep imports alphabetically ordered.
- Run `./gradlew ktlintFormat` after formatting-sensitive Kotlin or Gradle
  edits.

## Package Or Module Structure

- Put game code under `pro.piechowski.highschoolstory`.
- Keep platform-independent game logic in `core/`.
- Keep desktop-specific launch and preview logic in `lwjgl3/`.
- Keep reusable engine code under `engine/` and follow `engine/STYLEGUIDE.md`.
- Keep authored story content in `docs/narrative/`.

## Dependency Injection

- DI modules live in `Module.kt` files.
- Use one module per gameplay area plus the root `highSchoolStoryModule`.
- Use `single<Interface> { ConcreteImpl() }` when an interface is the useful
  binding key.
- Prefer lazy `inject<T>()` inside class bodies.
- Use eager `get<T>()` in companion objects or top-level contexts only when the
  existing pattern requires it.

## Game Object Usage

- Follow the reusable KGE game-object contract in `engine/ARCHITECTURE.md`.
- Keep rendering and physics logic out of `@GameObject` interfaces.
- Use companion factories named after generated companion classes when extending
  KGE generated bases.
- Compose reusable entity setup with `Prototype` builders.

## Story And Dialogue

- Implement game scenes as `Story.Beat<GameState>`.
- Put beat-specific state checks in `shouldBePlayed(...)` or
  `shouldBeSpawned(...)`.
- Run story and dialogue content through suspending `play()` or `spawn()`
  coroutines.
- Use `dialogueManager.startDialogue(...)` for dialogue flow.
- Use Arrow `awaitAll { async { ... } }` for parallel asset loading when that
  matches existing asset-loading patterns.

## Error Handling

- Let exceptions propagate through coroutines unless local code has a clearer
  error contract.
- Use `TODO()` for visible unimplemented stubs.
- Do not replace missing behavior with silent no-ops.

## Testing Style

- Treat `lwjgl3/src/test/` preview tests as live visual tooling.
- Do not describe preview tests as headless unit tests.
- Always pass the game Koin module, usually `highSchoolStoryModule`, to
  `preview(...)`.
- Load required assets before spawning game objects in preview tests.
- Run `./gradlew test` for normal test verification when practical.

## Language Idioms

- Prefer expression bodies for single-expression Kotlin functions and
  properties.
- Use trailing lambdas outside parentheses.
- Use named arguments for complex construction.
- Use globally opted-in experimental Kotlin APIs without per-file opt-in
  annotations unless the compiler still requires a local opt-in.

Globally opted-in APIs:

| API | Usage |
|---|---|
| `kotlin.ExperimentalContextParameters` | `context(ecc: EntityCreateContext)` |
| `kotlinx.coroutines.ExperimentalCoroutinesApi` | coroutine internals |
| `kotlin.time.ExperimentalTime` | `Duration`, `.seconds`, `.s` values |
| `kotlin.ExperimentalUnsignedTypes` | unsigned integer types |
| `arrow.fx.coroutines.await.ExperimentalAwaitAllApi` | `awaitAll { async { ... } }` |
| `org.koin.core.annotation.KoinInternalApi` | Koin DI internals |

## Technology Baseline

| Library | Role |
|---|---|
| LibGDX | Rendering backend |
| KTX | Kotlin extensions for LibGDX |
| Fleks | Entity Component System |
| Koin | Dependency injection |
| Box2D through LibGDX | Physics |
| KtxAsync and Kotlin Coroutines | Async game logic |
| Arrow | `awaitAll` parallel coroutines |
| Hoplite | YAML config in `core/src/main/resources/config.yml` |
| KSP | `@GameObject` annotation processing |
| JUnit 5 | Preview test runner |
