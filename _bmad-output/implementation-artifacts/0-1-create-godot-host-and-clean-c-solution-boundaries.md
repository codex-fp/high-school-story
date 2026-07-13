---
baseline_commit: c369717
branch_name: story/0-1/create-godot-host-and-clean-c-solution-boundaries
---

# Story 0.1: Create Godot Host and Clean C# Solution Boundaries

Status: in-progress

## Story

As a developer,
I want the Godot host, C# solution layout, tooling entry points, and boundary tests created,
so that feature stories can consume validated content and Application commands without introducing Godot or raw-content dependencies into gameplay rules.

## Acceptance Criteria

1. Given the implementation workspace is initialized, when the solution is inspected, then Domain, Application, Ports, Content, Godot host, tools, and test projects exist with references matching the architecture document, and the Godot host compiles without pulling gameplay rules into scene scripts.
2. Given architecture boundaries are tested, when ArchitectureTests run, then Domain, Application, Content, and the Godot host enforce no forbidden Godot, R3, raw JSON, infrastructure, or presentation dependencies according to the architecture document, and violations fail with readable project/type/member diagnostics.
3. Given content tooling is invoked, when ContentValidator and ScenarioRunner entry points are built or executed with help/version commands, then each tool starts through a documented command-line path, and missing content fixtures return typed, readable errors instead of unhandled exceptions.
4. Given the first feature stories begin, when Story 1.1, Story 1.2, and later FVS stories need content catalogs, Application commands, ports, or tests, then they use this foundation rather than creating parallel project structure, ad hoc loaders, or Godot-only simulation paths.

## Tasks / Subtasks

- [ ] Establish solution and SDK baseline (AC: 1)
  - [x] Add `global.json` pinned to the local .NET 10 SDK feature band available in this workspace, or a compatible .NET 10 SDK if the implementation lead intentionally chooses another installed version.
  - [x] Add `Directory.Build.props` for shared C# settings that apply to clean projects and tests without breaking Godot's SDK project.
  - [x] Add `Directory.Packages.props` for central package versions, including R3 only where approved.
  - [x] Keep root `High School Story.csproj` on `Godot.NET.Sdk/4.7.0`, `net10.0`, and the existing Android `net9.0` fallback.
- [ ] Create clean source project boundaries (AC: 1, 4)
  - [x] Create `src/HighSchoolStory.Domain/HighSchoolStory.Domain.csproj` with no project references and no package references beyond the absolute runtime/BCL minimum.
  - [x] Create `src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj` referencing Domain only.
  - [x] Create `src/HighSchoolStory.Application/HighSchoolStory.Application.csproj` referencing Domain and Ports, with R3 available only at the Application boundary.
  - [ ] Create `src/HighSchoolStory.Content/HighSchoolStory.Content.csproj` referencing Domain and Ports only.
  - [ ] Create `src/HighSchoolStory.Godot/` as a source folder compiled by the root Godot host, not as a separate clean `.csproj`.
- [ ] Wire the Godot host as composition root (AC: 1, 4)
  - [ ] Add explicit `ProjectReference` entries from `High School Story.csproj` to Application, Ports, and Content.
  - [ ] Do not add a direct root host reference to Domain unless the implementation lead approves a concrete need.
  - [ ] Add explicit `Compile Remove` entries so the root Godot project does not directly compile `src/HighSchoolStory.Domain/**`, `src/HighSchoolStory.Application/**`, `src/HighSchoolStory.Ports/**`, `src/HighSchoolStory.Content/**`, `tools/**`, or `tests/**`.
  - [ ] Keep Godot host code under `src/HighSchoolStory.Godot/` and root Godot resources under Godot-friendly folders such as `scenes/` and `assets/`.
- [ ] Create tool entry points (AC: 3, 4)
  - [ ] Create `tools/HighSchoolStory.ContentValidator/HighSchoolStory.ContentValidator.csproj` referencing Content, Domain, and Ports.
  - [ ] Create `tools/HighSchoolStory.ScenarioRunner/HighSchoolStory.ScenarioRunner.csproj` referencing Application, Content, Domain, and Ports.
  - [ ] Implement minimal `--help` and `--version` behavior for both tools.
  - [ ] Make missing content/fixture paths return typed, readable failure output and non-zero exit codes; do not throw unhandled exceptions for expected missing inputs.
