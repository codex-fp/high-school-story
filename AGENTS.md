# AGENTS.md

This repository is BMAD/GDS-native. This file is a compatibility entrypoint for
AI tools that automatically read `AGENTS.md`; the durable project documentation
lives in `docs/` and the lean execution context lives in
`_bmad-output/project-context.md`.

## Mandatory Read Order

1. `_bmad-output/project-context.md` for compact implementation rules.
2. `.backlog/tasks/` active task, using the `HSS-<number>` task ID.
3. `docs/index.md` for the documentation map.
4. `docs/ai-agent-guide.md` for operational rules.
5. Topic owner document in `docs/` before changing behavior, architecture,
   design, workflow, or authored content.

## Source Of Truth

| Topic | Owner |
|---|---|
| Project overview and status | `docs/project-overview.md` |
| Technical architecture and engine boundary | `docs/architecture.md` |
| Game architecture and simulation structure | `docs/game-architecture.md` |
| MVP gameplay and product design | `docs/game-design.md` |
| Full-game narrative design | `docs/narrative-design.md` |
| Setup, verification, packaging, workflow | `docs/development-guide.md` |
| Code and documentation conventions | `docs/ai-agent-guide.md` and `docs/development-guide.md` |
| Source tree and module layout | `docs/source-tree-analysis.md` |
| Implemented components and assets | `docs/component-inventory.md` |
| Implementation-ready authored narrative content | `docs/narrative-content.md` |
| Reusable engine rules | `engine/_bmad-output/project-context.md`, `engine/README.md`, and `engine/AGENTS.md` |

If docs and code disagree, update the owning document and implementation in the
same change. Do not add parallel notes that leave conflicting guidance in place.

## Task And Traceability Rules

- Task IDs use `HSS-<number>`.
- Use `backlog.md` files under `.backlog/` for local task tracking.
- Create a backlog task before substantial repository work when none exists.
- Reference the task ID in documentation changes, implementation handoff, commit
  message, or branch name.
- Do not publish or push without explicit user approval.

## Engineering Rules

- Keep game code under `pro.piechowski.highschoolstory`.
- Keep reusable engine code under `engine/` and `pro.piechowski.kge`.
- Use engine-local context and `KGE-<number>` task traceability for reusable
  engine work.
- Game code may depend on engine code; engine code must not depend on High School
  Story packages, assets, story, or product rules.
- Use `TODO()` for visible unimplemented stubs; do not replace missing behavior
  with silent no-ops.
- Let coroutine exceptions propagate unless a local API has a clearer error
  contract.
- Preserve generated output, local runtime state, secrets, and machine-specific
  data unless the user explicitly asks otherwise.

## Verification Rules

- Run `./gradlew test` after non-visual logic changes when practical.
- Run `./gradlew ktlintCheck` after Kotlin or Gradle edits.
- Run `./gradlew ktlintFormat` after formatting-sensitive Kotlin or Gradle
  edits.
- Run a targeted live preview or `SandboxLauncher` after changing visual game
  objects, maps, dialogue, scenes, or launcher wiring.
- Documentation-only changes may be verified by self-review, link checks, and
  task evidence without Gradle.

## Safety Boundaries

- Allowed mutation: files inside this workspace and local build outputs.
- Forbidden without approval: pushing to git remote, changing GitHub state,
  editing secrets, using paid or shared services, mutating external systems, or
  altering files outside the workspace.
- Stop and ask if instructions conflict with owner documents, a change crosses
  the game/engine boundary ambiguously, secrets are required, or unexpected user
  changes directly conflict with the current task.

<!-- BACKLOG.MD MCP GUIDELINES START -->

<CRITICAL_INSTRUCTION>

## BACKLOG WORKFLOW INSTRUCTIONS

This project uses Backlog.md MCP for all task and project management activities.

**CRITICAL GUIDANCE**

- If your client supports MCP resources, read `backlog://workflow/overview` to understand when and how to use Backlog for this project.
- If your client only supports tools or the above request fails, call `backlog.get_backlog_instructions()` to load the tool-oriented overview. Use the `instruction` selector when you need `task-creation`, `task-execution`, or `task-finalization`.

- **First time working here?** Read the overview resource IMMEDIATELY to learn the workflow
- **Already familiar?** You should have the overview cached ("## Backlog.md Overview (MCP)")
- **When to read it**: BEFORE creating tasks, or when you're unsure whether to track work

These guides cover:
- Decision framework for when to create tasks
- Search-first workflow to avoid duplicates
- Links to detailed guides for task creation, execution, and finalization
- MCP tools reference

You MUST read the overview resource to understand the complete workflow. The information is NOT summarized here.

</CRITICAL_INSTRUCTION>

<!-- BACKLOG.MD MCP GUIDELINES END -->
