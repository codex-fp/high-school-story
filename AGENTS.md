# AGENTS.md

Treat this file as the operational contract for AI agents working in
`C:\Users\fpiec\IdeaProjects\codex-fp\high-school-story`.

This repository inherits organization-level guidance from parent `AGENTS.md`
files and adds only game-local rules.

## 1) Project contract and source-of-truth map

- Repository/workspace root:
  `C:\Users\fpiec\IdeaProjects\codex-fp\high-school-story`
- Primary specification source(s): `DESIGN.md`, `ARCHITECTURE.md`,
  `docs/narrative/`
- Primary implementation source(s): `core/`, `lwjgl3/`, `assets/`
- Primary verification target(s): local Gradle test tasks, local desktop run via
  `SandboxLauncher`, local live preview tests in `lwjgl3/src/test/`
- Primary documentation target(s): `README.md`, `AGENTS.md`,
  `ARCHITECTURE.md`, `DESIGN.md`, `STYLEGUIDE.md`, `docs/narrative/`
- Task tracking system/source: `backlog.md` CLI for git-repo task tracking,
  configured by `.backlog/config.yml`
- Publish target: git remote `origin`
  (`https://github.com/codex-fp/high-school-story.git`)
- Package source(s): root `build.gradle.kts`, `lwjgl3/build.gradle.kts`, local
  Gradle packaging tasks such as `./gradlew :lwjgl3:jar`,
  `./gradlew :lwjgl3:jarWin`, `./gradlew :lwjgl3:jarLinux`,
  `./gradlew :lwjgl3:jarMac`, `./gradlew :lwjgl3:dist`
- Deployment source(s): Not applicable: this repository has no deployment
  manifests, deployment scripts, or deployment pipeline. Publishing is limited
  to pushing code to remote git.

- Authoritative contract files: `AGENTS.md`, `README.md`, `ARCHITECTURE.md`,
  `DESIGN.md`, `STYLEGUIDE.md`, `docs/narrative/README.md`, `docs/narrative/`,
  `engine/ARCHITECTURE.md`, `engine/STYLEGUIDE.md`
- If code and docs disagree, trust: the owning documentation contract, then
  update implementation or documentation so they match in the same change
- If multiple sources disagree, resolve in this order: direct user instruction,
  this `AGENTS.md`, `DESIGN.md`, `ARCHITECTURE.md`, `STYLEGUIDE.md`,
  `docs/narrative/README.md`, narrative files in `docs/narrative/`, `README.md`,
  implementation code, then parent or engine documentation when the question is
  game-local
- External mutation safety boundary: may modify files inside the local workspace
  and local build outputs only. Do not push to remote git, change GitHub state,
  edit secrets, mutate shared services, or alter anything outside the workspace
  without explicit user approval.
- Runtime verification safety boundary: use local Gradle tasks, local desktop
  launchers, and local visual preview tests only. Do not use shared accounts,
  paid services, production data, or non-local environments.

- Architecture references: `ARCHITECTURE.md`, `engine/ARCHITECTURE.md`
- Glossary/reference docs: `README.md`, `STYLEGUIDE.md`,
  `docs/narrative/README.md`, `engine/STYLEGUIDE.md`

## 2) Task tracking and traceability

- Task ID format: `HSS-<number>`
- Where active task context comes from: the active `backlog.md` CLI task first,
  then the current user prompt when no backlog task is active yet
- Required traceability artifacts:
  - Specification must reference: the task ID in the owning `backlog.md` task or
    in the updated specification document section
  - Implementation must reference: the task ID in the branch name, commit
    message, or final handoff when no branch or commit is created
  - Verification evidence must reference: the task ID in the final handoff and
    in any updated `backlog.md` task or verification note
  - Publish metadata must reference: commit SHA, branch name, and task ID when
    code is published to `origin`
- Required task states: `To Do`, `In Progress`, `Done`
- Acceptance criteria source: the relevant `backlog.md` task plus the owning
  specification in `DESIGN.md`, `ARCHITECTURE.md`, or `docs/narrative/`
- If no existing task is found, create task in: the `backlog.md` CLI tracker for
  this repository

- Branch naming style: `hss-123-short-description`
- Commit message style: imperative sentence or conventional-style summary that
  includes the task ID when available, for example
  `Add park scene travel validation [HSS-123]`
- PR title style: same as the branch purpose or commit summary, including the
  task ID when available

## 3) Engineering workflow and quality gates

- Specification required before implementation? yes. Exceptions: tiny mechanical
  fixes that do not change behavior, contracts, workflow, or architecture may
  proceed without a spec edit, but any behavior or contract change must update
  its owning documentation before or alongside the code change.
