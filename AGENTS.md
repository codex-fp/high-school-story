# Agent instructions

Read [the implementation guide](docs/implementation.md) before changing build, tool, test, or Godot-host behavior.
Read [the story development workflow](docs/development-workflow.md) before starting, committing, reviewing, or merging BMAD/GDS story work.

Run commands from the repository root. Preserve the clean C# boundaries: gameplay rules do not belong in Godot scene scripts, and CLI tools must not reference Godot.

## Verification

- Before editing, inspect `git status --short` and preserve unrelated user changes.
- After a change, run the narrowest relevant build or test first.
- Before handoff, run `dotnet test`; run `dotnet build "High School Story.sln"` when project/build configuration changed.
- Run `dotnet test tests/HighSchoolStory.GodotSmoke.Tests` and `godot --headless --path . --quit-after 1` only for Godot-host or engine-integration changes.
- For ContentValidator or ScenarioRunner changes, exercise `--help`, `--version`, and a missing-path failure as described in the implementation guide.
