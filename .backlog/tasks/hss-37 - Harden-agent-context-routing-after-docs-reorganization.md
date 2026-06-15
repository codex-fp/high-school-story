---
id: HSS-37
title: Harden agent context routing after docs reorganization
status: Done
assignee: []
created_date: '2026-06-15 09:39'
updated_date: '2026-06-15 09:41'
labels:
  - agent
  - docs
  - tooling
dependencies: []
documentation:
  - AGENTS.md
  - _bmad-output/project-context.md
  - docs/index.md
  - docs/agent/guide.md
  - docs/agent/code-knowledge-graph.md
  - docs/agent/documentation-rag.md
modified_files:
  - AGENTS.md
  - _bmad-output/project-context.md
  - docs/agent/guide.md
priority: medium
ordinal: 36000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Update agent-facing instructions to reflect the new docs/ domain structure and make routing to gitnexus and hss-docs-rag operationally stronger than the current soft preference wording.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Agent-facing owner-document paths match the reorganized docs/ structure.
- [x] #2 Agent instructions explicitly route documentation questions to hss-docs-rag before direct filesystem fallback.
- [x] #3 Agent instructions explicitly route code understanding, tracing, impact, and refactoring questions to gitnexus before direct filesystem fallback.
- [x] #4 Fallback-to-filesystem behavior is documented for stale indexes, no-result cases, or verification needs.
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Documentation-only verification: `git diff --check -- AGENTS.md _bmad-output/project-context.md docs/agent/guide.md` returned clean.

Self-review confirmed the updated instructions reference the reorganized `docs/game/`, `docs/engineering/`, and `docs/agent/` structure and strengthen MCP-first routing for `gitnexus` and `hss-docs-rag`.

Gradle and visual-preview checks were not run because the change is limited to agent instructions and documentation routing rules.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Updated agent-facing instructions after the `docs/` reorganization so owner-document paths match the new domain folders and MCP routing is operationally stronger. `AGENTS.md`, `_bmad-output/project-context.md`, and `docs/agent/guide.md` now direct agents to use `hss-docs-rag` first for documentation/workflow questions, `gitnexus` first for code-understanding and impact questions, and filesystem search as a fallback for stale, noisy, unavailable, or exact-verification cases.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [ ] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
