# Team State

Maintain a compact team state in the thread after setup and whenever it changes.

## Format

```markdown
**Team State**
- Goal: <thread goal>
- Facilitator: <persona / skill path / reason>
- Mode: <party mode and team overlay behavior>
- Consultants:
  - <role>: <agent id or runtime>, <persona skill>, <status>, <context assigned>
- Optional bench:
  - <role>: <why it might help later>
- Delegation rule: <one sentence on when facilitator will consult whom>
```

## Update Triggers

Update team state after:

- initial setup;
- facilitator change;
- consultant added, removed, or replaced;
- a built-in subagent is used for a persona without a dedicated project subagent;
- the user asks to show the roster;
- a consultant becomes irrelevant or a new consultant becomes clearly useful.

## State Discipline

Keep state concise. Do not paste long histories. Record enough to let the facilitator know who is available, what context they already received, and when to consult them.
