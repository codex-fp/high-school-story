# Relationship Opportunity Surfacing

## Design Goal

The game should present social opportunities in a way that feels inviting, readable, and alive.

Players should feel:

- there are interesting people in their school life
- they cannot do every social thing at once
- choosing one opportunity over another is meaningful
- missed opportunities feel like life tradeoffs, not UI punishment

## Assumptions

- the relationship system already uses familiarity, bond direction, and arc progression
- social opportunities should connect to time, locations, condition, and calendar timing
- the target event cadence is moderate
- the game should usually show `1-2` active social opportunities at once, not flood the player with parallel prompts

## Proposed System

Social opportunities should be surfaced through three layers.

| Layer | Purpose | Typical intensity |
|---|---|---|
| Ambient signals | remind the player that characters are present and available | low |
| Active opportunities | present a concrete possible social action | medium |
| Milestone opportunities | surface a more important relationship or story step | high |

This structure keeps the world socially alive without turning the interface into an invitation board.

## Core Design Rule

The system should usually present a small, understandable choice set.

Chosen direction:

- most of the time, the player should see `1-2` active social opportunities
- a third opportunity may exist behind the scenes or surface only in special high-density moments
- the game should avoid regularly presenting 3 equally urgent social prompts at once

## Opportunity Types

### Ambient signals

Examples:

- a classmate lingers after class
- someone greets the player in the hallway
- a message hints that a person is free this weekend
- a dorm interaction suggests future closeness

Purpose:

- build social texture
- foreshadow stronger events
- help the cast feel present even when no large scene is active

### Active opportunities

Examples:

- meet after school in the park
- sit together at lunch
- walk back from school together
- check in on someone who seemed upset

Purpose:

- create real scheduling tradeoffs
- move familiarity, trust, or interest meaningfully
- feed relationship progression without requiring a milestone scene every time

### Milestone opportunities

Examples:

- a vulnerable one-on-one conversation
- an invitation that changes the route of a relationship
- a key support moment in a classmate arc
- a romance-signaling hangout

Purpose:

- mark progression visibly
- create emotional memory
- reward sustained attention to a character

## Surfacing Inputs

An opportunity should be surfaced when enough conditions align.

Recommended inputs:

- relationship state with that character
- recent interaction history
- current semester timing
- time of day and day type
- relevant location access
- player condition if the event depends on mood or energy
- current number of already surfaced opportunities

This keeps opportunities from feeling random or purely scripted.

## Opportunity Slots Model

To preserve clarity, use a soft slot model.

Recommended default:

- `0-1` meaningful weekday active opportunity at a time is normal
- `1-2` active opportunities total is the usual upper bound
- weekends may briefly surface `2` strong options more often than weekdays

This supports choice without overload.

## Priority Rules

When multiple possible opportunities exist, the game should rank them.

Recommended priority order:

1. milestone opportunities with timing sensitivity
2. active opportunities tied to recent player investment
3. weekly beat opportunities that help keep the cast alive
4. ambient signals and low-stakes maintenance opportunities

The player should usually see the most relevant social choices, not the full hidden candidate list.

## Recency And Cooldown Rules

To avoid spam and mechanical flatness:

- the same character should not surface a major opportunity again immediately after a major scene
- low-stakes social beats can recur more often than milestone scenes
- if one character has recently dominated the social layer, the system should slightly favor surfacing others unless the player is clearly committing to that arc

This maintains cast variety while respecting player intent.

## Commitment Sensitivity

Because romance can be explored with multiple classmates before commitment, surfacing should react to the player's current social posture.

Recommended behavior:

- early and mid exploration can surface opportunities from multiple classmates
- once one route becomes clearly favored, the system should gradually emphasize that route more often
- after explicit romantic commitment, surfacing for other romance-forward opportunities should soften or change tone rather than appearing unchanged

## Expiration And Return Rules

Opportunities should not all behave the same way.

Recommended model:

- some opportunities expire the same day
- some remain open through the weekend or several days
- some missed opportunities should return later in a weaker or altered form
- milestone opportunities should usually not vanish instantly unless the urgency is part of the fiction

This helps missed content feel human rather than punitive.

## Player-Facing Presentation

The game should surface social opportunities through natural-feeling signals.

Recommended channels:

- dialogue prompt after class
- small message or note-style notification
- visible character availability in place-based interaction
- calendar hint for planned weekend meetup

Good presentation language:

- `Alicja mentioned she might be at the park after school.`
- `You could check on Bartek today.`
- `This feels like an important moment.`

Avoid language that sounds too mechanical, such as explicit quest spam.

## Relationship Opportunity Patterns By Time

### Weekday school hours

- mostly ambient signals and short active opportunities
- strong for hallway, lunch, and post-class moments

### After school

- strongest space for planned hangouts and medium-weight scenes
- best place for 1-2 simultaneous meaningful choices

### Evening dormitory

- better for soft signals, maintenance, and small social beats than for major outside invitations

### Weekends

- strongest for milestone opportunities, longer hangouts, and romance-forward scenes

## MVP Recommendation

For the first playable semester:

- surface social opportunities using a clear `1-2 at a time` rule of thumb
- use school to seed most weekday chances
- use park and weekends for the strongest visible hangouts
- keep at least one classmate socially active enough that the player regularly feels invited into the social layer
- ensure missed opportunities sometimes roll into follow-up beats instead of disappearing forever

## Balancing Levers

- maximum active opportunities shown at once
- cooldown duration between scenes for the same character
- weighting for recently prioritized characters
- expiration windows by opportunity type
- weekend boost for social event surfacing
- minimum interval between milestone scenes

## Risks And Edge Cases

- if only one opportunity appears too often, the social layer feels narrow
- if two opportunities are always equally valuable, the choice becomes artificial
- if too many opportunities expire instantly, the game feels stressful
- if everything returns endlessly, choices lose consequence
- if the system ignores player preference, relationships feel random rather than cultivated

## Recommended Next Step

Next, define the semester exam scene structure so the academic pillar has a similarly clear surfacing and payoff model.