- Required pre-merge checks:
  - Format/lint: `./gradlew ktlintCheck`; run `./gradlew ktlintFormat` after
    formatting-sensitive Kotlin or Gradle edits
  - Typecheck/static analysis: Not applicable: this repository does not define a
    separate typecheck-only or static-analysis-only Gradle task beyond normal
    Kotlin compilation and `ktlintCheck`
  - Unit tests: `./gradlew test`
  - Integration tests: Not applicable: this repository does not maintain a
    separate automated integration-test suite
  - Security/policy checks: Not applicable: this repository does not maintain a
    separate security or policy scanning command
- Minimum review expectation: self-review only before handoff or publish
- Required approvals before external mutation or publish: explicit user approval
  is required before pushing to remote git or making any non-local external
  mutation
- Stop conditions / blockers: stop and ask when instructions conflict with the
  authoritative docs, when a change would cross the game-layer versus engine
  boundary, when a task needs secrets or non-local access, when unexpected user
  changes create a direct conflict, or when the required documentation owner is
  unclear

- OS/runtime prerequisites: Java 17, installed `mani`, synced `engine/`
  checkout via `mani sync`, Gradle via `./gradlew` on Unix or `gradlew.bat` on
  Windows
- Local setup shortcut: `mani sync && ./gradlew test`
- Known expensive checks to avoid by default:
  `./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher`
  and live preview tests in `lwjgl3/src/test/`; run them when changing visual
  game objects, maps, dialogue, scenes, or launcher wiring

## 4) Documentation targets

- Specification documentation target: `DESIGN.md`, `ARCHITECTURE.md`,
  `docs/narrative/`
- Implementation/change documentation target: update the owning root document in
  place: `README.md`, `ARCHITECTURE.md`, `DESIGN.md`, `STYLEGUIDE.md`, or
  `docs/narrative/`
- Verification evidence target: the active `backlog.md` task when used,
  otherwise the final handoff summary
- Release/change log target: Not applicable: this repository does not maintain a
  dedicated changelog or release-notes file
- Documentation update rule: any change to behavior, architecture, gameplay
  rules, workflow, commands, paths, packaging, or authored narrative content
  must update its owning document in the same change
- Stale documentation handling: replace or remove stale guidance in the owning
  document; do not leave parallel notes that conflict with the current contract

- ADR/design-record target: Not applicable: the repository uses conventional
  root documentation instead of a separate ADR directory
- Operator/runbook target: Not applicable: this repository has no deployed
  runtime or operator runbook set

## 5) Runtime verification setup

- Verification environment(s): local
- Start/run command(s):
  `./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher`
  for sandbox iteration,
  `./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.MainLauncher`
  for the incomplete main path,
  `./gradlew test` for automated checks,
  `./gradlew :lwjgl3:test --tests "pro.piechowski.highschoolstory.character.player.PlayerCharacterPreview.preview"`
  for a targeted live preview example
- Access method(s): local Gradle CLI and the desktop LibGDX window opened by the
  launcher or preview test
- Health check / readiness check: successful completion of the Gradle task, or a
  visible local game window with assets loaded and no startup exception
- Manual verification interface(s): Gradle CLI output and local desktop preview
  window
- Allowed test data/process: use repository-local assets, maps, config, and test
  code only. Add or modify local fixtures as needed inside the workspace.
- Forbidden verification actions: do not use shared environments, real player
  accounts, non-local services, paid APIs, or destructive operations outside the
  workspace
- Evidence required for `passed`:
  - Commands/tools used: list each Gradle command or launcher path used
  - Scenario steps: list the manual scene, object, or dialogue steps exercised
  - Observed results: record what rendered, loaded, or passed
  - Artifact links/screenshots/logs: include relevant console output and mention
    screenshots only when they materially help explain a visual result

- Example verification scenarios:
  - Run `./gradlew test` after code changes that affect non-visual logic
  - Run `./gradlew ktlintCheck` after Kotlin or Gradle edits
  - Run the relevant live preview test after changing a game object, map,
    dialogue, or scene
  - Run `SandboxLauncher` after broader gameplay or composition changes
- Observability sources: local Gradle logs and local launcher or preview output

## 6) Packaging workflow

- Package artifact type: executable desktop jar and local desktop distribution
  artifacts
- Packaging command(s): `./gradlew :lwjgl3:jar`, `./gradlew :lwjgl3:jarWin`,
  `./gradlew :lwjgl3:jarLinux`, `./gradlew :lwjgl3:jarMac`, `./gradlew :lwjgl3:dist`
