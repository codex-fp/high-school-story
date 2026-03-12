# Relationship System

## Design Goal

The relationship system should make classmates feel like meaningful people, not collectible affinity bars.

It should support three player fantasies at once:

- getting to know people over time
- deciding who deserves limited attention
- seeing friendship and romance emerge from repeated choices rather than one-off flags

For this game, the system should stay emotionally readable, content-manageable, and cozy-leaning.

## Assumptions

- each known classmate has an individual tracked relationship state
- relationship progress is shown through descriptive states rather than raw numbers
- friendship and romance are distinct outcomes
- the player may flirt with multiple classmates during exploration, but should ultimately commit to one active romance path at a time
- every classmate has their own story arc, but MVP contains only one lightweight full arc

## Proposed System

Each classmate relationship is built from three layers.

| Layer | Purpose | Visibility |
|---|---|---|
| Familiarity | tracks whether the player really knows this person yet | mostly visible through descriptive state |
| Affinity direction | tracks what kind of bond is forming | mostly inferred through dialogue and behavior |
| Arc progression | tracks access to story beats and milestone scenes | visible through events, invitations, and scene unlocks |

This structure lets the game show simple player-facing labels while still supporting nuanced behind-the-scenes logic.

## Core Player Question

Who do I want to invest my limited time and emotional energy in, and what kind of bond am I building with them?

## Relationship States

For MVP, use descriptive relationship stages instead of exposed numbers.

Recommended baseline states:

- `stranger`
- `acquaintance`
- `comfortable`
- `close`
- `very close`

These describe general familiarity and trust, not romance by themselves.

## Bond Direction

A relationship should not only answer how close the player is, but also in what direction the bond is moving.

Recommended bond directions:

- neutral
- friendly
- interest-building
- romantic

Player-facing presentation can stay subtle. The game does not need to show these as explicit labels in the UI.

## Friendship And Romance Structure

Friendship is the default social route. Romance is an optional escalation path that grows out of sufficient closeness plus compatible choices.

Recommended rule set:

- every romance-capable classmate starts on a friendship-compatible path
- flirtation can begin before full commitment
- the player may explore interest with more than one person in early and mid stages
- entering an explicit romance state should lock the player into one active romance at a time
- trying to pursue someone else after commitment should create social consequences, not a hidden hard fail

This supports experimentation without turning the cast into consequence-free parallel romance tracks.

## Social Actions And Their Roles

Relationship growth should come from repeated actions with different emotional meanings.

### Casual contact

Examples:

- hallway talk
- greeting after class
- small dorm interaction

Role:

- increases familiarity slowly
- keeps a relationship warm
- low time cost, low impact

### Planned hangout

Examples:

- walking together
- shared lunch
- after-school meetup
- weekend outing

Role:

- main driver of closeness and arc progression
- consumes meaningful time
- strongest place for player prioritization

### Supportive response

Examples:

- helping with a problem
- listening during a vulnerable moment
- showing up when invited

Role:

- strengthens trust
- can branch arc tone and future availability
- often more important than generic hangout value

### Expressive romantic action

Examples:

- flirt
- give meaningful gift
- choose intimate dialogue tone
- accept or propose a special date-like scene

Role:

- signals direction toward romance
- should only work well when relationship context supports it
- should feel risky but legible

## Relationship Growth Rules

To keep the system readable and healthy:

- progress should come primarily from presence, consistency, and context-sensitive choices
- large progress spikes should usually come from milestone scenes, not spammed micro-actions
- the same low-cost action should have diminishing returns when repeated too often
- relationships should cool down slightly when neglected, but not collapse dramatically without clear cause

This avoids grind while preserving the feeling that attention matters.

## Diminishing Returns Model

The game should discourage players from min-maxing one cheap interaction repeatedly.

Recommended rule:

- first meaningful interaction in a day gives full value
- second related interaction gives reduced value
- additional repetition gives little or only maintenance value unless a special event is active

This pushes the player toward richer scheduling instead of spam behavior.

## Arc Gating Model

Story arcs should unlock from a combination of social and world conditions rather than raw closeness alone.

Recommended inputs for arc progression:

- current relationship state
- recent interaction pattern
- calendar timing
- location availability
- player condition or availability when relevant
- prior decisions in that classmate's arc

This allows classmates to feel integrated into school life rather than existing as isolated quest lines.

## Romantic Commitment Model

The chosen direction for this project is:

- the player may flirt with multiple classmates during exploration
- the player may build interest with more than one person
- the player can only enter one explicit active romance at a time

Recommended active romance states:

- no romance
- exploring interest
- committed romance

`exploring interest` can exist with multiple classmates in soft form.

`committed romance` should be exclusive.

## Consequence Model

This system should support emotional consequence without becoming punishing melodrama.

Recommended consequences:

- neglected relationships stall rather than instantly decay
- poorly timed flirtation can create awkwardness or reduced progress
- breaking exclusivity after commitment can lower trust and alter story tone
- helping someone in a key moment can compensate for slower generic progress
- rule-breaking can influence social tone for specific characters, but should not become the main romance or friendship optimization path

The tone should remain human and understandable, not cruel.

## Interaction With Other Systems

### Time

- relationships compete directly with studying, work, and recovery for limited time
- stronger relationships may unlock more efficient or emotionally valuable hangouts later

### Condition stats

- low mood weakens social quality
- high stress increases awkward or flat outcomes
- decent energy helps longer hangouts remain worthwhile

### Money

- money can support some social actions, gifts, or venue plans
- money should improve options, not replace emotional investment

### Narrative

- story arcs should use relationship state as a gate and as tonal context
- the same beat can play differently depending on closeness or romantic direction

### Preferences

- shared preference tags should give medium-strength chemistry support
- clear mismatches may create mild friction, but should not outweigh time and behavior
- NPC preferences should be discovered gradually, then communicated with fairly clear feedback when they matter

## Player-Facing Communication

To keep relationships readable without exposing hidden math:

- show current descriptive closeness state for known classmates
- show recent notable signals through dialogue, invitations, and reactions
- use calendar or message prompts to surface social opportunities
- when a romantic moment is possible, telegraph that the choice has emotional meaning

Good UI language examples:

- `You seem to be getting closer`
- `They looked happy you came`
- `This may change the tone of your relationship`

## MVP Recommendation

For the first playable semester:

- use 5 classmates
- fully implement one classmate arc with friendship-to-romance support if that character is romance-capable
- let the remaining classmates support lighter social loops and partial progression states
- keep visible relationship presentation simple: descriptive state plus contextual dialogue feedback

This is enough to validate whether social investment feels worthwhile before scaling to the full cast.

## Balancing Levers

- time cost of social actions
- daily or weekly diminishing-return strength
- threshold requirements for arc beats
- availability frequency of invitations and opportunities
- trust impact of supportive versus selfish choices
- tolerance for multi-target flirtation before commitment
- severity of consequence after breaking exclusivity

## Risks And Edge Cases

- if relationship growth is too fast, players stop making real tradeoffs
- if relationship growth is too slow, classmates feel inert and content pacing drags
- if romance starts too early, friendship routes lose value
- if exclusivity consequences are too harsh, players will avoid experimentation
- if exclusivity consequences are too weak, commitment loses emotional meaning
- if every classmate uses the same cadence, the cast will feel mechanically flat

## Recommended Next Step

Next, define the academic progression and exam system so school performance can stand beside relationships as an equally legible long-term path.
