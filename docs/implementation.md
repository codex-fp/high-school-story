# Implementation guide

Run all commands from the repository root. The repository pins the intended .NET SDK in `global.json`.

## Standard confidence gate

```powershell
dotnet restore "High School Story.sln"
dotnet build "High School Story.sln"
dotnet test
```

`dotnet test` is the fast default gate and does not launch Godot.

## CLI tools

```powershell
dotnet run --project tools/HighSchoolStory.ContentValidator -- content/mvp --profile vertical-slice
dotnet run --project tools/HighSchoolStory.ScenarioRunner -- content/fixtures/vertical-slice/one-school-day.json
```

Both tools expose basic discovery commands:

```powershell
dotnet run --project tools/HighSchoolStory.ContentValidator -- --help
dotnet run --project tools/HighSchoolStory.ContentValidator -- --version
dotnet run --project tools/HighSchoolStory.ScenarioRunner -- --help
dotnet run --project tools/HighSchoolStory.ScenarioRunner -- --version
```

At this scaffold stage, a missing content directory or scenario fixture returns a readable error on standard error and exit code `2`; it does not throw an unhandled exception.

## Godot smoke gate

Keep Godot smoke separate from the default test gate:

```powershell
dotnet test tests/HighSchoolStory.GodotSmoke.Tests
godot --headless --path . --quit-after 1
```

The local Godot executable name or path may differ by machine.
