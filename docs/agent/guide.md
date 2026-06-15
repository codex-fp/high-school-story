# Agent Guide

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
- Use the appropriate context layer for the question at hand:
  - `mem0` for stored memory, prior decisions, and user preferences.
  - `hss-docs-rag` first for documentation questions, workflow rules,
    owner-document lookup, and `_bmad-output/` guidance.
  - `gitnexus` first for codebase graph questions, execution tracing, impact
    analysis, code review, and refactoring.

## Work Sequence

1. Confirm the intended behavior or contract.
2. Run `git fetch origin` before substantial repository work.
3. Route the question through the right MCP context layer before broad
   filesystem search:
   - Documentation or workflow question: call `hss-docs-rag`.
   - Code understanding or blast-radius question: call `gitnexus`.
   - Prior-decision or preference question: call `mem0`.
4. Inspect the relevant code, docs, and game/engine boundary.
5. Update the owning documentation before or with contract changes.
6. Implement the smallest coherent change.
7. Run relevant verification or explain why it is not applicable.
8. Record changed files, commands, observed results, and residual risk in the
   final handoff and active backlog task.

## MCP Routing Rules

- Call `hss-docs-rag` before direct file reads when you need owner documents,
  workflow instructions, architecture contracts, gameplay rules, UX rules,
  narrative guidance, or `_bmad-output/` context.
- Call `gitnexus` before `rg` or ad hoc file browsing when you need code
  structure, execution flow, symbol relationships, impact analysis, review
  surface, or refactoring context.
- After MCP retrieval, open the returned owner documents or source files needed
  for exact implementation details, edits, and verification.
- Fall back to direct filesystem search and file reads when:
  - MCP results are unavailable.
  - The GitNexus index is stale and refreshing it is not practical in the
    current turn.
  - RAG results are too noisy or do not surface the owner document you need.
  - Exact line-level wording or source verification is required before editing
    or quoting.
- Prefer `rg` and direct file reads as a verification layer after MCP routing,
  not as the default first step for non-trivial documentation or codebase
  understanding questions.

## Task Tracking

- Use `HSS-<number>` task IDs.
- Use `.backlog/` as the local task source.
- Treat `.backlog/` task files as durable git-tracked project artifacts, not disposable local scratch notes.
- Required task states are `To Do`, `In Progress`, and `Done`.
- Link implementation and verification evidence to the active task.

## Brainstorming Workflow Rules

- Keep durable brainstorming-specific behavior in BMAD-native docs and `_bmad/custom/` skill overrides, not in root `AGENTS.md` beyond compatibility-entrypoint guidance.
- During brainstorming workflows, show visible session progress at each question or topic.
- Include the current question or topic number, the total planned question or topic count when known, and short labels for the current and completed topics.
- Prefer a simple checklist-style progress block so the user can immediately see where the session is, what is done, and what remains.

## Git Naming Conventions

- Branch name format: `TASK-ID/short-description`.
- PR title format: `TASK-ID Short description`.
- Commit message format: Conventional Commits with the task ID at the start of the summary text, for example `type(scope): TASK-ID Short description`.
- When branches, PRs, or commits are requested, include the active task ID using the formats above.
- When a workflow changes `.backlog/` task files as part of the work, stage and commit those task-file updates together with the related implementation or documentation unless the user explicitly asks to leave them uncommitted.

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
- Treat the local documentation RAG layer as a retrieval aid over canonical
  project docs, not as a second source of truth. Update the owning document when
  the contract changes.
- Context routing is operational, not optional: `mem0` answers memory
  questions, `gitnexus` is the first stop for code graph and impact questions,
  and `hss-docs-rag` is the first stop for BMAD docs, workflow docs, and
  `_bmad-output/` guidance.
- Keep documentation, code-facing strings, comments, commit messages, and config
  in English unless a future localization contract says otherwise.
- Keep owner documents under the indexed `docs/game/`, `docs/engineering/`, and
  `docs/agent/` structure unless the documentation model is intentionally
  changed and the owner map is updated in the same change.

## Verification Evidence Template

Record these items in the task or final handoff:

- Commands run.
- Scenario steps exercised.
- Observed results.
- Relevant logs or artifacts.
- Checks not run and why.
- Residual risks.
