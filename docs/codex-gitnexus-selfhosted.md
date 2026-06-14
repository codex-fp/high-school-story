# Local GitNexus Integration For Codex

High School Story uses GitNexus as a local code knowledge graph for Codex. This
is separate from `mem0-mcp-selfhosted`:

- `mem0` stores user or workspace memory.
- GitNexus indexes the repository structure, symbols, edges, clusters, and flows
  so Codex can query code relationships through MCP.

This project keeps GitNexus local:

- MCP server: official `gitnexus` CLI
- MCP transport: stdio through `gitnexus mcp`
- Web UI bridge: official `gitnexus serve` local HTTP server
- Repository index: `/.gitnexus/` inside this workspace
- Global registry and MCP config: `~/.gitnexus/` and `~/.codex/config.toml`

## Prerequisites

- `nvm` with a Node runtime supported by GitNexus. Current verified runtime on
  this machine is `v24.14.1`.
- `npm` available under that Node runtime.

This machine also has system `node v20.20.2`, but GitNexus `1.6.7` requires
`node >=22`, so run GitNexus commands through `nvm`.

## Codex Registration

Install GitNexus under the `nvm` Node runtime and run the one-time setup:

```bash
source ~/.nvm/nvm.sh
nvm use 24
npm install -g gitnexus@1.6.7
gitnexus setup
```

`gitnexus setup` updates `~/.codex/config.toml` with a stable absolute-path MCP
command instead of using a cold-start `npx` invocation. On this machine the
Codex registration is:

```toml
[mcp_servers.gitnexus]
command = "/home/fpiechowski/.nvm/versions/node/v24.14.1/bin/gitnexus"
args = ["mcp"]
```

The same setup also configures OpenCode and installs global Codex skills under
`~/.agents/skills/`.

## Repository Indexing

Run indexing from the repository root:

```bash
source ~/.nvm/nvm.sh
nvm use 24
gitnexus analyze --skip-agents-md --skip-skills --force .
```

Use `--skip-agents-md` to preserve the repository-owned BMAD-native `AGENTS.md`.
Use `--skip-skills` to avoid generating repo-local `.claude/` skill files that
are not needed for Codex here.

GitNexus stores repository graph data in `/.gitnexus/`. That directory must stay
local and is ignored by git in this repository.

## Verification

Check the Codex registration:

```bash
codex mcp list
```

Check GitNexus indexing status:

```bash
source ~/.nvm/nvm.sh
nvm use 24
gitnexus status
gitnexus list
```

If Codex was already running before `gitnexus setup`, restart Codex before the
first live GitNexus MCP use.

## Web UI Bridge

GitNexus also supports the official browser UI without re-uploading or
re-indexing this repository. Start the local bridge from the repository root:

```bash
source ~/.nvm/nvm.sh
nvm use 24
gitnexus serve
```

This starts the local HTTP bridge on `http://127.0.0.1:4747` by default. The
official GitNexus Web UI can connect to that local server and browse the
existing `high-school-story` index directly from `/.gitnexus/` and
`~/.gitnexus/registry.json`.

Practical local workflow:

1. Ensure the repository index is already up to date with `gitnexus analyze`.
2. Start `gitnexus serve`.
3. Open the official browser UI and let it connect to the local server.
4. Stop `gitnexus serve` before reindexing, running GitNexus CLI graph queries,
   or depending on concurrent GitNexus MCP activity.

## Operational Constraint: Local Database Locking

Upstream GitNexus currently has a practical locking limitation when `gitnexus
serve` is active: concurrent GitNexus CLI commands that open the same local
database can fail with KuzuDB file-lock errors. Treat the Web UI bridge as a
dedicated foreground workflow rather than something that should run alongside
reindexing or heavy GitNexus CLI/MCP usage in the same repository.

For this repository, use the following rule:

- If you need the browser UI, run `gitnexus serve` and avoid parallel
  `gitnexus analyze`, `gitnexus status`, `gitnexus query`, `gitnexus context`,
  or other GitNexus-backed MCP operations until the serve process is stopped.
- If you need to refresh the index or rely on GitNexus MCP queries in Codex,
  stop the serve process first, then run the required command.

## Current Machine Status

Verified on 2026-06-14:

- `source ~/.nvm/nvm.sh && nvm use 24 >/dev/null && gitnexus --version`
  returns `1.6.7`.
- `gitnexus setup` configured Codex and OpenCode successfully.
- `~/.codex/config.toml` contains a `gitnexus` MCP entry pointing to the
  `nvm`-managed CLI path.
- `gitnexus analyze --skip-agents-md --force .` indexed this repository
  successfully in about `6.8s`.
- `gitnexus serve --help` exposes the official Web UI bridge command with
  default port `4747` and default host `127.0.0.1`.
- `gitnexus status` reports the repository as up to date at commit `c36a42f`.
- `gitnexus list` shows `high-school-story` with `123` indexed files, `1541`
  symbols, `1721` edges, `11` clusters, and `4` processes.

## Notes

- GitNexus reported that the FTS extension was unavailable during indexing and
  continued without FTS-only features. The core repository graph still indexed
  successfully.
- GitNexus skipped `assets/maps/town.tmx` because it exceeded the default
  `512KB` large-file limit. Raise `GITNEXUS_MAX_FILE_SIZE` if that file needs to
  participate in the graph later.
- The official browser UI is best treated as an on-demand exploration mode for
  this local repository setup, not as a permanently running sidecar next to
  GitNexus CLI/MCP activity.
