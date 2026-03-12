# Player Profile And Preferences

## Design Goal

Character creation should let the player build a specific kind of student rather than select a class or archetype.

The setup should support three fantasies at once:

- this is my student
- this character has clear strengths and weaknesses
- this character has their own tastes, which shape chemistry with other people

## Confirmed Decisions

- the game should avoid fixed character classes or archetypes
- starting strengths should be represented through broad attributes, not subject-specific stats
- character creation should use a classic point-buy model
- each attribute uses a `1-10` scale
- `5` is the default starting baseline
- the player may lower some attributes below `5` to raise others above `5`
- the point-buy range may reach full extremes from `1` to `10`
- the system should show a soft warning for very extreme builds rather than hard-block them
- point-buy costs should use a hybrid curve: cheaper around the middle, more expensive near extremes
- attributes should affect school and activities primarily, and only sometimes influence dialogue or relationships
- relationships should be influenced more strongly by `preferences` than by attributes

## Attribute Set

The confirmed starting attribute set is:

- `reasoning`
- `knowledge`
- `creativity`
- `sociability`
- `athletics`
- `composure`

## Attribute Roles

### Reasoning

Represents:

- logic
- analysis
- structured problem solving

Primary use:

- supports school performance in subjects and moments that rely on analytical thinking

### Knowledge

Represents:

- memory
- retention
- factual learning

Primary use:

- supports subjects and tasks that reward remembering, absorbing, and recalling information

### Creativity

Represents:

- imagination
- expressive thinking
- non-obvious solutions

Primary use:

- supports expressive school tasks, some dialogue flavor, and selected social or personal actions

### Sociability

Represents:

- ease in conversation
- comfort with people
- social flow

Primary use:

- supports some interactions, first impressions, and low-stakes social momentum

### Athletics

Represents:

- physical ability
- coordination
- sport and body-based competence

Primary use:

- supports physical activities and school situations such as PE

### Composure

Represents:

- calm under pressure
- emotional steadiness
- resistance to stress disruption

Primary use:

- reduces negative performance effects from stress-heavy situations
- supports steadier execution in exams, tense lessons, and some uncomfortable social situations

## Why These Attributes Exist

This attribute set is intentionally broad.

It should:

- support school performance without becoming one stat per subject
- support roleplay without turning every relationship into a stat check
- make the character feel personalized before the first day begins

## Point-Buy Model

The intended creation flow is:

1. every attribute begins at `5`
2. the player reallocates points freely
3. some attributes may be reduced below baseline to fund stronger ones elsewhere
4. the player may create extreme builds, but receives a warning when doing so

## Cost Philosophy

The cost model should be hybrid.

Design intent:

- moderate adjustments should feel accessible
- specialization should be possible
- extreme min-maxing should still be allowed, but should feel costly

This keeps the system expressive without making all optimal builds collapse into the same pattern.

## Preference System

Attributes define what the player character is good at.

Preferences define what the player character likes.

These are separate on purpose.

## Preference Model

Confirmed preference rules:

- preferences are represented as binary tags
- tags are grouped into categories
- the player chooses from a large combined pool of tags
- the selection limit is global rather than per category
- the player may select up to `30%` of the available tags
- preferences are fixed after character creation

Example categories may include:

- music
- films
- food
- hobbies

## Relationship Role Of Preferences

Preferences are the main compatibility layer for relationships.

Confirmed direction:

- shared preferences help
- strong differences can mildly hurt
- the overall influence should be medium, not dominant
- preferences matter more to relationship chemistry than raw attributes do

This means chemistry should feel real, but relationships should still mainly grow through time, choices, and context.

## Discoverability Of NPC Preferences

The player should not know everyone else's preference profile immediately.

Confirmed direction:

- NPC preferences are discovered gradually
- discovery comes through dialogue, scenes, and observation
- the game may also use clues from behavior, clothing, or environment
- once preferences matter, the game can provide fairly explicit feedback that there is alignment or mismatch

This supports both social discovery and readable payoff.

## Character Creation Flow

Current recommended structure:

1. choose attributes through point-buy
2. choose preference tags from the global pool

This cleanly separates competence from identity.

## Interaction With Other Systems

### Lessons and academics

- attributes help shape how well the player handles school demands
- subject grades remain separate outputs rather than becoming attributes themselves

### Condition

- `composure` especially should moderate the effect of stress without replacing the condition system itself

### Relationships

- `sociability` and other attributes may color some outcomes
- preferences remain the stronger compatibility driver

### Replayability

- different point-buy setups and preference tag choices should naturally support different roleplay identities and social routes

## Risks And Edge Cases

- if attributes affect too many social outcomes, preferences lose importance
- if preferences affect too much, time investment and player choices lose importance
- if the point-buy curve is too generous, all characters become over-optimized
- if the point-buy curve is too punitive, experimentation becomes unattractive
- if the preference tag pool is too small, different characters will feel too similar

## Recommended Next Step

Next, define the fictional framing map for MVP subjects so the school schedule feels distinct in tone even while lesson mechanics stay shared.
