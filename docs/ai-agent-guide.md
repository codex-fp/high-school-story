# AI Agent Guide

## Purpose

This is the BMAD-native operating guide for AI coding agents working on High
School Story. It replaces the previous monolithic agent guidance while preserving
the critical operational rules.

## Required Context

Before editing, read:

- `_bmad-output/project-context.md`.
- Active `.backlog/tasks/HSS-*` task or create one if the work is substantial.
- The owning document in `docs/` for the topic being changed.
- `engine/_bmad-output/project-context.md`, `engine/README.md`, and
  `engine/AGENTS.md` before touching reusable engine code.

## Work Sequence

1. Confirm the intended behavior or contract.
2. Run `git fetch origin` before substantial repository work.
3. Inspect the relevant code, docs, and game/engine boundary.
4. Update the owning documentation before or with contract changes.
5. Implement the smallest coherent change.
6. Run relevant verification or explain why it is not applicable.
7. Record changed files, commands, observed results, and residual risk in the
   final handoff and active backlog task.

## Task Tracking

- Use `HSS-<number>` task IDs.
- Use `.backlog/` as the local task source.
- Required task states are `To Do`, `In Progress`, and `Done`.
- Link implementation and verification evidence to the active task.

## Git Naming Conventions

- Branch name format: `TASK-ID/short-description`.
- PR title format: `TASK-ID Short description`.
- Commit message format: Conventional Commits with the task ID at the start of the summary text, for example `type(scope): TASK-ID Short description`.
- When branches, PRs, or commits are requested, include the active task ID using the formats above.

## Editing Boundaries

- Do not revert or overwrite unrelated user changes.
- Do not mutate files outside the workspace without explicit approval.
- Do not push, create PRs, or alter GitHub state without explicit approval.
- Do not edit secrets or credentials.
- Do not introduce generated-output churn or local state changes as source
  changes.

## Game-Layer Rules

- Keep game code under `pro.piechowski.highschoolstory`.
- Keep reusable engine code under `engine/` and `pro.piechowski.kge`.
- Treat `engine/` as a managed standalone project, not a place for game-specific
  content.
- Use engine `KGE-<number>` backlog traceability for reusable engine work.
- Use `SandboxLauncher` for development iteration.
- Treat `MainLauncher` as incomplete until the full game flow exists.
- Treat `lwjgl3` preview sources as live visual tools run manually through
  `:lwjgl3:preview`.

## Documentation Rules

- Keep durable project docs in `docs/`.
- Keep root all-caps files as compatibility entrypoints only.
- Keep `_bmad-output/project-context.md` lean and agent-focused.
- Keep documentation, code-facing strings, comments, commit messages, and config
  in English unless a future localization contract says otherwise.
- Do not recreate retired `docs/design/` or `docs/narrative/` folders unless the
  BMAD-native documentation model is intentionally changed.

## Verification Evidence Template

Record these items in the task or final handoff:

- Commands run.
- Scenario steps exercised.
- Observed results.
- Relevant logs or artifacts.
- Checks not run and why.
- Residual risks.
