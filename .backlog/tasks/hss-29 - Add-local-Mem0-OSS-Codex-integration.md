---
id: HSS-29
title: Add local mem0-mcp-selfhosted Codex integration
status: Done
assignee: []
created_date: '2026-06-14 12:00'
updated_date: '2026-06-14 12:45'
labels:
  - codex
  - memory
  - mcp
  - mem0
milestone: m-0
dependencies: []
references:
  - docs/codex-mem0-selfhosted.md
  - https://github.com/elvismdev/mem0-mcp-selfhosted
documentation:
  - docs/codex-mem0-selfhosted.md
priority: high
ordinal: 29000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add a local-only `mem0-mcp-selfhosted` integration for Codex. The integration
must avoid Mem0 Cloud and use local Qdrant plus local Ollama so Codex can store
and retrieve workspace memories through MCP.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Register `mem0-mcp-selfhosted` as the Codex MCP server
- [x] #2 Configure storage to use local Qdrant
- [x] #3 Document setup, Codex registration, local paths, and verification
- [x] #4 Keep generated memory data and local runtime state out of git
- [x] #5 Verify `uvx`, Codex MCP registration, and external service readiness
<!-- AC:END -->

## Current Evidence

<!-- SECTION:CURRENT_EVIDENCE:BEGIN -->
- Installed `uv`/`uvx` `0.11.21` into `/home/fpiechowski/.local/bin`.
- Registered global Codex MCP server `hss-mem0` with `uvx --from git+https://github.com/elvismdev/mem0-mcp-selfhosted.git mem0-mcp-selfhosted`.
- Configured MCP env for fully local mode: `MEM0_PROVIDER=ollama`, `MEM0_LLM_PROVIDER=ollama`, `MEM0_EMBED_PROVIDER=ollama`, `MEM0_ENABLE_GRAPH=false`, `MEM0_USER_ID=filip`, and `MEM0_COLLECTION=high_school_story_codex`.
- Verified `uvx` can install and import `mem0-mcp-selfhosted`; package import printed version `0.3.2`.
- Started Qdrant with Docker Desktop via Windows `docker.exe` as container `hss-qdrant`; `curl --max-time 5 http://localhost:6333/healthz` returned `healthz check passed`.
- Started Ollama with Docker Desktop via Windows `docker.exe` as container `hss-ollama`; `curl --max-time 10 http://localhost:11434/api/tags` listed `qwen3:14b` and `bge-m3:latest`.
- Pulled local Ollama models `qwen3:14b` for LLM calls and `bge-m3` for `1024`-dimension embeddings.
- `docker.exe ps -a --filter name=hss-` showed `hss-qdrant` and `hss-ollama` running with ports `6333` and `11434` published.
- `docker` in WSL still reports Docker Desktop WSL integration is not active; use the Windows `docker.exe` path documented in `docs/codex-mem0-selfhosted.md` or enable Docker Desktop WSL integration for this distro.
- Full live Codex MCP memory add/search remains a first-use check after restarting Codex, because this running Codex session cannot load MCP servers that were added after startup.
<!-- SECTION:CURRENT_EVIDENCE:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Registered `hss-mem0` as a global Codex stdio MCP server backed by
`mem0-mcp-selfhosted`, local Qdrant, and local Ollama. Added project
documentation for setup, restart, Docker fallback, verification, and local state
handling. Verified `uvx`, package import, Codex MCP registration, Qdrant health,
Ollama readiness, and required local model availability.

No Gradle checks or visual previews were run because this task changed local
tooling and documentation only; no Kotlin, Gradle, game logic, scene, or asset
files changed.
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
