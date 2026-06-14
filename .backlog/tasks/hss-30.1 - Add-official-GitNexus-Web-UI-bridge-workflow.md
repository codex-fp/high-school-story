---
id: HSS-30.1
title: Add official GitNexus Web UI bridge workflow
status: Done
assignee:
  - '@codex'
created_date: '2026-06-14 10:58'
updated_date: '2026-06-14 11:00'
labels:
  - codex
  - knowledge-graph
  - gitnexus
  - web-ui
milestone: m-0
dependencies: []
references:
  - 'https://github.com/abhigyanpatwari/GitNexus'
  - 'https://abhigyanpatwari-gitnexus.mintlify.app/installation'
documentation:
  - docs/development-guide.md
  - docs/codex-gitnexus-selfhosted.md
  - docs/index.md
modified_files:
  - docs/codex-gitnexus-selfhosted.md
  - docs/development-guide.md
  - docs/index.md
parent_task_id: HSS-30
priority: medium
ordinal: 30010
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add the official GitNexus Web UI bridge workflow for this repository so the existing local GitNexus CLI/MCP setup can also be browsed through the upstream browser UI without re-uploading or re-indexing the repository. Keep the existing BMAD-native AGENTS.md and local-only storage model intact, and document any operational constraints that matter for daily use on this machine.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Document the official GitNexus Web UI bridge workflow for this repository, including the local `gitnexus serve` command, expected default endpoint, and how it connects to the browser UI without re-indexing.
- [x] #2 Document the practical operating model for this repository when Web UI is enabled, including any concurrency or locking limitations between `gitnexus serve`, CLI commands, and MCP usage.
- [x] #3 Verify the locally installed GitNexus version and `serve` command availability, and record verification evidence in the task and docs updates.
- [x] #4 Update the durable project documentation index or workflow docs so the Web UI path is discoverable alongside the existing GitNexus MCP setup.
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Extend `docs/codex-gitnexus-selfhosted.md` with the official GitNexus Web UI bridge workflow using `gitnexus serve`, including the default local endpoint, expected browser flow, and how it reuses the existing local index without re-uploading the repository.
2. Document the practical operating model and upstream locking constraint for this machine: when `gitnexus serve` is holding the local database, concurrent GitNexus CLI or MCP operations may fail with file-lock errors, so users should stop the serve process before reindexing or running graph queries.
3. Update `docs/development-guide.md` and `docs/index.md` so the Web UI path is discoverable alongside the existing CLI/MCP GitNexus setup.
4. Re-read the edited docs, record verification evidence from the already verified local `gitnexus --version` and `gitnexus serve --help` commands, and finalize the backlog task with documentation-only validation notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verified the local GitNexus installation already documented for this machine still exposes the official Web UI bridge command: `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus --version` returned `1.6.7`, and `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus serve --help` showed the official serve command with default port `4747` and host `127.0.0.1`.

Documented the upstream operational constraint that `gitnexus serve` can contend with concurrent GitNexus CLI or MCP access to the same local KuzuDB files, so the repository workflow now treats Web UI usage as an on-demand foreground mode rather than a permanent sidecar.

Documentation-only validation: re-read `docs/codex-gitnexus-selfhosted.md`, `docs/development-guide.md`, and `docs/index.md`, then reviewed `git diff -- docs/codex-gitnexus-selfhosted.md docs/development-guide.md docs/index.md` and `git status --short` to confirm scope remained limited to the intended docs plus the new backlog task file.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `HSS-30.1` as a follow-up to the original local GitNexus integration so the repository documentation now covers the official Web UI bridge workflow alongside CLI/MCP usage. `docs/codex-gitnexus-selfhosted.md` now documents `gitnexus serve`, the default local endpoint, the browser connection flow, and the fact that the Web UI reuses the existing local index without re-uploading the repository.

Updated `docs/development-guide.md` and `docs/index.md` so the Web UI path is discoverable from the standard Codex tooling docs. Also documented the practical upstream locking constraint for this machine: when `gitnexus serve` is active, concurrent GitNexus CLI or MCP operations against the same local database may fail with file-lock errors, so the recommended workflow is to stop the serve process before reindexing or depending on GitNexus-backed Codex queries.

Verification was documentation-only. Commands run: `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus --version`, `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus serve --help`, `git diff -- docs/codex-gitnexus-selfhosted.md docs/development-guide.md docs/index.md`, and `git status --short`. Observed results: GitNexus remains at `1.6.7`; the official `serve` command is available with default port `4747` and host `127.0.0.1`; the repo changes are limited to the intended docs and the new backlog task file. Residual risk: this task does not add a repo-local wrapper or process manager for the Web UI bridge, so users still need to start and stop `gitnexus serve` manually and respect the documented locking limitation.
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
