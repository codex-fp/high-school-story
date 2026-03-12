# Dormitory Activity Matrix

## Design Goal

The dormitory should be the player's most reliable home base, but not an all-purpose best solution.

Its design job is to provide:

- clear morning setup choices
- low-pressure evening closure choices
- dependable recovery and preparation
- a limited but meaningful study fallback

## Assumptions

- the player starts standard weekdays in the dormitory at `06:00`
- the player returns to the dormitory by `21:00`
- the morning slot should be moderate in size: usually one bigger action or two small actions
- the `21:00-22:00` slot allows normal study, but evening condition usually makes it less optimal than earlier study windows

## Core Design Rule

The dormitory should answer this question:

How do I set up the day I am about to have, or recover from the day I just had?

It should not answer:

- where do I do everything important forever
- what is always the safest optimal choice

## Dormitory Time Identity

| Window | Emotional role | Gameplay role |
|---|---|---|
| Morning | preparation under light pressure | shape starting condition and priorities |
| Evening | decompression with one last decision | recover, prepare, or squeeze out one final action |

## Morning Window Design

The morning should feel constrained but not trivial.

Chosen direction:

- a normal morning usually supports one substantial action or two small actions
- the player should feel real agency, but also feel departure pressure

This means the morning is not just flavor, but it is also not a second free-time block.

## Morning Activity Matrix

| Activity | Category | Typical duration | Primary effect | Secondary effect | Notes |
|---|---|---|---|---|---|
| Wash up | utility | 15 min | small mood lift | minor readiness flavor | reliable low-impact opener |
| Simple breakfast | recovery | 15 min | small energy support | slight stress protection | basic stabilizer |
| Short rest | recovery | 15 min | small energy recovery | minor stress relief | useful after poor previous day |
| Review notes | academic | 15-30 min | small exam or subject prep | light confidence boost | efficient when done consistently |
| Focused study | academic | 30 min | meaningful academic progress | raises pressure before school if overused | valid but usually one-action morning |
| Check schedule / prep item | utility | 15 min | planning clarity | supports upcoming efficiency | best when future systems use items or appointments |
| Brief dorm interaction | social | 15 min | tiny relationship maintenance | small mood effect | situational, not guaranteed daily |

## Morning Design Rules

- morning actions should be short and legible
- most mornings should end with the player still wanting one more action they cannot comfortably fit
- a 30-minute morning study block should feel meaningful, but it should usually cost the chance for an additional meaningful action
- low-condition players should be able to stabilize a rough morning with simple choices instead of being forced into failure states

## Recommended Morning Patterns

Healthy examples:

- `wash up` + `breakfast`
- `short rest` + `review notes`
- `focused study`
- `breakfast` + `brief dorm interaction`

These patterns reinforce the intended moderate morning slot.

## Evening Window Design

The evening should feel like closure with agency, not dead time.

Chosen direction:

- evening supports recovery first
- evening still allows normal study and planning
- evening choices should often be valid but imperfect because of accumulated condition cost

This keeps the game from becoming overly prescriptive.

## Evening Activity Matrix

| Activity | Category | Typical duration | Primary effect | Secondary effect | Notes |
|---|---|---|---|---|---|
| Evening wind-down | recovery | 15-30 min | stress reduction | slight mood improvement | default low-pressure closer |
| Short rest | recovery | 15-30 min | modest energy support | slight stress relief | good after demanding days |
| Focused study | academic | 30-60 min | academic catch-up | reduced efficiency under low energy | allowed by design, usually suboptimal |
| Light review | academic | 15-30 min | small prep gain | lower strain than full study | often smarter than hard studying at night |
| Prepare for tomorrow | utility | 15 min | planning clarity | slight efficiency support next day | small but dependable value |
| Dorm social beat | social | 15-30 min | mood lift or relationship maintenance | decompression | situational and character-dependent |
| Quiet solo leisure | recovery | 15-30 min | mood recovery | minor stress relief | cozy fallback option |

## Evening Design Rules

- the player must retain agency to make a bad-but-understandable productive choice
- evening study should remain possible, but condition systems should naturally discourage it as the best default
- evening recovery should be attractive because it improves tomorrow rather than because the game hard-locks other choices
- the final hour should usually offer closure, not escalation into large new commitments

## Reliability Model

The dormitory should contain both always-available actions and situational actions.

### Always available

- wash up
- simple breakfast
- short rest
- evening wind-down
- light review
- focused study
- prepare for tomorrow

### Situational

- dorm social beat
- brief dorm interaction
- special recovery or story moments

This balance makes the dormitory dependable without making it static.

## Interaction With Condition Systems

- morning recovery actions are most valuable when the player barely overextended the previous day
- evening recovery actions are most valuable when stress accumulated gradually across the day
- evening study becomes weaker mainly through low energy and high stress, not because the game arbitrarily forbids it
- strong condition management across several days can make evening study unusually effective, which rewards disciplined play without requiring it

## Anti-Optimization Rules

To stop the dormitory from becoming the universal best answer:

- dorm study should be solid but not the best possible academic play compared with consistent lesson performance plus timely study
- dorm social actions should usually be lighter than dedicated outside social venue scenes
- dorm recovery should be dependable, but deep emotional payoff should often come from weekends, story scenes, or park outings

## MVP Recommendation

For MVP, the dormitory should fully support:

- 4 to 5 reliable morning actions
- 5 to 6 reliable evening actions
- a mix of `recovery`, `academic`, `utility`, and light `social` play
- enough variation that the same exact morning or evening routine is not always optimal

## Balancing Levers

- morning departure threshold
- energy gain from breakfast and short rest
- stress relief from evening wind-down
- study efficiency penalty during late evening
- frequency of situational dorm social beats
- next-day benefit from prep-oriented actions

## Risks And Edge Cases

- if morning is too generous, school departure pressure fades
- if morning is too tight, the feature becomes fake choice
- if evening study is too efficient, recovery loses value
- if evening recovery is too strong, players ignore daytime condition management
- if dorm social scenes are too rewarding, the park and school social spaces lose purpose

## Recommended Next Step

Next, define the exact relationship opportunity surfacing model, so invitations, hangouts, and character beats can be scheduled cleanly against the calendar and location systems.
