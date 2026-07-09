# Consultant Routing

Suggest consultants from the goal and invite only useful roles.

## Suggestion Categories

- `core`: invite during setup because the role is likely to contribute repeatedly.
- `optional`: mention as available but do not spawn unless the user wants it or the need emerges.
- `create-subagent-suggested`: useful persona with no matching project subagent; can run via `worker`/`default`, but a dedicated subagent would be worthwhile.

## Common Consultant Patterns

- GDD/game design work: game designer facilitator; core product manager and master storyteller; optional UX designer, game architect, test architect.
- Narrative design: master storyteller facilitator; core game designer; optional UX designer and product manager.
- Architecture review: game architect facilitator; core game developer and test architect; optional product manager or UX designer when scope/user impact matters.
- Implementation: game developer facilitator; core explorer for code discovery when needed; optional game architect and test architect.
- PRD/scope planning: product manager facilitator; core game designer; optional architect, UX designer, technical writer.
- UX design: UX designer facilitator; core game designer and product manager; optional test architect for usability risks.
- Test planning: test architect facilitator; core game developer and architect; optional product manager for acceptance priorities.
- Documentation/handoff: technical writer facilitator; core owner of the subject area; optional test architect for validation docs.
- Brainstorming/research: analyst or brainstorming facilitator; optional domain-specific consultants based on topic.

## Context Routing

Give consultants only what they need:

- Game design: GDD, design decision logs, mechanics briefs.
- Product: PRD, product brief, epics, scope constraints.
- Architecture: architecture docs, technical decisions, relevant code boundaries.
- Developer: story/spec, target files, test commands, acceptance criteria.
- UX: UX specs, flows, screen notes, user constraints.
- Test architect: requirements, risks, acceptance criteria, existing tests/CI.
- Technical writer: source docs, intended audience, output format.
- Storyteller: narrative design docs, character/cast files, tone and scene constraints.

If the needed file is unknown, search likely project artifact locations before asking the user. If several plausible files exist, ask which should be authoritative.

## Delegation Prompt Shape

Each consultant prompt should include:

- "You are acting as `<persona>`; load/follow `<persona skill path>`."
- thread goal;
- exact task or question;
- relevant files or summarized context;
- expected output shape;
- instruction to stay available for follow-up and not close the working context.
