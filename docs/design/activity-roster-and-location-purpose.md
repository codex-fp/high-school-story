# Activity Roster And Location Purpose

## Design Goal

Locations should exist to create different kinds of decisions, not just to decorate the map.

The activity system should make each place answer a clear gameplay question:

- what can I do here
- why would I come here now instead of somewhere else
- what kind of progress or recovery does this place support

For MVP, the location network should stay small, but each node should feel useful and distinct.

## Assumptions

- MVP must include `dormitory`, `school`, and `district`
- MVP should also include one additional simple social venue
- the recommended extra venue count is one, not two or more
- time and travel remain meaningful, so location choice must create opportunity cost

## Proposed MVP Location Set

Recommended MVP locations:

- `dormitory`
- `school`
- `district`
- `shop`
- `park`

Recommended extra social venue choice: `park`

Why `park` is the best default MVP venue:

- it supports friendship, romance, recovery, and low-cost slice-of-life scenes
- it does not require heavy economy logic like a cafe or cinema would
- it fits cozy-leaning tone well
- it can host both quick and longer social activities
- it is easy to reskin seasonally or by time of day later

## Location Role Map

| Location | Primary purpose | Secondary purpose | Emotional tone |
|---|---|---|---|
| Dormitory | recovery and preparation | private micro-social scenes | safe, intimate |
| School | mandatory structure and academic progress | classmate contact and school events | pressured, routine |
| District | movement hub and connective space | lightweight encounters and transition scenes | grounded, everyday |
| Shop | utility spending and small support actions | gifts and convenience choices | practical |
| Park | social venue and mood recovery | low-pressure story scenes | warm, reflective |

## Core Design Rule

Every activity should belong to a clear gameplay category so the player understands why it exists.

Recommended categories:

- `recovery`
- `academic`
- `social`
- `money`
- `utility`
- `story`

An activity may touch multiple systems, but it should have one dominant role.

## Activity Roster By Category

### Recovery activities

Purpose:

- stabilize energy, stress, or mood

Recommended MVP examples:

- short rest in dormitory
- evening wind-down in dormitory
- snack break at school or shop
- quiet walk in park
- relaxing hangout in park

### Academic activities

Purpose:

- improve grades, exam readiness, or study momentum

Recommended MVP examples:

- attend lesson at school
- focused study in dormitory
- light review in dormitory
- tutoring or study meetup later if supported by a classmate arc

### Social activities

Purpose:

- build familiarity, trust, and possible romance

Recommended MVP examples:

- hallway chat at school
- shared lunch at school
- brief dorm interaction
- after-school meetup in park
- weekend walk in park

### Money activities

Purpose:

- earn currency when the player has a practical need

Recommended MVP examples:

- simple part-time shift in district or near shop

Money activities should be functional but not glamorous, so they feel optional rather than dominant.

### Utility activities

Purpose:

- prepare, purchase, or improve later efficiency

Recommended MVP examples:

- buy snack or small item at shop
- buy gift or low-cost social item at shop
- check schedule or prep item in dormitory

### Story activities

Purpose:

- progress character arcs, scripted scenes, and key semester beats

Recommended MVP examples:

- classmate invitation at park
- school-based arc trigger after lesson
- weekend story step in district or park

## Location-by-Location Activity Design

### Dormitory

Design role:

- the player's reliable recovery and preparation base

Must support:

- morning setup choices
- evening closure choices
- medium-efficiency study
- short and medium recovery
- occasional dorm social beats

Should not become:

- the best place for every important action

Recommended MVP activity list:

- wash up
- eat simple breakfast
- short rest
- review notes
- focused study
- evening wind-down
- brief roommate or nearby student interaction when available

Morning versus evening guidance:

- morning supports prep, light recovery, and short study before departure pressure
- evening supports recovery, social decompression, and optional normal study
- evening `focused study` should remain available, but it should usually be less efficient because the player commonly arrives there with lower energy and more accumulated stress

This preserves player freedom while keeping the daily rhythm intact.

### School

Design role:

- mandatory academic backbone and dense social contact space

Must support:

- lessons
- between-class interactions
- short recovery and utility moments
- classmate encounter density
- school-tied story beats

Should not become:

- a single uninterrupted cutscene block with no player agency between lessons

Recommended MVP activity list:

- attend class
- hallway chat
- shared lunch
- ask teacher follow-up
- vending or snack purchase
- trigger school event or arc beat

### District

Design role:

- connective tissue that makes movement and place feel real

Must support:

- travel transitions
- occasional lightweight encounters
- access to work, shop, and park

Should not become:

- empty walking space with no gameplay meaning

Recommended MVP activity list:

- bus travel or route transition
- incidental meeting chance
- access point to work shift
- route-based story trigger when needed

### Shop

Design role:

- practical conversion point for money into comfort or preparation

Must support:

- snacks
- small useful items
- low-scope gifts or social prep items

Should not become:

- a huge inventory management feature in MVP

Recommended MVP activity list:

- buy snack
- buy simple gift
- buy small study or convenience item

### Park

Design role:

- low-pressure social and mood-recovery venue

Must support:

- friendship scenes
- early romance scenes
- reflective solo recovery activity
- weekend and after-school hangouts

Should not become:

- just another generic background for dialogue

Recommended MVP activity list:

- short walk alone
- planned hangout
- longer weekend outing
- story beat conversation
- low-cost romantic moment when relationship context allows

## Time Cost Philosophy

Activities should use standard duration bands so players can reason about a day quickly.

Recommended defaults:

- 15 minutes: micro interaction, snack, prep, short rest
- 30 minutes: focused small action, quick meetup, light review
- 45 minutes: venue use, longer conversation, structured school segment
- 60 to 120 minutes: major hangout, work shift, story event, deep study

## Why One Extra Social Venue Matters

Adding one venue beyond school and dormitory is important because it proves the fantasy of life outside obligations.

Without it, MVP risks feeling like:

- class menu
- dorm menu
- route between them

With one dedicated social venue, MVP can prove:

- place changes emotional tone
- after-school freedom feels real
- relationships can live outside mandatory school contact

## Activity Availability Rules

To keep planning legible:

- not every activity should be available at every hour
- school actions cluster around timetable structure
- dormitory actions cluster around morning and evening reliability
- park is strongest after school and on weekends
- shop access should be predictable and easy to understand

## Balancing Levers

- travel time to each location
- action time costs
- recovery efficiency by place
- relationship gain by activity type
- money cost of utility and social items
- invitation frequency for park and school scenes
- work payout versus time drain

## Risks And Edge Cases

- if dormitory is too efficient, players stop leaving unless forced
- if park is too rewarding, it becomes the dominant best answer every afternoon
- if district has no lightweight events, travel feels like dead air
- if shop items are too strong, money becomes overcentralized
- if the extra social venue is too content-heavy, MVP scope expands too fast

## Recommended Next Step

Next, define the exact dormitory activity list for morning and evening windows, because that is now the clearest remaining MVP design gap in the daily loop.
