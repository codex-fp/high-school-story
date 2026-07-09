---
name: team
description: Set up and manage the current Codex thread as a facilitator-led agent team using BMAD/GDS personas, bmad-party-mode, and persistent consultant subagents. Use when the user wants to configure a thread team, choose or change a facilitator, suggest useful consultants, invite or remove BMAD/GDS persona consultants, run a selective roundtable, or keep subagent sessions alive across the thread.
---

# Team

Use this skill to turn the current thread into a managed working team:

- one facilitator persona leads the thread toward the user's goal;
- consultants are BMAD/GDS personas, usually backed by persistent subagents;
- `bmad-party-mode` supplies the conversational group mechanics;
- this skill adds goal-driven role selection, selective delegation, role-specific context, and team state.

## Required Activation

1. Load and follow `{project-root}/.agents/skills/bmad-party-mode/SKILL.md`.
2. Apply `references/party-mode-overlay.md` as binding additions to Party Mode.
3. Use `references/persona-catalog.md` to discover available BMAD/GDS persona skills and project-preferred subagents.
4. If the request is setup or role selection, load `references/facilitator-selection.md` and `references/consultant-routing.md`.
5. Maintain the roster format in `references/team-state.md` for the rest of the thread.

Treat `{project-root}` as the current project working directory. For this project, that is normally `C:\Users\fpiec\high-school-story`.

## Setup Workflow

If the user supplied no thread goal, ask for the goal first. Do not choose a team before the goal is clear enough to distinguish product, design, architecture, implementation, testing, writing, research, or narrative work.

If the user supplied a goal but no facilitator:

- suggest one facilitator persona from the BMAD/GDS catalog;
- give a short reason tied to the stated goal;
- if two roles are genuinely close, present the recommended default plus the alternative and ask the user to choose.

If the user supplied a goal but no consultants:

- suggest consultants based on the goal;
- mark each as `core`, `optional`, or `create-subagent-suggested`;
- explain in one sentence why each role helps;
- avoid inviting everyone by default.

After the setup is accepted or the default is obvious, spawn or reuse consultant subagents and record them in team state. Keep consultant agents open until the user removes them or the team is explicitly torn down.

## Role Source And Priority

Use the full local BMAD/GDS persona catalog, not only currently registered project subagents.

When a persona is useful:

1. Prefer a project-specific subagent for that persona when one exists in the current Codex harness.
2. If no dedicated subagent exists, use a built-in subagent:
   - `worker` for implementation, writing, synthesis, planning, and most substantial persona work;
   - `explorer` for narrow codebase discovery questions;
   - `default` for general consultation when no stronger built-in role fits.
3. Pass the relevant BMAD/GDS persona skill as an explicit context item or instruction, and tell the subagent to adopt it for the task.
4. If the persona is likely to be used repeatedly in this project, suggest creating a dedicated project subagent for it.

## Delegation Rules

Delegate only when a consultant's role can materially improve the answer or decision. Do not broadcast every question to every consultant.

Each delegation must include:

- the thread goal;
- the consultant's role and persona skill to load;
- the narrow question or task;
- role-relevant files or summaries only;
- any prior consultant output needed to respond coherently.

Use parallel delegation for independent first takes. Use sequential delegation when one consultant must react to another's actual argument.

## Team Changes

Support mid-thread changes naturally:

- add or invite a consultant;
- remove a consultant and close that subagent;
- change facilitator persona;
- show current roster;
- suggest additional consultants;
- suggest dedicated project subagents for frequently used personas.

Whenever the team changes, update the team state before continuing work.