- [ ] Create test projects and first guardrail tests (AC: 2, 3)
  - [ ] Create test projects under `tests/`: Domain, Application, Content, SaveMigration, Scenario, Architecture, and GodotSmoke.
  - [ ] Keep default `dotnet test` fast and non-flaky; Godot smoke must be separable by project and must not require launching Godot in the default gate.
  - [ ] Add ArchitectureTests for forbidden references: Domain has no Godot/R3/Ports/JSON/logging; Application has no Godot; Content has no Application/Godot.
  - [ ] Add ArchitectureTests proving the root Godot host does not compile loose source files from clean library, tool, or test directories.
  - [ ] Add tool tests or process-level checks for `--help`, `--version`, and missing input behavior.
- [ ] Document command paths and verification (AC: 1, 2, 3)
  - [ ] Document the supported commands in a repo-local implementation note or README section without duplicating broad planning docs.
  - [ ] Verify `dotnet restore "High School Story.sln"`, `dotnet build "High School Story.sln"`, and `dotnet test`.
  - [ ] Verify `dotnet run --project tools/HighSchoolStory.ContentValidator -- --help` and `dotnet run --project tools/HighSchoolStory.ScenarioRunner -- --help`.

## Dev Notes

### Current Repository State

- The repo currently contains only the Godot-generated host project, solution, `project.godot`, an empty `src/` directory, and planning artifacts. This story is the first implementation scaffold.
- Current `High School Story.csproj` already uses `Godot.NET.Sdk/4.7.0`, `net10.0`, `EnableDynamicLoading`, `RootNamespace=HighSchoolStory`, and the conditional Android `net9.0` target. Preserve those choices unless a later architecture update explicitly changes them.
- Current `High School Story.sln` contains only the root Godot host. Add the new clean projects, tools, and test projects to this solution.
- Current `project.godot` has `config/features=PackedStringArray("4.7", "Mobile")`, `project/assembly_name="High School Story"`, and the existing display/rendering settings. Do not use this story to redesign Godot runtime settings unless required for build correctness.
- No previous story file exists. There are no prior implementation learnings to inherit.

### Required Architecture Shape

Use the architecture target exactly as the scaffold:

```text
High School Story.sln
global.json
Directory.Build.props
Directory.Packages.props
High School Story.csproj
project.godot

src/
  HighSchoolStory.Domain/
  HighSchoolStory.Ports/
  HighSchoolStory.Application/
  HighSchoolStory.Content/
  HighSchoolStory.Godot/

content/
  mvp/
  schemas/
  fixtures/vertical-slice/
  migrations/

tools/
  HighSchoolStory.ContentValidator/
  HighSchoolStory.ScenarioRunner/

tests/
  HighSchoolStory.Domain.Tests/
  HighSchoolStory.Application.Tests/
  HighSchoolStory.Content.Tests/
  HighSchoolStory.SaveMigration.Tests/
  HighSchoolStory.Scenario.Tests/
  HighSchoolStory.Architecture.Tests/
  HighSchoolStory.GodotSmoke.Tests/
```

Required references:

```text
HighSchoolStory.Domain
  -> no project references

HighSchoolStory.Ports
  -> HighSchoolStory.Domain

HighSchoolStory.Application
  -> HighSchoolStory.Domain
  -> HighSchoolStory.Ports
  -> R3

HighSchoolStory.Content
  -> HighSchoolStory.Domain
  -> HighSchoolStory.Ports

High School Story.csproj
  -> HighSchoolStory.Application
  -> HighSchoolStory.Ports
  -> HighSchoolStory.Content

HighSchoolStory.ContentValidator
  -> HighSchoolStory.Content
  -> HighSchoolStory.Domain
  -> HighSchoolStory.Ports

HighSchoolStory.ScenarioRunner
  -> HighSchoolStory.Application
  -> HighSchoolStory.Content
  -> HighSchoolStory.Domain
  -> HighSchoolStory.Ports
```

