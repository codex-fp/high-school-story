# Local Documentation RAG Setup

High School Story uses a third local AI-agent context layer for documentation
retrieval:

- `mem0` stores memory.
- `gitnexus` indexes the codebase into a knowledge graph.
- `hss-docs-rag` uses LlamaIndex plus a dedicated Qdrant instance to retrieve
  project documentation, primarily from `docs/` and `_bmad-output/`.

This setup is intentionally separate from mem0:

- MCP server: repo-local Python server under `tools/docs-rag/`
- MCP transport: stdio through `uv run`
- Retrieval orchestration: LlamaIndex
- Vector store: dedicated Qdrant at `http://127.0.0.1:6334`
- Embeddings: local Ollama at `http://127.0.0.1:11434`
- Indexed sources: `docs/` and `_bmad-output/`
- Local runtime state: `/.docs-rag/`

## Why A Separate Qdrant

Mem0 and documentation RAG solve different problems:

- `mem0` stores mutable memory records and conversation-derived recall.
- `hss-docs-rag` stores reproducible embeddings for repository-owned
  documentation snapshots.

Do not mix those stores. This repository uses a separate Qdrant instance for
documentation retrieval so index rebuilds, collection resets, and future tuning
do not interfere with memory storage.

## Prerequisites

- `uv` installed locally.
- Python `3.12+`.
- Local Ollama with the embedding model already used elsewhere on this machine:
  `bge-m3`.
- A dedicated Qdrant instance for docs RAG. The default project config expects
  port `6334`, not the mem0 port `6333`.

Start the dedicated Qdrant instance with Docker Desktop through the Windows
binary on this machine:

```bash
"/mnt/c/Program Files/Docker/Docker/resources/bin/docker.exe" run -d \
  --name hss-docs-rag-qdrant \
  -p 6334:6333 \
  -v hss-docs-rag-qdrant-storage:/qdrant/storage \
  qdrant/qdrant:latest
```

This gives the docs RAG its own container, port, and persistent volume.

## Project-Scoped Client Registration

This repository includes a project-scoped `.codex/config.toml` entry:

```toml
[mcp_servers.hss-docs-rag]
command = "uv"
args = ["run", "--project", "tools/docs-rag", "hss-docs-rag-mcp"]
env = { HSS_DOCS_RAG_COLLECTION = "high_school_story_docs", HSS_DOCS_RAG_DOC_PATHS = "docs,_bmad-output", HSS_DOCS_RAG_EMBED_BASE_URL = "http://127.0.0.1:11434", HSS_DOCS_RAG_EMBED_MODEL = "bge-m3:latest", HSS_DOCS_RAG_QDRANT_URL = "http://127.0.0.1:6334", HSS_DOCS_RAG_TOP_K = "5" }
```

Because this lives in `.codex/config.toml`, the server is scoped to this trusted
project instead of becoming another machine-global MCP registration.

If the active client was already running before this file changed, restart it
before the first live `hss-docs-rag` tool call.

## Install And Rebuild The Index

Build the docs index from the repository root:

```bash
uv run --project tools/docs-rag hss-docs-rag-index rebuild
```

The rebuild flow:

1. Reads Markdown documents from `docs/` and `_bmad-output/`.
2. Splits them into chunks with LlamaIndex.
3. Embeds them through Ollama.
4. Recreates the `high_school_story_docs` collection in the dedicated Qdrant
   instance.

Runtime metadata is stored locally under `/.docs-rag/`. Keep that directory out
of git.

## Verification

Check the dedicated Qdrant instance:

```bash
curl http://127.0.0.1:6334/healthz
```

Rebuild the documentation index:

```bash
uv run --project tools/docs-rag hss-docs-rag-index rebuild
```

Run a local retrieval check:

```bash
uv run --project tools/docs-rag hss-docs-rag-index search "source of truth for gameplay design"
```

Check the project-scoped client MCP registration:

```bash
codex mcp list
codex mcp get hss-docs-rag
```

## Retrieval Guidance For Agents

Use the context layers deliberately:

- Use `mem0` for memory about prior sessions, preferences, and long-lived facts.
- Use `gitnexus` for code symbols, impact analysis, execution flows, and
  codebase structure.
- Use `hss-docs-rag` for repository documentation, especially:
  - `_bmad-output/project-context.md`
  - `docs/agent/guide.md`
  - `docs/engineering/architecture.md`
  - `docs/game/gdd.md`
  - `docs/game/narrative/design.md`
  - `docs/engineering/development-guide.md`

If retrieved documentation conflicts with implementation, update the owning
document and implementation in the same change. The RAG layer helps find the
contract faster; it does not replace the contract.
