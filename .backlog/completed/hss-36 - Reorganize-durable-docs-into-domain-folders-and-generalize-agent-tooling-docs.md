---
id: HSS-36
title: Reorganize durable docs into domain folders and generalize agent tooling docs
status: Done
assignee: []
created_date: '2026-06-15 09:27'
updated_date: '2026-06-15 09:32'
labels: []
dependencies: []
documentation:
  - docs/index.md
  - AGENTS.md
  - _bmad-output/project-context.md
  - docs/ai-agent-guide.md
  - docs/development-guide.md
modified_files:
  - AGENTS.md
  - ARCHITECTURE.md
  - DESIGN.md
  - README.md
  - STYLEGUIDE.md
  - _bmad-output/project-context.md
  - docs/index.md
  - docs/project-overview.md
  - docs/game/brief.md
  - docs/game/gdd.md
  - docs/game/architecture.md
  - docs/game/ux/design.md
  - docs/game/ux/experience.md
  - docs/game/narrative/design.md
  - docs/game/narrative/content.md
  - docs/engineering/architecture.md
  - docs/engineering/development-guide.md
  - docs/engineering/source-tree.md
  - docs/engineering/component-inventory.md
  - docs/agent/guide.md
  - docs/agent/local-memory.md
  - docs/agent/code-knowledge-graph.md
  - docs/agent/documentation-rag.md
priority: medium
ordinal: 36000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Reorganize the canonical documentation under docs/ into domain folders that improve discoverability without introducing parallel sources of truth. Keep project entrypoint documents readable from docs/index.md, move game, engineering, and agent-oriented documents into clearer subdirectories, and generalize agent tooling documents so they are not named specifically for Codex. Update all owner references and compatibility entrypoints that point at the durable docs set.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The durable docs are reorganized into a clearer folder structure under docs/ with canonical game, engineering, and agent sections.
- [x] #2 Canonical game documents use clearer domain-oriented names and paths, and tooling documents are renamed so they are not Codex-specific.
- [x] #3 All repository references to the moved durable docs are updated, including index and owner maps used by agents.
- [x] #4 The resulting documentation structure is internally consistent and passes a repository self-check for moved-path references.
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Reorganized durable docs into root entrypoints plus docs/game, docs/engineering, and docs/agent. Renamed game canon paths to brief/gdd/architecture and generalized agent-tooling document names away from codex-* file naming.

Updated owner maps and compatibility entrypoints in AGENTS.md, README.md, root compatibility files, docs/index.md, and _bmad-output/project-context.md so active guidance now points at the new paths.

Verification: ran `git diff --check` and a local markdown-link existence check over AGENTS.md, README.md, root compatibility files, docs/, and _bmad-output/project-context.md. Both passed. Gradle and preview checks were not applicable because this was a docs-only reorganization.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
HSS-36 reorganized durable documentation into domain folders under `docs/game/`, `docs/engineering/`, and `docs/agent/`, while keeping `docs/index.md` and `docs/project-overview.md` as root entrypoints. The change also renamed tooling docs away from `codex-*` file names, updated active owner maps and compatibility entrypoints, and verified the resulting docs set with `git diff --check` plus a local markdown-link existence check. Residual risk: historical planning artifacts in `_bmad-output/` still mention older durable doc paths by design and were left untouched as workflow history.
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
