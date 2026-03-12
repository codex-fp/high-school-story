# Stats And Condition System

## Design Goal

The stat model should make daily choices feel meaningful without turning the game into spreadsheet management.

For High School Story, stats should support a cozy-leaning but lightly demanding experience:

- players should understand what each stat means
- bad condition should create friction, not panic
- recovery should be part of normal planning
- no core stat should feel redundant with another

## Assumptions

- the main visible MVP stats remain `energy`, `stress`, `mood`, `money`, and `grades`
- relationships are tracked per character and shown through descriptive states
- MVP broad skills remain `learning`, `social`, and `physical`
- the game should avoid hard fail states caused by condition

## Proposed System

The player state is split into four layers with different jobs.

| Layer | Elements | Purpose |
|---|---|---|
| Condition | energy, stress, mood | shapes moment-to-moment effectiveness and what the player feels able to do |
| Capacity | money | enables selected options but should not dominate the entire loop |
| Growth | skills, grades | tracks medium-term improvement and academic direction |
| Social state | relationship states | tracks access to people, scenes, and emotional outcomes |

This separation is important because it prevents every stat from becoming just another bar that goes up and down for the same reasons.

## Core Design Rule

Condition stats should mainly answer this question:

How well can the player make use of today's opportunities?

They should not answer:

- whether the run is over
- whether the player permanently loses progress
- whether one bad week deletes earlier success

## Stat Roles

### Energy

Player-facing meaning:

- physical and mental readiness to do things well

Design role:

- the main limiter on sustained productivity

What it should affect:

- lesson effectiveness
- study efficiency
- work efficiency
- chance of choosing recovery-oriented lesson actions like napping
- access to some longer or more demanding activities when extremely low

What it should not do:

- fully prevent normal play at moderate depletion
- become identical to mood

Recommended behavior:

- low energy makes actions weaker and riskier
- very low energy creates occasional partial failure outcomes, such as reduced gains or poor lesson turns
- sleep is the main large reset, while naps and breaks are smaller support tools

### Stress

Player-facing meaning:

- accumulated pressure, overload, and difficulty staying composed

Design role:

- the main pressure-conversion stat that turns overcommitment into lower quality decisions and outcomes

What it should affect:

- catch risk in lessons and tense situations
- mood decay speed
- efficiency of focused activities under pressure
- quality of some social interactions when the player is strained

What it should not do:

- instantly destroy a day on its own
- function as just a second energy bar

Recommended behavior:

- stress rises from overpacked schedules, poor performance, some lessons, and certain story events
- stress falls through breaks, enjoyable activities, successful resolution of pressure, and sleep
- high stress should make recovery and social comfort choices more attractive

### Mood

Player-facing meaning:

- current emotional readiness, optimism, and willingness to engage

Design role:

- the soft comfort stat that makes the difference between surviving a schedule and enjoying it

What it should affect:

- quality of social activity outcomes
- effectiveness of optional self-directed activities
- resistance to stress spikes
- player appetite for expressive or risky choices

What it should not do:

- become the only meaningful wellbeing stat
- directly replace relationships as the social system

Recommended behavior:

- low mood weakens the value of free-time activities and makes the player feel less effective socially
- positive activities should often improve mood even if they are not the most optimal long-term choice
- mood should be easier to repair than stress, but also easier to lose

### Money

Player-facing meaning:

- practical freedom for purchases, venues, gifts, and optional convenience

Design role:

- opens some opportunities and tradeoffs, but should not overshadow time as the main scarcity

What it should affect:

- access to certain items or venue activities
- ability to buy small convenience or recovery aids
- some social options and event preparation

What it should not do:

- become mandatory grind for basic play
- replace relationships or stats as the answer to every problem

Recommended behavior:

- money should feel useful but not oppressive
- paid work should solve specific needs, not become the dominant daily loop

## Growth Stats

### Broad skills

Broad skills are long-term efficiency boosters.

- `learning` improves study and academic conversion rates
- `social` improves relationship-building efficiency and some dialogue outcomes
- `physical` improves energy resilience and some activity efficiency

Skills should grow slowly and reward consistent behavior rather than one-time spikes.

### Grades

Grades represent subject-specific academic standing.

