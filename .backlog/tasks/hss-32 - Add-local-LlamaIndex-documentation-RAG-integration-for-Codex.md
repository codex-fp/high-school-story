---
id: HSS-32
title: Add local LlamaIndex documentation RAG integration for Codex
status: Done
assignee:
  - codex
created_date: '2026-06-14 17:17'
updated_date: '2026-06-14 17:27'
labels:
  - codex
  - rag
  - documentation
  - mcp
  - llamaindex
  - qdrant
milestone: m-0
dependencies: []
references:
  - docs/codex-mem0-selfhosted.md
  - docs/codex-gitnexus-selfhosted.md
  - 'https://developers.llamaindex.ai/python/framework/'
  - 'https://qdrant.tech/documentation/frameworks/llama-index/'
  - 'https://developers.openai.com/codex/mcp'
documentation:
  - _bmad-output/project-context.md
  - docs/ai-agent-guide.md
  - docs/development-guide.md
  - docs/index.md
  - docs/project-overview.md
modified_files:
  - .codex/config.toml
  - .gitignore
  - _bmad-output/project-context.md
  - docs/ai-agent-guide.md
  - docs/development-guide.md
  - docs/index.md
  - docs/codex-llamaindex-docs-rag.md
  - tools/docs-rag/pyproject.toml
  - tools/docs-rag/src/hss_docs_rag/config.py
  - tools/docs-rag/src/hss_docs_rag/indexer.py
  - tools/docs-rag/src/hss_docs_rag/cli.py
  - tools/docs-rag/src/hss_docs_rag/server.py
priority: high
ordinal: 32000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add a third local context layer for Codex focused on project documentation rather than code or memory. This layer should use LlamaIndex for ingest/query orchestration, an isolated Qdrant store separate from the existing mem0 Qdrant usage, and local MCP exposure so Codex can query repository documentation such as `_bmad-output/` and `docs/`. Update durable agent guidance so the intended role split is explicit: mem0 for memory, GitNexus for codebase knowledge graph, and LlamaIndex for documentation retrieval.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Add a local documentation RAG implementation for Codex that uses LlamaIndex and an isolated Qdrant store separate from the existing mem0 setup.
- [x] #2 Expose the documentation RAG layer through a local Codex-compatible MCP workflow with repository-local setup details and verification steps.
- [x] #3 Document the ingestion scope and operating model for repository documentation, with primary focus on `_bmad-output/` and `docs/`.
- [x] #4 Update agent guidance so the role split is explicit: `mem0` for memory, `gitnexus` for codebase knowledge graph, and `llamaindex` for documentation retrieval.
- [x] #5 Keep generated documentation-RAG state out of git and preserve unrelated existing worktree changes.
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Add a repo-local documentation RAG tool under a new local Python/uv workspace that can ingest `_bmad-output/` and `docs/`, persist vectors to a dedicated local Qdrant location or endpoint separate from mem0, and answer repository-documentation questions through MCP-safe tool entrypoints.
2. Register the server at the project level in `.codex/config.toml` so this repository gains documentation retrieval without changing the global mem0 or GitNexus registrations.
3. Add a durable setup and operations document covering prerequisites, local storage layout, ingestion commands, rebuild flow, verification commands, and the separation between the mem0 and documentation Qdrant stores.
4. Update the compact and durable agent guidance to encode the context-routing rule: mem0 for memory, GitNexus for code knowledge graph, LlamaIndex docs RAG for `_bmad-output/` and `docs/`.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implemented a repo-local documentation RAG tool under `tools/docs-rag/` using LlamaIndex, Ollama embeddings, Qdrant, and an MCP server exposed through project-scoped `.codex/config.toml`.

Kept the documentation vector store separate from mem0 by using a dedicated Qdrant instance on `http://127.0.0.1:6334` and a distinct collection `high_school_story_docs`.

Updated durable agent guidance so the routing rule is explicit: `mem0` for memory, `gitnexus` for code graph queries, and `hss-docs-rag` for documentation retrieval over `docs/` and `_bmad-output/`.

Verification commands: `python3 -m compileall tools/docs-rag/src`, `curl --max-time 5 http://127.0.0.1:11434/api/tags`, `"/mnt/c/Program Files/Docker/Docker/resources/bin/docker.exe" run -d --name hss-docs-rag-qdrant -p 6334:6333 -v hss-docs-rag-qdrant-storage:/qdrant/storage qdrant/qdrant:latest`, `curl --max-time 5 http://127.0.0.1:6334/healthz`, `uv run --project tools/docs-rag hss-docs-rag-index --help`, `uv run --project tools/docs-rag hss-docs-rag-index rebuild --json`, `uv run --project tools/docs-rag hss-docs-rag-index search "source of truth for gameplay design" --top-k 3 --json`, `codex mcp get hss-docs-rag`, and `curl --max-time 5 http://127.0.0.1:6334/collections/high_school_story_docs`.

Observed results: the dedicated docs Qdrant container started successfully, `curl http://127.0.0.1:6334/healthz` returned `healthz check passed`, `codex mcp get hss-docs-rag` showed the project-scoped stdio server enabled, the docs rebuild indexed `31` documents into `130` Qdrant points, and a search for `source of truth for gameplay design` returned relevant hits from `docs/game-architecture.md`, `_bmad-output/brainstorming-session-2026-06-09.md`, and `docs/game-design.md`.

Documentation-only plus local-tooling validation: no Gradle checks or visual previews were applicable because no Kotlin, Gradle, runtime gameplay, scene, or asset behavior changed.

Residual risk: the docs RAG rebuild currently re-embeds all tracked documentation on each rebuild and depends on the local Ollama embedding model plus the dedicated Qdrant container being available before search or MCP use.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added a third local Codex context layer for repository documentation by introducing `hss-docs-rag`, a repo-scoped MCP server backed by LlamaIndex, Ollama embeddings, and a dedicated Qdrant instance separate from mem0. The implementation lives under `tools/docs-rag/`, is registered through `.codex/config.toml`, and indexes `docs/` plus `_bmad-output/` into the `high_school_story_docs` collection.

Updated durable guidance in `_bmad-output/project-context.md`, `docs/ai-agent-guide.md`, `docs/development-guide.md`, and `docs/index.md`, and added `docs/codex-llamaindex-docs-rag.md` for setup, rebuild, verification, and context-routing guidance. Verified local prerequisites, project-scoped Codex MCP registration, dedicated Qdrant health, a full docs index rebuild, and a successful retrieval query over project docs.

No Gradle or preview checks were run because this task changed documentation and local tooling only. Residual risk: rebuilds currently re-embed the full documentation set and require the local Ollama embedding model and dedicated docs Qdrant instance to be running.
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
