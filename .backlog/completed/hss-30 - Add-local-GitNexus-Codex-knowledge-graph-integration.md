---
id: HSS-30
title: Add local GitNexus Codex knowledge-graph integration
status: Done
assignee:
  - codex
created_date: '2026-06-14 10:38'
updated_date: '2026-06-14 10:45'
labels:
  - codex
  - knowledge-graph
  - mcp
  - gitnexus
milestone: m-0
dependencies: []
references:
  - 'https://github.com/abhigyanpatwari/GitNexus'
documentation:
  - docs/development-guide.md
  - docs/codex-gitnexus-selfhosted.md
modified_files:
  - AGENTS.md
  - .gitignore
  - docs/index.md
  - docs/development-guide.md
  - docs/codex-gitnexus-selfhosted.md
priority: high
ordinal: 30000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add a local-only GitNexus integration for Codex so this repository can be indexed into a code knowledge graph and queried through MCP. The setup must keep repository knowledge local, preserve the existing BMAD-native AGENTS.md contract, and fit alongside the existing local mem0 integration where mem0 serves memory and GitNexus serves code graph context.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Register GitNexus as a Codex MCP server using the official local CLI integration.
- [x] #2 Index this repository locally with GitNexus in a way that preserves the existing repository-owned AGENTS.md guidance and keeps generated GitNexus data out of git.
- [x] #3 Document setup, indexing workflow, local storage paths, Codex registration, and verification steps for this repository.
- [x] #4 Verify local prerequisites, Codex MCP registration, and an initial repository index status for High School Story.
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Install GitNexus globally and configure Codex with the official GitNexus setup flow so Codex uses a stable local CLI command instead of cold-starting through npx each time.
2. Update repository ignore rules and documentation ownership so local GitNexus index data and workflow instructions are tracked correctly without disturbing existing BMAD-native AGENTS guidance.
3. Run a first local index for this repository with options that preserve the existing AGENTS.md file, then verify GitNexus CLI status and Codex MCP registration.
4. Record verification evidence, changed files, and any residual risks in the task before handoff.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
User approved the implementation plan on 2026-06-14 and asked to proceed immediately.

Verification commands: `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && npm install -g gitnexus@1.6.7`, `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus setup`, `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus analyze --skip-agents-md --force .`, `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus status`, `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus list`, `codex mcp list`.

Observed results: GitNexus 1.6.7 was installed under the nvm-managed Node v24.14.1 runtime, Codex gained a `gitnexus` MCP entry pointing to `/home/fpiechowski/.nvm/versions/node/v24.14.1/bin/gitnexus`, and repository indexing completed successfully in about 6.8 seconds.

Observed results: `gitnexus status` reported the repository up to date at commit `c36a42f`; `gitnexus list` showed `high-school-story` with 123 indexed files, 1541 symbols, 1721 edges, 11 clusters, and 4 processes.

Implementation note: system Node v20.20.2 is too old for GitNexus 1.6.7, so the integration is documented and verified through `nvm use 24` on this machine.

Residual risk: GitNexus ran without the optional FTS extension and skipped `assets/maps/town.tmx` because it exceeded the default 512KB file cap. Core graph indexing still succeeded, but search coverage for those cases is limited unless the environment or limits are adjusted.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Configured GitNexus as a local Codex MCP server through the official CLI setup flow, using the nvm-managed Node v24 runtime required by GitNexus 1.6.7. Added repository documentation for setup, indexing, storage paths, and verification; updated development docs and ignored local `/.gitnexus/` graph data. Indexed the High School Story repository locally while preserving the existing BMAD-native `AGENTS.md` contract and confirmed Codex MCP registration plus an up-to-date initial graph index.
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