- grades should be influenced by lesson engagement, study, and exams
- grades should be slower-moving than mood or stress
- grades should matter for endings and self-image, but not invalidate non-academic playstyles

## Interaction Model Between Condition Stats

The three condition stats should interact asymmetrically.

- low `energy` makes performance weaker directly
- high `stress` makes mistakes and inefficiency more likely
- low `mood` makes optional play less rewarding and resilience worse

Recommended secondary interactions:

- low energy increases stress gain from demanding actions
- high stress causes passive mood erosion
- low mood reduces recovery quality from neutral activities

This creates a readable chain without making one stat control everything.

## Player-Facing Communication

To preserve a cozy-leaning feel, the game should show condition clearly but not like a hardcore sim dashboard.

Recommended communication model:

- show the three core condition stats visibly at all times
- use descriptive UI feedback on thresholds, such as `tired`, `drained`, `tense`, `overwhelmed`, `down`, `good mood`
- preview likely effects on actions in plain language when relevant

Example action preview language:

- `You are tired: studying will be less effective`
- `You are stressed: higher chance of slipping up in class`
- `Good mood: hanging out is likely to go well`

## Threshold Model

For MVP, use threshold bands instead of overcomplicated formulas in the design layer.

Recommended mental model:

- healthy band: no meaningful penalty
- strained band: light penalty or reduced efficiency
- poor band: clear penalty and increased risk
- critical band: strong penalty, but still not a hard fail state

This supports readability and easier tuning.

## Recovery Model

Recovery should come from multiple sources so the player is not forced into one obvious fix.

### Small recovery

Examples:

- snack
- short rest
- light conversation
- brief entertainment

Purpose:

- smooth out a normal day

### Medium recovery

Examples:

- longer hangout
- quiet hobby time
- focused dorm rest
- low-pressure weekend activity

Purpose:

- stabilize a rough day or week

### Large recovery

Examples:

- full sleep cycle
- restful weekend block
- special emotional payoff scene

Purpose:

- reset accumulated pressure meaningfully

## Condition Consequences By Activity Type

### Lessons

- low energy reduces learning gains and raises need for safe actions
- high stress raises catch or underperformance risk
- low mood weakens discussion, talking, and some class participation outcomes

### Studying

- low energy sharply reduces efficiency
- high stress creates diminishing returns on long sessions
- good mood slightly increases retention or willingness to continue
- this should be especially visible in late-evening study, which remains allowed but is usually weaker than earlier study unless the player managed condition unusually well

### Social activities

- low mood weakens relationship progress quality
- high stress increases chance of awkward or flat interactions
- decent energy helps longer scenes remain worthwhile

### Work

- low energy makes work less efficient and more draining
- high stress makes work a poor emergency fix unless money is truly needed

## Anti-Frustration Rules

To fit the target tone, the stat system should follow these rules:

- never erase earned skills or relationship progress because of bad condition alone
- avoid chain reactions that make three bad turns automatically ruin the whole week
- keep at least one sensible recovery path available in most low-condition states
- let players finish a day imperfectly without making that day feel wasted

## Balancing Levers

- baseline daily energy drain
- stress gain from lessons, work, and overpacked schedules
- passive mood decay or recovery rates
- threshold penalty strength
- recovery efficiency by activity type
- sleep restoration strength
- contribution of `physical` skill to resilience

## MVP Recommendation

For the first playable version, keep the stat model intentionally simple:

- `energy` is the primary performance limiter
- `stress` is the primary risk amplifier
- `mood` is the primary quality-of-life and social-efficiency stat
- `money` gates selected options only
- `learning`, `social`, and `physical` provide slow efficiency improvement

This is enough to create meaningful tradeoffs without overwhelming players or production.

## Risks And Edge Cases

- if mood and stress are tuned too similarly, players will not understand why both exist
- if money is too scarce, work becomes mandatory and distorts the fantasy
- if low energy is too forgiving, recovery actions lose value
- if low condition penalties stack too hard, the game stops feeling cozy-leaning
- if grades dominate endings too strongly, the promised playstyle freedom becomes false

## Recommended Next Step

Next, define the relationship system so we can connect condition, social opportunity, and story arc progression into one coherent social loop.