- Artifact output location: `lwjgl3/build/libs/` for jar artifacts and
  `lwjgl3/build/distributions/` for distribution archives and scripts
- Artifact identity/version source: `projectVersion` in `gradle.properties`
  combined with archive naming in `lwjgl3/build.gradle.kts`
- Packaging prerequisites: Java 17, installed `mani`, synced `engine/`
  checkout via `mani sync`, successful Gradle build environment, and any
  platform packaging assets already present in `lwjgl3/icons/`
- Evidence required: packaging command run, resulting artifact file path, and
  artifact filename including version

- SBOM/signing/provenance step: Not applicable: this repository does not define
  SBOM, signing, or provenance generation steps
- Retention/location rules: keep artifacts as local build outputs under
  `lwjgl3/build/`; do not treat them as published releases unless the user asks

## 7) Deployment workflow and environments

- Deployment environments: Not applicable: the project has no deployment
  environments
- Deployment order: Not applicable: the project is built and run locally rather
  than deployed
- Deploy command/workflow per environment:
  - Not applicable: there is no deployment workflow
- Required preconditions: Not applicable: there is no deployment workflow
- Approved access source/process: Not applicable: there are no deployment
  credentials or environments for this repository
- Post-deploy verification command(s)/checks: Not applicable: there is no
  deployment workflow
- Rollback source: Not applicable: there is no deployment workflow
- Rollback command/workflow: Not applicable: there is no deployment workflow
- Failure handling rule: Not applicable: there is no deployment workflow
- Deployment evidence required: Not applicable: there is no deployment workflow

- Maintenance window/change freeze rules: Not applicable: there is no deployment
  workflow
- Escalation contacts/rotation: Not applicable: there is no deployment workflow

## Game-Local Rules

- Treat `engine/` as a mani-managed checkout and separate Gradle build included
  through `includeBuild("./engine")`.
- Treat `SandboxLauncher` as the main development entrypoint while
  `GameEntrypoint.run()` remains `TODO()`.
- Treat `MainLauncher` as incomplete until the full game flow is implemented.
- Treat preview tests as visual tooling that opens a live LibGDX window, not as
  headless unit tests.
- Keep game-specific guidance in root conventional documentation files.
- Keep narrative content in `docs/narrative/`.
- Do not recreate `docs/product/`, `docs/design/`, or `docs/development/`
  unless a future documentation contract explicitly reintroduces them.
- Keep documentation, code-facing text, comments, commit messages, and
  configuration in English.
- Follow `STYLEGUIDE.md` for game-layer conventions.
- Follow `engine/STYLEGUIDE.md` when changing reusable engine code.
- Use `TODO()` for visible unimplemented stubs; do not replace missing behavior
  with silent no-ops.
- Let exceptions propagate through coroutines unless local code has a clearer
  error contract.
- Preserve generated output, runtime state, secrets, credentials, and local
  machine data outside normal source edits.
- Undocumented contract changes, silent drift between documentation and
  implementation, unrelated refactors, and generated output churn are disallowed.

## Working Sequence

1. Confirm the intended contract or behavior.
2. Synchronize remotes with `git fetch origin` before substantial repository
   work.
3. Inspect the relevant source, documentation, and `engine/` boundary.
4. Update the owning documentation contract when behavior, workflow, or
   architecture changes.
5. Implement the smallest coherent change.
6. Run the relevant verification.
7. Summarize changed files, checks, and residual risk.

## Conditional References

- Read `README.md` for onboarding and project status.
- Read `ARCHITECTURE.md` before changing game-layer boundaries, modules,
  runtime composition, launchers, or dependency rules.
- Read `DESIGN.md` before changing product scope, gameplay systems, MVP
  behavior, pacing, or authored-system assumptions.
- Read `STYLEGUIDE.md` before changing naming, formatting, package structure,
  Kotlin idioms, preview tests, or local conventions.
- Read `docs/narrative/README.md` before changing authored narrative content.
- Read `engine/ARCHITECTURE.md` and `engine/STYLEGUIDE.md` before changing
  reusable engine behavior.

## Final checklist

- [x] Every placeholder is replaced.
- [x] Each section is either completed or marked `Not applicable: <reason>`.
- [x] Authoritative files and traceability rules are stated once and are
  explicit.
- [x] Required vs optional commands are clearly distinguished.
- [x] Runtime verification safety boundaries are explicit.
- [x] External mutation approval boundaries are explicit.
- [x] Package/deploy/publish steps include commands, evidence, and rollback.
- [x] No secrets are stored in this file.