The root Godot project must include compile exclusions like:

```xml
<ItemGroup>
  <Compile Remove="src\HighSchoolStory.Domain\**\*.cs" />
  <Compile Remove="src\HighSchoolStory.Application\**\*.cs" />
  <Compile Remove="src\HighSchoolStory.Ports\**\*.cs" />
  <Compile Remove="src\HighSchoolStory.Content\**\*.cs" />
  <Compile Remove="tools\**\*.cs" />
  <Compile Remove="tests\**\*.cs" />
</ItemGroup>
```

### Boundary Rules That Must Be Enforced

- Domain owns canonical persisted gameplay state, rules, services, policies, value objects, and domain events. Domain must not reference Godot, R3, Ports, Application, Content, JSON, logging, adapters, or infrastructure.
- Ports defines stable adapter contracts and may reference Domain for IDs/value objects/result types. Ports must not expose mutable aggregates for adapter-side manipulation.
- Application owns command handlers, query services, runtime mode, save orchestration, R3 projections, read models, and side-effect orchestration through ports.
- Content owns JSON loading, schema validation, content validation, reports, migrations, and runtime `ContentCatalog` construction. Content must not reference Application or Godot.
- Godot is presentation/infrastructure host only. Godot scenes/nodes may present state, collect input, play audio/animation, and implement adapters. They must not own time, availability, relationships, lessons, wellbeing, save legality, content validation, or Memory Ledger rules.
- R3 is allowed at the Application/Godot boundary only. Do not introduce R3 into Domain.
- CLI tools must not depend on Godot. ScenarioRunner must exercise Application command handlers and must not become a parallel simulation engine.

### Tooling Requirements

- `ContentValidator` starts via:

```powershell
dotnet run --project tools/HighSchoolStory.ContentValidator -- content/mvp --profile vertical-slice
```

- `ScenarioRunner` starts via:

```powershell
dotnet run --project tools/HighSchoolStory.ScenarioRunner -- content/fixtures/vertical-slice/one-school-day.json
```

- For this story, minimal `--help`, `--version`, and missing-path behavior is enough. Do not implement full validation, scenario simulation, or content schema breadth here.
- Expected tool failures must use typed/readable result handling and deterministic exit codes. Unhandled exceptions are reserved for programmer bugs or broken invariants.

### Testing Requirements

- Default confidence gate:

```powershell
dotnet build "High School Story.sln"
dotnet test
```

- Godot smoke is separate and slower:

```powershell
dotnet test tests/HighSchoolStory.GodotSmoke.Tests
godot --headless --path . --quit-after 1
```

- Architecture tests should be implementation-friendly. They may use reflection/MSBuild project inspection/custom checks, or a vetted dependency-test library if it does not weaken the build. The first version must at least catch forbidden project/package references and root host compile inclusion of clean source folders.
- Do not count a Godot scene compile or manual editor run as proof of gameplay architecture. No gameplay rule is considered tested only because it worked in a scene.

### Latest Technical Information

- Godot's official Windows download page lists Godot Engine 4.7 and Godot Engine .NET 4.7 as the stable Windows downloads dated 18 June 2026. Keep the architecture baseline on Godot 4.7 .NET unless a deliberate upgrade story is created.
- Godot's stable C# documentation requires a 64-bit .NET SDK and notes current Godot C# requirements are .NET 8 or later, with Android requiring .NET 9 or later. This project deliberately targets `net10.0` for the main project and keeps the generated Android `net9.0` fallback even though Android is not MVP scope.
- Local workspace verification on 2026-07-09 found .NET SDK `10.0.301` installed and no `global.json`. Pinning through `global.json` is part of this story to avoid accidental SDK drift.
- R3 latest release found during story creation is `v1.3.1` from Cysharp. Use central package management and keep R3 out of Domain.

### Scope Boundaries

