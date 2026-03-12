# Daily Rhythm And Time System

## Design Goal

The time system should create constant but readable pressure. It should make planning feel important without forcing perfect play.

The target tone is lightly demanding: enough structure to create tradeoffs, but not so much friction that everyday play feels stressful.

## Assumptions

- the base time unit remains 15 minutes
- the player begins every standard day in the dormitory at 06:00
- the player must return to the dormitory by 21:00 and sleep at 22:00
- school attendance is the default required daytime structure on weekdays
- rule-breaking may exist in limited local situations, but truancy is not a supported core loop

## Proposed System

The day is divided into readable phases with different decision density and emotional tone.

| Phase | Time | Primary feeling | Main function |
|---|---|---|---|
| Morning prep | 06:00 to first departure threshold | constrained setup | preparation and risk assessment |
| School block | timetable driven | structured pressure | grades, relationship moments, condition management |
| Afternoon freedom | after classes to safe-return threshold | agency and opportunity | social play, work, study, venues, story progress |
| Evening closure | 21:00 to 22:00 | winding down | recovery and next-day preparation |

## Core Rules

### Time visibility

- the current time is always visible
- every activity shows duration before confirmation
- travel shows destination, duration, and resulting arrival time
- schedule boundaries are previewed before the player commits

### Start validation

The game should validate the next action before it starts.

The player cannot begin an activity if it would:

- make them miss mandatory lesson attendance without an explicit rule-break choice
- make them unable to return to the dormitory by 21:00
- require a location or resource they do not currently have

This protects clarity and prevents accidental schedule traps.

For this project, missing class should remain exceptional rather than attractive. The system should not frame wagary as an efficient or glamorous default strategy.

For a lightly demanding game, validation should usually protect the player from unintentional self-sabotage rather than testing whether they can calculate every edge case manually.

### Late and risky actions

Not all bad planning should be blocked. Design should distinguish between impossible and risky.

- impossible action: blocked before confirmation
- risky action: allowed, but shown with a warning and likely consequence

Example:

- studying for 30 minutes before school may be allowed if arrival is still possible
- starting a 90-minute hangout too far from the dorm at 20:00 should be blocked

## Activity Duration Bands

To keep planning readable, most activities should fit one of a few standard duration bands:

- 15 minutes: micro actions, prep, quick recovery, short conversations
- 30 minutes: common focused actions
- 45 minutes: standard lesson length, extended conversations, venue use
- 60 to 120 minutes: major social plans, work, study sessions, story events

Standard bands make the clock easier to reason about and simplify balancing.

## Weekday Rhythm

### Morning

Morning should offer small but meaningful setup choices, not full freedom.

Design decision:

- the morning slot is moderate in size
- a normal morning should usually fit one substantial action or two small actions before departure pressure becomes meaningful

Recommended morning activity roles:

- self-maintenance: wash up, eat, short rest
- preparation: review notes, pack an item, check schedule
- micro-social: brief dorm interaction when available

Morning should answer the question: what state do I bring into the school day?

### School hours

School is the backbone of the weekday loop.

Between lessons, the player may get short interstitial windows for:

- hallway interaction
- teacher follow-up
- vending or snack purchase
- quick recovery action

These short windows are useful because they prevent school from feeling like a single uninterrupted block.

### Afternoon and early evening

This is the main agency window.

The player chooses between:

- academic catch-up
- social progression
- money generation
- mood recovery
- event or story advancement

The important design rule is that no single afternoon should comfortably fit all major goals.

However, a normal afternoon should usually fit one major goal and one small supporting action, so the player still feels productive even when making tradeoffs.

### Evening

The final hour should not be dead time. It should be a low-intensity, low-travel closure layer.

Recommended evening activity roles:

- light recovery
- next-day prep
- dorm social beat
- optional academic catch-up
- journaling or reflection feature if desired later

Design decision:

- the player may still choose normal study in the `21:00-22:00` window
- this is intended as a valid but usually suboptimal choice because the player will often already be low on energy
- the system should preserve agency here instead of hard-pushing the player into recovery only

This creates a healthy tradeoff: the player can squeeze out one more productive action, but usually at weaker efficiency than an earlier study block.

## Weekend Rhythm

Weekends should feel different in structure, not just longer.

Weekend design goals:

- reduce mandatory structure
- allow longer activities and story steps
- offer stronger recovery and social payoff
- create anticipation for the next school week

Recommended weekend differences:

- no standard lessons
- more actions in the 60 to 180 minute band
- higher availability for story arc progression
- better efficiency for recovery and relationship-building activities

## Travel Pressure Model

Travel is important because it converts map position into strategic meaning.

Travel should do three things:

1. make location choice matter before the next schedule boundary
2. make after-school plans feel physically grounded
3. create opportunity cost without becoming tedious

Recommended rules:

- common routes should be predictable after a few uses
- travel duration should usually be stable, not noisy
- bus travel should be the efficient default, not a simulation burden in MVP
- travel should never become a long menu chore repeated dozens of times without variation

## Recovery Philosophy

Recovery should be necessary, but not a full wasted day unless the player has neglected condition badly.

Recommended recovery pattern:

- small recovery actions give immediate but limited relief
- bigger recovery actions consume prime time but offer stronger stabilization
- weekends are the best opportunity for deep recovery

In this pressure profile, the player should usually be able to stabilize a rough week with one or two sensible recovery decisions rather than needing a full reset weekend every time.

This supports a meaningful exhaustion spiral without creating a death spiral.

## Balancing Levers

- activity durations
- travel durations between nodes
- energy and stress change rates
- effectiveness penalties at low condition thresholds
- number and timing of short school interstitial windows
- recovery efficiency by activity and day type

## Risks And Edge Cases

- if too many actions are blocked, the player feels railroaded
- if too many actions are allowed, schedule planning loses meaning
- if travel times are too small, map position stops mattering
- if travel times are too large, the game feels slow and repetitive
- if recovery is too efficient, condition systems stop creating tension

## Recommended Next Step

Use this time framework as the basis for the stat model and the lesson system, because both need clear assumptions about pressure, recovery, and opportunity cost.
