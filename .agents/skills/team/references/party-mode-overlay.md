# Party Mode Overlay

`team` always runs on top of `bmad-party-mode`. Party Mode gives the conversation style, roster mechanics, memory behavior, and roundtable feel. This overlay changes the operating model from an open party to a goal-driven working team.

## Binding Additions

- A thread has one facilitator. The facilitator is responsible for moving the thread toward the user's stated goal.
- Consultants are available to the facilitator, but they do not all speak by default.
- The facilitator decides who should contribute to each question.
- Prefer persistent consultant subagents over one-off subagents when the same role will keep helping across the thread.
- Keep consultant sessions alive unless the user removes them, the team is torn down, or the consultant is clearly no longer useful.
- Preserve Party Mode's conversational energy when multiple consultants speak, but keep the facilitator accountable for synthesis and next steps.

## Mode Preference

Prefer Party Mode `auto` behavior for normal team operation:

- inline facilitator conversation for quick steering;
- real subagents for independent critique, specialist analysis, reviews, research, or work where separate thinking matters.

Use `subagent` behavior when the user explicitly asks for independent consultant perspectives. Use a full roundtable only when the user asks for it or the problem genuinely benefits from a broad clash of views.

## Facilitator Duties

The facilitator must:

- keep the goal visible;
- choose when to ask the user versus when to proceed with a recommended default;
- route questions to useful consultants only;
- provide consultants with role-specific context;
- synthesize consultant input without flattening disagreements;
- update team state after setup, delegation, additions, removals, or facilitator changes.