- This story creates the scaffold and guardrails. It does not implement the first school-day fixture, real content validation rules, scenario execution semantics, time/commitment policy, activity occasions, lessons, dialogue effects, save/load rebuild, or production Godot UI.
- Do not adopt a full third-party Godot starter template. Chickensoft `GodotGame` may be used only as reference material for setup, tests, coverage, `global.json`, or CI ideas.
- Do not create abstract base classes such as `InboundAdapter` or `OutboundAdapter` just because architecture diagrams use those labels. Add shared base types only when real shared behavior appears.
- Do not add Steam services, cloud saves, broad editor tooling, content DSLs, or presentation polish in this story.

### Project Context Rules

- Gameplay rules must live outside Godot-specific code.
- Input flow is `Godot InputMap -> GodotInputAdapter -> Application commands/intents`.
- Runtime mode is Application-owned, not derived from Godot node visibility or scene-local booleans.
- Godot views subscribe to Application-owned read models/projections and dispose subscriptions with the node/view lifecycle.
- Runtime command handlers must not parse raw JSON or scan content files on demand. Validated content is loaded into a runtime `ContentCatalog`.
- Expected gameplay/application rejections are typed Result errors, not exceptions.
- JSON content IDs and files use lower-kebab-case; Godot scenes use PascalCase; pixel/audio assets use lower_snake_case; C# namespaces match project and boundary names.
- Primary platform is PC/Steam. Steam Deck is a readability/controller constraint where low-cost. Web, console, and mobile are out of first release scope.

### References

