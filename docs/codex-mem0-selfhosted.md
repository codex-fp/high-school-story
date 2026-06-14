# Local mem0-mcp-selfhosted Integration For Codex

High School Story uses `mem0-mcp-selfhosted` as the local memory MCP server for
Codex. This keeps the memory layer out of Mem0 Cloud:

- MCP server: `elvismdev/mem0-mcp-selfhosted`
- MCP transport: stdio through `uvx`
- Memory engine: `mem0ai` OSS
- Vector store: local Qdrant on `http://localhost:6333`
- LLM and embeddings: local Ollama on `http://localhost:11434`
- Graph memory: disabled by default

## Prerequisites

Install `uv`/`uvx`:

```bash
curl -LsSf https://astral.sh/uv/install.sh -o /tmp/uv-install.sh
sh /tmp/uv-install.sh
```

Run local services directly:

```bash
ollama serve
ollama pull qwen3:14b
ollama pull bge-m3
qdrant
```

`mem0-mcp-selfhosted` expects Qdrant at `localhost:6333` and Ollama at
`localhost:11434` unless the MCP environment overrides those URLs.

Docker is also valid. In this WSL distro, the plain `docker` command returns a
Docker Desktop WSL integration error, but Docker Desktop is reachable through the
Windows executable:

```bash
"/mnt/c/Program Files/Docker/Docker/resources/bin/docker.exe" run -d \
  --name hss-qdrant \
  -p 6333:6333 \
  -v hss-qdrant-storage:/qdrant/storage \
  qdrant/qdrant:latest

"/mnt/c/Program Files/Docker/Docker/resources/bin/docker.exe" run -d \
  --name hss-ollama \
  -p 11434:11434 \
  -v hss-ollama:/root/.ollama \
  ollama/ollama:latest
```

After the Ollama container is running, pull the required local models:

```bash
"/mnt/c/Program Files/Docker/Docker/resources/bin/docker.exe" exec hss-ollama ollama pull qwen3:14b
"/mnt/c/Program Files/Docker/Docker/resources/bin/docker.exe" exec hss-ollama ollama pull bge-m3
```

## Codex Registration

Register the MCP server:

```bash
codex mcp add hss-mem0 \
  --env MEM0_PROVIDER=ollama \
  --env MEM0_LLM_PROVIDER=ollama \
  --env MEM0_LLM_MODEL=qwen3:14b \
  --env MEM0_EMBED_PROVIDER=ollama \
  --env MEM0_EMBED_MODEL=bge-m3 \
  --env MEM0_EMBED_DIMS=1024 \
  --env MEM0_USER_ID=filip \
  --env MEM0_COLLECTION=high_school_story_codex \
  --env MEM0_ENABLE_GRAPH=false \
  --env MEM0_HISTORY_DB_PATH=/home/fpiechowski/high-school-story/.mem0/history.db \
  -- uvx --from git+https://github.com/elvismdev/mem0-mcp-selfhosted.git mem0-mcp-selfhosted
```

Codex stores the registration in `~/.codex/config.toml`. On this machine that
file is symlinked to
`/mnt/c/Users/fpiec/IdeaProjects/codex-fp/codex-home/config.toml`.

## Verification

Check the Codex registration:

```bash
codex mcp list
codex mcp get hss-mem0
```

Check the external services:

```bash
curl http://localhost:6333/healthz
curl http://localhost:11434/api/tags
```

Once both services are running, restart Codex and use the `hss-mem0` MCP tools
to add and search a small test memory.

Current machine status on 2026-06-14:

- `uvx --from git+https://github.com/elvismdev/mem0-mcp-selfhosted.git python -c 'import mem0_mcp_selfhosted; print(mem0_mcp_selfhosted.__version__)'`
  returns `0.3.2`.
- `codex mcp list` shows `hss-mem0` enabled as a stdio server.
- Qdrant is running in Docker as `hss-qdrant`; `curl http://localhost:6333/healthz`
  returns `healthz check passed`.
- Ollama is running in Docker as `hss-ollama`; `curl http://localhost:11434/api/tags`
  lists `qwen3:14b` and `bge-m3:latest`.
- The current Codex session does not dynamically load MCP servers added after
  startup. Restart Codex before the first live `hss-mem0` MCP tool call.

## Notes

`mem0-mcp-selfhosted` also supports Neo4j-backed graph memory, but this project
keeps `MEM0_ENABLE_GRAPH=false` initially to avoid adding another local service
and more LLM calls before the vector memory path is stable.
