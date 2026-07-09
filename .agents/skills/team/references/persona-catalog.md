# Persona Catalog

Use both project-specific subagents and local BMAD/GDS skills.

## Discovery

Discover persona skills from:

- `{project-root}/.agents/skills/bmad-agent-*`
- `{project-root}/.agents/skills/bmad-cis-agent-*`
- `{project-root}/.agents/skills/gds-agent-*`

Also consider other BMAD/GDS skills when the task is a workflow rather than a persona, but do not treat workflow skills as standing consultants unless their `SKILL.md` clearly defines an agent persona.

Project-specific subagents, when exposed by the Codex harness, are preferred runtime wrappers for matching personas. If the filesystem folder `{project-root}/.agents/subagents` contains definitions in the future, use it as extra metadata, but do not require it to be populated.

## Runtime Priority

For a useful persona:

1. Use a matching project subagent if available.
2. Otherwise use `worker`, `explorer`, or `default` and manually load the persona skill in the subagent prompt.
3. Suggest creating a dedicated subagent if that persona is likely to recur often.

## Known Project Subagent Roles

These roles may be available in this Codex project and should be preferred when they match the needed persona:

- `product-manager`
- `game-designer`
- `game-architect`
- `game-developer`
- `technical-writer`
- `test-architect`
- `ux-designer`
- `master-storyteller`

Technical fallbacks:

- `explorer` for focused codebase discovery;
- `worker` for bounded production work and persona-backed execution;
- `default` for general consultation.

## Matching Guidance

- `product-manager`: BMAD PM/product persona, PRD, scope, priorities, stakeholder tradeoffs.
- `game-designer`: GDS game designer, GDD, mechanics, loops, player fantasy.
- `game-architect`: GDS game architect, engine, runtime systems, architecture.
- `game-developer`: GDS/BMAD developer, implementation, code review, QA execution.
- `technical-writer`: BMAD/GDS tech writer, docs, handoffs, knowledge curation.
- `test-architect`: BMAD TEA/test architect, risks, ATDD, automation, quality gates.
- `ux-designer`: BMAD/GDS UX designer, flows, UI, interaction design.
- `master-storyteller`: BMAD CIS storyteller, narrative, scenes, emotional arcs.

When no direct project role exists, choose the nearest BMAD/GDS persona skill and pair it with a built-in subagent.
