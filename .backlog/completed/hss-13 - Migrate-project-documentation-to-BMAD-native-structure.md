---
id: HSS-13
title: Migrate project documentation to BMAD-native structure
status: Done
assignee: []
created_date: '2026-06-09 09:44'
updated_date: '2026-06-09 09:58'
labels:
  - documentation
  - bmad
  - context
milestone: Documentation Alignment
dependencies:
  - HSS-12
references:
  - README.md
  - AGENTS.md
  - ARCHITECTURE.md
  - DESIGN.md
  - STYLEGUIDE.md
  - docs/
  - _bmad-output/project-context.md
  - docs/index.md
  - docs/project-overview.md
  - docs/architecture.md
  - docs/game-design.md
  - docs/development-guide.md
  - docs/source-tree-analysis.md
  - docs/component-inventory.md
  - docs/narrative-content.md
  - docs/ai-agent-guide.md
documentation:
  - docs/index.md
  - docs/project-overview.md
  - docs/architecture.md
  - docs/game-design.md
  - docs/development-guide.md
  - docs/source-tree-analysis.md
  - docs/component-inventory.md
  - docs/narrative-content.md
  - docs/ai-agent-guide.md
modified_files:
  - README.md
  - AGENTS.md
  - ARCHITECTURE.md
  - DESIGN.md
  - STYLEGUIDE.md
  - docs/index.md
  - docs/project-overview.md
  - docs/architecture.md
  - docs/game-design.md
  - docs/development-guide.md
  - docs/source-tree-analysis.md
  - docs/component-inventory.md
  - docs/narrative-content.md
  - docs/ai-agent-guide.md
  - docs/design/README.md
  - docs/narrative/README.md
  - docs/narrative/intro/arrival_to_lakeview.md
  - _bmad-output/project-context.md
  - >-
    .backlog/tasks/hss-3 -
    Define-first-classmate-arc-constraints-and-cast-roles.md
  - >-
    .backlog/tasks/hss-13 -
    Migrate-project-documentation-to-BMAD-native-structure.md
priority: high
ordinal: 9100
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Rewrite project documentation so README.md, AGENTS.md, ARCHITECTURE.md, DESIGN.md, STYLEGUIDE.md, and docs/ are BMAD-native and can replace the previous AI-agent documentation set. Use the existing generated project context and legacy docs as source material.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 README.md is fully rewritten as a BMAD-native project entrypoint
- [x] #2 Root guidance files are rewritten so they can replace previous AI-agent docs
- [x] #3 docs/ contains BMAD-native project documentation that preserves critical architecture design development and narrative context
- [x] #4 Generated documentation references HSS task traceability and current repository boundaries
- [x] #5 Verification evidence is recorded
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence for HSS-13: ran `git fetch origin`; read GDS document-project instructions and project context; scanned current Kotlin, launcher, asset, and doc layout; rewrote BMAD-native docs; ran `git diff --check` with no output; validated local Markdown links in 15 docs with all links existing; grepped for retired canonical paths and found only historical backlog references after updating active HSS-3.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Migrated High School Story documentation to a BMAD-native structure for HSS-13. `README.md` is fully rewritten as the project entrypoint. Root `AGENTS.md`, `ARCHITECTURE.md`, `DESIGN.md`, and `STYLEGUIDE.md` are now compatibility entrypoints pointing to canonical `docs/` owners. Added canonical docs for index, project overview, architecture, game design, development guide, source tree, component inventory, narrative content, and AI agent rules. Removed the old tracked `docs/design/README.md`, `docs/narrative/README.md`, and `docs/narrative/intro/arrival_to_lakeview.md` content by consolidating it into the new docs. Updated `_bmad-output/project-context.md` and active HSS-3 references to the new documentation model. Verification: `git fetch origin`, source/doc scan, `git diff --check`, local Markdown link validation across 15 docs, stale-reference grep. Gradle was not run because this was documentation-only with no Kotlin, Gradle, asset, launcher, or runtime code changes. Residual risks: historical backlog records still mention old paths by design; unrelated workspace changes remain in `opencode.json`, `.opencode/`, `.agents/`, `_bmad/`, `_bmad-output/`, and `docs/.obsidian/*`.
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
