# Agent Guide

## Purpose

This is the BMAD-native operating guide for AI coding agents working on High
School Story. It replaces the previous monolithic agent guidance while preserving
the critical operational rules.

## Required Context

Before editing, read:

- `_bmad-output/project-context.md`.
- `_bmad-output/implementation-artifacts/sprint-status.yaml` and the active
  implementation story file when the work belongs to a current BMAD story.
- The owning document in `docs/` for the topic being changed.
- `engine/_bmad-output/project-context.md`, `engine/README.md`, and
  `engine/AGENTS.md` before touching reusable engine code.
- Use the appropriate context layer for the question at hand:
  - `mem0` for stored memory, prior decisions across sessions, and user
    preferences not already captured in the repo or current session.
  - Direct file search and reads for exact keyword lookup, known-document
    lookup, path discovery, and line-level verification.
  - `hss-docs-rag` for semantic documentation search, cross-document synthesis,
    owner-document discovery when the right file is not obvious, and
    BMAD/workflow questions whose answer may be distributed across multiple
    docs.
  - `gitnexus` first for codebase graph questions, execution tracing, impact
    analysis, code review, and refactoring.

## Work Sequence

1. Confirm the intended behavior or contract.
2. Run `git fetch origin` before substantial repository work.
3. Choose the retrieval path that matches the question before broad
   exploration:
   - Exact doc, path, or wording lookup: use `rg` and direct file reads.
   - Semantic or cross-document documentation question: call `hss-docs-rag`.
   - Code understanding or blast-radius question: call `gitnexus`.
   - Prior-decision or preference question: call `mem0`.
4. Inspect the relevant code, docs, and game/engine boundary.
5. Update the owning documentation before or with contract changes.
6. Implement the smallest coherent change.
7. Run relevant verification or explain why it is not applicable.
8. Record changed files, commands, observed results, and residual risk in the
   final handoff and active BMAD story artifact when one exists.

## MCP Routing Rules

- Do not treat `hss-docs-rag` as mandatory for every documentation lookup.
- Prefer direct file search and reads when the task is keyword-oriented or
  needs exact text, known paths, or line-level verification.
- Prefer `hss-docs-rag` when the task is semantic, cross-document, or the right
  owner document is unclear.
- Call `gitnexus` before `rg` or ad hoc file browsing when you need code
  structure, execution flow, symbol relationships, impact analysis, review
  surface, or refactoring context.
- Use `mem0` only when repository docs and the current session do not already
  provide the needed historical or preference context.
- After MCP retrieval, open the returned owner documents or source files needed
  for exact implementation details, edits, and verification.
- Fall back to direct filesystem search and file reads when:
  - MCP results are unavailable.
  - The GitNexus index is stale and refreshing it is not practical in the
    current turn.
  - RAG results are too noisy or do not surface the owner document you need.
  - Exact line-level wording or source verification is required before editing
    or quoting.
- Use `rg` and direct file reads as the default first step for exact lookup,
  and as a verification layer after MCP retrieval when semantic search helped
  find the relevant source.

## Task Tracking

- Use `_bmad-output/planning-artifacts/epics.md` as the planning source for
  epics and story breakdown.
- Use `_bmad-output/implementation-artifacts/sprint-status.yaml` as the current
  sprint execution source.
- Keep implementation story artifacts under
  `_bmad-output/implementation-artifacts/`.
- Link implementation and verification evidence to the active BMAD story when
  the work is story-driven.

## Brainstorming Workflow Rules

- Keep durable brainstorming-specific behavior in BMAD-native docs and `_bmad/custom/` skill overrides, not in root `AGENTS.md` beyond compatibility-entrypoint guidance.
- During brainstorming workflows, show visible session progress at each question or topic.
- Include the current question or topic number, the total planned question or topic count when known, and short labels for the current and completed topics.
- Prefer a simple checklist-style progress block so the user can immediately see where the session is, what is done, and what remains.

## Git Naming Conventions

- When branches, PRs, or commits are requested for story-driven work, include
  the active BMAD story key when practical.
- Keep commit messages in Conventional Commits format.

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
- Use the engine project's own task or story workflow for reusable engine work.
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
- Context routing is intentional, not uniform: choose direct file search for
  exact lookup, `hss-docs-rag` for semantic or cross-document documentation
  retrieval, `gitnexus` for code graph and impact questions, and `mem0` for
  historical memory or user preferences not already present in repo docs or the
  current session.
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
