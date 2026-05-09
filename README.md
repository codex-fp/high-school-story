# High School Story

High School Story is a Kotlin/JVM social simulation game where the player creates a high school student and guides them through school years, relationships, lessons, activities, and exams.

The game is built on Kotlin Game Engine 2D through the `engine/` Gradle composite build.

## Repository Boundary

- `core/` owns platform-independent game logic.
- `lwjgl3/` owns the desktop launcher and visual preview tests.
- `engine/` is the included Kotlin Game Engine build used by the game.
- `docs/` is the design and product documentation vault.

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

## Documentation Rules

- Keep documentation in English.
- Keep product intent in `docs/product`, gameplay systems in `docs/design`, and authored scenes in `docs/narrative`.
- Update the existing source of truth when a decision changes instead of adding parallel notes.
