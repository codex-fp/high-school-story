---
id: HSS-27
title: HSS-18 Add OpenCode primary agents for BMAD and GDS personas
status: Done
assignee: []
created_date: '2026-06-12 21:47'
updated_date: '2026-06-12 21:49'
labels:
  - opencode
  - bmad
  - agents
milestone: Developer Experience
dependencies: []
references:
  - opencode.json
  - .agents/skills/bmad-agent-analyst/SKILL.md
  - .agents/skills/bmad-agent-architect/SKILL.md
  - .agents/skills/bmad-agent-builder/SKILL.md
  - .agents/skills/bmad-agent-dev/SKILL.md
  - .agents/skills/bmad-agent-pm/SKILL.md
  - .agents/skills/bmad-agent-tech-writer/SKILL.md
  - .agents/skills/bmad-agent-ux-designer/SKILL.md
  - .agents/skills/bmad-tea/SKILL.md
  - .agents/skills/bmad-cis-agent-brainstorming-coach/SKILL.md
  - .agents/skills/bmad-cis-agent-creative-problem-solver/SKILL.md
  - .agents/skills/bmad-cis-agent-design-thinking-coach/SKILL.md
  - .agents/skills/bmad-cis-agent-innovation-strategist/SKILL.md
  - .agents/skills/bmad-cis-agent-presentation-master/SKILL.md
  - .agents/skills/bmad-cis-agent-storyteller/SKILL.md
  - .agents/skills/gds-agent-game-architect/SKILL.md
  - .agents/skills/gds-agent-game-designer/SKILL.md
  - .agents/skills/gds-agent-game-dev/SKILL.md
  - .agents/skills/gds-agent-game-solo-dev/SKILL.md
  - .agents/skills/gds-agent-tech-writer/SKILL.md
documentation:
  - AGENTS.md
  - _bmad-output/project-context.md
modified_files:
  - opencode.json
  - .opencode/agents/brainstorming-specialist.md
  - .opencode/agents/business-analyst.md
  - .opencode/agents/design-thinking-coach.md
  - .opencode/agents/game-architect.md
  - .opencode/agents/game-designer.md
  - .opencode/agents/game-developer.md
  - .opencode/agents/game-solo-dev.md
  - .opencode/agents/game-technical-writer.md
  - .opencode/agents/innovation-strategist.md
  - .opencode/agents/presentation-expert.md
  - .opencode/agents/problem-solver.md
  - .opencode/agents/product-manager.md
  - .opencode/agents/senior-software-engineer.md
  - .opencode/agents/storyteller.md
  - .opencode/agents/system-architect.md
  - .opencode/agents/technical-writer.md
  - .opencode/agents/test-architect.md
  - .opencode/agents/ux-designer.md
priority: medium
ordinal: 1800
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Create project-level OpenCode primary agents that expose BMAD and BMAD GDS persona skills through native custom primary agents named by role.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Project contains primary OpenCode agents for BMAD persona skills
- [x] #2 Project contains primary OpenCode agents for BMAD GDS persona skills
- [x] #3 Each custom agent is named by role and activates the matching BMAD or GDS persona skill
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence:\n- Read `opencode.json` after editing and confirmed valid JSON shape with `$schema`, `agent.plan.disable`, `skills.paths`, and existing `mcp` preserved.\n- Listed `.opencode/agents/` and confirmed 18 role-named primary agents were created.\n- Spot-checked representative agent files for BMAD (`business-analyst.md`) and GDS (`game-developer.md`) to verify they use the intended `@skills/...` bindings.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added project-local OpenCode primary agents for BMAD, BMAD CIS, and BMAD GDS persona skills. Preserved role-based agent names in `.opencode/agents/`, removed the unnecessary Agent Builder primary agent, switched the agents to direct `@skills/...` bindings, and configured `opencode.json` to scan `.agents/skills` while disabling the built-in `plan` agent for this project.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 Specification or owning documentation is updated when behavior changes
- [ ] #2 Implementation matches the accepted task scope
- [ ] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [ ] #5 Verification evidence records commands run
- [ ] #6 Verification evidence records scenario steps
- [ ] #7 Verification evidence records observed results
- [ ] #8 Verification evidence records relevant logs or artifact notes
- [ ] #9 Self-review is completed before handoff
- [ ] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