- [Source: _bmad-output/planning-artifacts/epics.md#Story-0.1-Create-Godot-Host-and-Clean-C-Solution-Boundaries]
- [Source: _bmad-output/planning-artifacts/architectures/architecture-High School Story-2026-07-05/architecture.md#Development-Environment]
- [Source: _bmad-output/planning-artifacts/architectures/architecture-High School Story-2026-07-05/architecture.md#Directory-Structure]
- [Source: _bmad-output/planning-artifacts/architectures/architecture-High School Story-2026-07-05/architecture.md#Project-References]
- [Source: _bmad-output/planning-artifacts/architectures/architecture-High School Story-2026-07-05/architecture.md#Architecture-Test-Checklist]
- [Source: _bmad-output/project-context.md#Critical-Implementation-Rules]
- [Source: _bmad-output/planning-artifacts/implementation-readiness-report-2026-07-09.md#Recommended-Next-Steps]
- [External: Godot Engine Windows download - https://godotengine.org/download/windows/]
- [External: Godot C# basics documentation - https://docs.godotengine.org/en/stable/tutorials/scripting/c_sharp/c_sharp_basics.html]
- [External: Microsoft .NET 10 download - https://dotnet.microsoft.com/en-us/download/dotnet/10.0]
- [External: Cysharp R3 releases - https://github.com/Cysharp/R3/releases]

## Dev Agent Record

### Agent Model Used

GPT-5 Codex (coached development workflow)

### Debug Log References

### Approved Implementation Plan

#### T1.S4 - Keep root `High School Story.csproj` on `Godot.NET.Sdk/4.7.0`, `net10.0`, and the existing Android `net9.0` fallback (v1)

- **Status:** Approved
- **Approach:** Preserve `Godot.NET.Sdk/4.7.0`, the main `net10.0` target, and the conditional Android `net9.0` fallback without changing Godot runtime settings or gameplay code.
- **Scope:** Root host project only, with formatting normalization only if required.
- **Files / components:** `High School Story.csproj`
- **Validation:** `dotnet build "High School Story.csproj"`.

#### T2.S1 - Create `src/HighSchoolStory.Domain/HighSchoolStory.Domain.csproj` with no project references and no package references beyond the absolute runtime/BCL minimum (v1)

- **Status:** Approved
- **Approach:** Add a minimal `Microsoft.NET.Sdk` project targeting `net10.0`, with no project or package references and no example source types.
- **Scope:** Domain project file only.
- **Files / components:** `src/HighSchoolStory.Domain/HighSchoolStory.Domain.csproj`
- **Validation:** `dotnet build src/HighSchoolStory.Domain/HighSchoolStory.Domain.csproj` and XML inspection confirming no reference items.

#### T2.S2 - Create `src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj` referencing Domain only (v1)

- **Status:** Approved
- **Approach:** Add a minimal `Microsoft.NET.Sdk` project targeting `net10.0`, with one `ProjectReference` to `HighSchoolStory.Domain` and no package references or example port contracts.
- **Scope:** Ports project file only; do not yet add it to the solution or create application-facing abstractions.
- **Files / components:** `src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj`
- **Validation:** `dotnet build src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj` and `dotnet list src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj reference`.

#### T2.S3 - Create `src/HighSchoolStory.Application/HighSchoolStory.Application.csproj` referencing Domain and Ports, with R3 available only at the Application boundary (v1)

- **Status:** Approved
- **Approach:** Add a minimal `Microsoft.NET.Sdk` project targeting `net10.0`, with `ProjectReference` entries to Domain and Ports and a versionless `PackageReference` to R3, whose version is centrally pinned at `1.3.1`.
- **Scope:** Application project file only; do not yet add it to the solution or create commands, projections, adapters, or example source types.
- **Files / components:** `src/HighSchoolStory.Application/HighSchoolStory.Application.csproj`, `Directory.Packages.props` (consumed only; no change expected)
- **Validation:** `dotnet build src/HighSchoolStory.Application/HighSchoolStory.Application.csproj`, `dotnet list src/HighSchoolStory.Application/HighSchoolStory.Application.csproj reference`, and `dotnet list src/HighSchoolStory.Application/HighSchoolStory.Application.csproj package`.

### Completion Notes List

- Added `global.json` pinned to .NET SDK 10.0.301 with `latestPatch` roll-forward. Verified active SDK selection, valid JSON, UTF-8 without BOM, and a final CRLF.
- Added shared nullable, implicit-usings, and language-version settings for clean projects and tests while excluding the Godot host. Verified `dotnet build "High School Story.csproj"` with zero warnings and errors.
- Added central package management with R3 pinned at 1.3.1. Verified XML configuration, `dotnet restore "High School Story.sln"`, and `dotnet build "High School Story.sln" --no-restore` with zero warnings and errors.
- Verified the existing Godot host retains `Godot.NET.Sdk/4.7.0`, main `net10.0`, and conditional Android `net9.0` fallback. `dotnet build "High School Story.csproj"` completed with zero warnings and errors; no host-project change was required.
- Added the minimal `HighSchoolStory.Domain` `net10.0` project without project or package references. `dotnet build src/HighSchoolStory.Domain/HighSchoolStory.Domain.csproj` completed with zero warnings and errors.
- Added repository-wide `.NET` build-output ignores for `**/bin/` and `**/obj/`, keeping generated project artifacts out of source control.
- Completed `T2.S2` (v1): added the minimal `HighSchoolStory.Ports` `net10.0` project with its only project reference to Domain. `dotnet build src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj` completed with zero warnings and errors, and `dotnet list src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj reference` confirmed the single Domain reference.
- Completed `T2.S3` (v1): added the minimal `HighSchoolStory.Application` `net10.0` project with its only project references to Domain and Ports and its versionless R3 package reference. Build completed with zero warnings and errors; project inspection confirmed the two references and R3 `1.3.1` resolved from central package management.

### File List

- global.json
- Directory.Build.props
- Directory.Packages.props
- src/HighSchoolStory.Domain/HighSchoolStory.Domain.csproj
- src/HighSchoolStory.Ports/HighSchoolStory.Ports.csproj
- src/HighSchoolStory.Application/HighSchoolStory.Application.csproj
- .gitignore

### Change Log

- 2026-07-10: Completed the SDK baseline pinning subtask.
- 2026-07-10: Completed the shared C# build settings subtask.
- 2026-07-10: Completed the central package version management subtask.
- 2026-07-11: Verified the root Godot host SDK and target-framework baseline subtask.
- 2026-07-11: Created and verified the clean Domain project boundary subtask.
- 2026-07-11: Ignored generated .NET build outputs.
- 2026-07-11: Created and verified the clean Ports project boundary subtask (`T2.S2`, v1).
- 2026-07-11: Created and verified the clean Application project boundary subtask (`T2.S3`, v1).
