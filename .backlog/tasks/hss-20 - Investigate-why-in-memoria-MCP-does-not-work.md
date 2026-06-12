---
id: HSS-20
title: Investigate why in-memoria MCP does not work
status: Done
assignee: []
created_date: '2026-06-12 11:24'
updated_date: '2026-06-12 11:26'
labels:
  - investigation
  - mcp
  - opencode
milestone: m-0
dependencies: []
references:
  - opencode.json
  - in-memoria.db
  - /home/fpiechowski/.config/opencode/opencode.jsonc
  - /home/fpiechowski/.config/opencode/opencode-mem.jsonc
documentation:
  - docs/ai-agent-guide.md
priority: high
ordinal: 18000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Investigate the local OpenCode/MCP setup to determine why the in-memoria MCP is not working in this repository environment. Capture the actual configuration, installation state, runtime errors, and likely fix path.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Identify where in-memoria is or is not configured
- [x] #2 Determine whether the in-memoria executable or server is installed and runnable
- [x] #3 Capture the concrete failure mode or likely root cause
- [x] #4 Document verification evidence in the task
<!-- AC:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Investigated the failing `in-memoria` MCP and reproduced the failure locally. The MCP is enabled in global OpenCode config, not the repo-local config. Startup reaches the project database `in-memoria.db` but aborts during SQLite initialization because `better-sqlite3@12.10.0` has no native binding for the current Node `18.19.1` runtime and officially supports Node `20.x` and newer. Residual risk: I did not switch the machine runtime or reinstall the package under Node 20 in this turn, so the diagnosis is verified but the environment fix remains to be applied.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 Specification or owning documentation is updated when behavior changes
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
