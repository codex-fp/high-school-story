---
title: 'Narrative Design Document'
project: 'High School Story'
date: '2026-06-13'
author: 'Filip'
version: '1.0'
status: 'promoted'
narrativeComplexity: 'Heavy'
task_id: 'HSS-24'
source_inputs:
  - docs/game-design.md
  - docs/narrative-content.md
  - _bmad-output/brainstorming-session-2026-06-13.md
  - _bmad-output/narrative-design.md
---

# High School Story - Narrative Design Document

## Document Status

This document promotes the accepted narrative brainstorming material from
`_bmad-output/brainstorming-session-2026-06-13.md` and the draft workflow artifact
at `_bmad-output/narrative-design.md` into durable project documentation. It is
full-game-first: it defines the target three-year narrative shape while
preserving Year 1 Semester 1 as the first delivery slice.

## Executive Summary

### Narrative Premise

High School Story follows a student from a small village who leaves home because
their village has no high school. Their parents send them to a dormitory in
Lakeview, the nearest town with a high school, several hours away by bus. The
story begins as a practical family decision, not a melodramatic secret: the
student must live away from home, learn the town, survive the routine, and decide
who they become across three school years.

The fantasy is Second-Chance Student Life. The player is not traveling through
time or fixing the past. They are inhabiting the emotional shape of high school
with more awareness, intention, and agency than real adolescence usually allows.
The desired full-run residue is: these were my years, I could not have
everything, but I found people I did not know I needed.

### Narrative Thesis

The full-game emotional thesis is remembered school life through beautiful
incompleteness and found people.

The game should not promise a perfect high school life, a solved social graph, or
a checklist of repaired lives. It should preserve the feeling that some people
became central, some stayed almost-connections, some remained distant but
memorable, and some paths were meaningful because they were not fully taken.

### Core Themes

- Identity: who the player becomes when away from home for the first time.
- Belonging: how school, dormitory, clubs, friendships, and found groups become
  chosen places.
- Future pressure: grades, family expectation, reputation, and graduation as
  long-term pressure surfaces.
- First closeness: friendship, best friendship, romance, and trust as fragile
  discoveries.
- Shame and reputation: the difference between social mask and private truth.
- Ambition and rivalry: visible success as both opportunity and burden.
- Light-touch mental strain: stress, isolation, fear, over-control, and emotional
  fatigue without turning the game into trauma spectacle.
- Off-screen family pressure: families shape students without requiring every
  story to become a family drama scene.

### Tone And Atmosphere

The tone is grounded, nostalgic, cozy-leaning, and lightly demanding. The writing
should feel like a broad high-school experience rather than a narrow parody of a
high-school film genre. Familiar motifs are ingredients, not obligations: school
rituals, clubs, exams, gossip, social media, town hangouts, first closeness,
missed chances, and graduation all matter when rooted in concrete teenage
problems and desires.

The emotional register should favor small truths over melodrama. Major scenes
often land through quiet timing: a phone message at night, an empty room after an
event, a bus ticket with homework in the margin, or a classmate behaving normally
the morning after vulnerability.

## Story Structure

### Story Type

High School Story uses a branching life-sim narrative structure. It combines a
fixed three-year school calendar with optional relationship arcs, place-based
discovery, authored phone content, school events, clubs, academic pressure, and a
graduation ending that interprets accumulated state.

The protagonist has a clear opening situation and final graduation endpoint, but
the emotional middle is authored through player priority: who they invest in,
where they spend time, what they sacrifice, and which relationships become part
of the remembered school years.

### Three-Year Shape

#### Year 1: Entry And Exploration

Year 1 asks: can I handle this, and where do I fit?

The protagonist arrives in Lakeview with parental pressure, excitement about
freedom, and anxiety about self-reliance. The year emphasizes first routines,
dormitory life, school orientation, early classmate masks, town discovery,
subject identity, club exposure, and first consequences.

Narrative priorities:

- Make Lakeview feel ordinary to locals but large to the protagonist.
- Let the player discover classmates through readable first impressions.
- Complicate social masks by the second or third meaningful encounter.
- Establish the phone as both planning tool and emotional surface.
- Seed the memory album with first places, first messages, and first almosts.

#### Year 2: Deepening And Choice

Year 2 asks: who am I choosing to become close to?

The year carries the strongest relationship development. Classmate secrets become
harder to ignore, clubs and social circles demand commitment, social capacity
becomes visibly limited, and the player's routine starts to express identity.

Narrative priorities:

- Escalate classmate arcs without making the player a savior.
- Make missed opportunities feel like life tradeoffs rather than punishment.
- Let places transform through repeated use and changed context.
- Increase school, family, reputation, and future pressure.
- Push the player toward meaningful prioritization among about 3-5 arcs.

#### Year 3: Culmination And Closure

Year 3 asks: what do I carry forward?

The year focuses on last chances, graduation pressure, future direction,
relationship culmination, memory-album reflection, and paths not taken. It should
feel like the end of a shared era rather than a scoreboard.

Narrative priorities:

- Pay off completed arcs through classmates' own choices.
- Preserve unfinished arcs as emotionally real.
- Make graduation feel personal, not generic.
- Interpret academic, club, relationship, and place memory together.
- Use post-graduation glimpses selectively where they deepen closure.

### Opening Sequence

The accepted opening begins with the protagonist arriving in Lakeview in the
evening. They find their way from the bus stop to the dormitory, check in, reach
their room, orient themselves through the phone, and go to sleep. The next day is
the first day of school.

Opening principles:

- First contacts are practical: asking for directions and checking in with the
  dormitory receptionist.
- The core cast is not immediately foregrounded; the first school day carries
  stronger classmate reveal energy.
- The opening teaches location, phone, dormitory, solitude, curfew, and the rhythm
  of the player's new life.
- The room should be quiet enough for anxiety and anticipation to land before
  sleep.

The implementation-ready version of this intro lives in `docs/narrative-content.md`.

## Protagonist

### Player Character Premise

The protagonist comes from a small village without a high school. They are sent
to Lakeview because it is the nearest viable school town with a dormitory. This
creates a grounded outsider perspective: Lakeview must be learned, not merely
entered.

### Year 1 Inner Question

The protagonist's Year 1 tension is: can I do this?

They are balancing parental expectation, excitement about freedom, homesickness,
money awareness, and the anxiety of proving the family decision was worth it.
Early scenes should contrast practical tasks with emotional stakes: unpacking,
checking the schedule, walking to school, replying to home, choosing where to go
after school alone, and learning the dormitory rhythm.

### Narrative Role In Classmate Stories

The player is an attentive catalyst.

They can notice hidden tensions, create space for honesty, support someone in a
choice, and become a safe person. They should not solve classmates' lives, become
the universal hero, or overwrite a classmate's agency. Arc milestones should
often feel like: they trusted me with this, or my presence changed the moment,
rather than I fixed them.

## Core Cast Design

### Cast Design Rule

Each core classmate starts with a readable school-facing mask, then reveals a
separate hidden drama, contradiction, regret, or emotional wound underneath. The
mask gives immediate social readability. The secret gives long-form depth.

The full game targets 10 core classmates. One run should meaningfully advance
about 3-5 arcs, usually with one best-friend-level bond. The player may know more
classmates than they can deeply support.

### 1. Fashion Queen Bee

**School Mask:** Social center, fashion authority, polished queen bee whose style
and approval shape the hallway weather.

**Hidden Drama:** Her mother pressures her toward modeling, beauty, social
superiority, and public image. Under that pressure she once rejected a beloved
friend and still regrets it. A clothing item or accessory from that friend keeps
the betrayal physically present.

**Core Want:** To be admired without having to be curated.

**Core Fear:** That if she stops performing beauty and superiority, she will be
ordinary, replaceable, or unloved.

**Player Role:** Witness the person beneath the image and catalyze small acts of
honesty. The player cannot force reconciliation or absolve guilt.

**Three-Year Arc:**

- Year 1 Seed: Social precision and style control dominate her first impression;
  a too-careful reaction to an old accessory reveals that one item matters more
  than the outfit.
- Year 2 Escalation: Modeling pressure increases through a contest, school
  campaign, or family-arranged opportunity. The betrayed friend returns to her
  social orbit.
- Year 3 Payoff: If advanced, she publicly acknowledges the truth of the old
  friendship and stops treating beauty as proof of worth. If unfinished, she
  remains iconic but emotionally distant.

**Memory Motif:** A scarf, hair clip, necklace, or dress detail from the friend
she betrayed.

### 2. Athlete

**School Mask:** Confident team figure, physically capable, competitive,
associated with school pride and visible wins.

**Hidden Drama:** A wrong-witness story sits under the surface. They saw or
misread an event, stayed silent or spoke with false certainty, and someone else
was hurt by that version. They also carry forbidden tenderness: softness they do
not know how to show safely.

**Core Want:** To be strong without being trapped by strength.

**Core Fear:** That admitting uncertainty will expose them as cowardly or
disloyal.

**Player Role:** Stand beside them as they re-examine what they saw and what they
owe. The player cannot decide the truth for them.

**Three-Year Arc:**

- Year 1 Seed: They appear sure of themselves in competition. A quiet post-game
  moment near the gym hints at a person or place they avoid.
- Year 2 Escalation: The old event resurfaces. Their reputation, team loyalty,
  and self-image clash with the possibility that their certainty caused harm.
- Year 3 Payoff: If advanced, they choose truth over clean team reputation. If
  unfinished, they may still win publicly while carrying the private cost of what
  was never corrected.

**Memory Motif:** An empty bench by the field or gym after practice.

### 3. Nerd / Science Geek

**School Mask:** Hyper-prepared academic and science kid: protocols, schedules,
backup pens, notes about notes, and an almost comic need for order.

**Hidden Drama:** They write letters to a future self who will finally have
friends. They are not simply a natural genius; they compulsively translate chaos
into plans because social spontaneity terrifies them. They also keep a small
archive of abandoned objects as evidence of other people's unnoticed lives.

**Core Want:** To be understood without having to become socially fluent first.

**Core Fear:** That friendship is a variable they can never solve.

**Player Role:** Treat their systems as meaningful without letting those systems
replace real connection.

**Three-Year Arc:**

- Year 1 Seed: The player discovers a letter to a future self with friends and a
  labeled box of found objects.
- Year 2 Escalation: A science project or competition demands collaboration that
  cannot be reduced to protocol.
- Year 3 Payoff: If advanced, they create a class time capsule that leaves room
  for people rather than cataloging them. If unfinished, academic success remains
  paired with loneliness.

**Memory Motif:** A found-object box with handwritten labels.

### 4. Art Kid

**School Mask:** Visual artist, sketchbook carrier, mural dreamer, zine maker,
someone always half-drawing another world in the margins.

**Hidden Drama:** Their family expects a practical trade or career and sees art
as a dead-end. To prove art can earn money, they secretly make commercial work
under someone else's name or style, but every success feels like betrayal of
their own voice.

**Core Want:** To make something unmistakably theirs and have it count.

**Core Fear:** That their real art is beautiful but useless.

**Player Role:** Witness the difference between work that sells and work that
tells the truth. The player cannot choose their future for them.

**Three-Year Arc:**

- Year 1 Seed: The player sees sketches everywhere, then discovers a commercial
  graphic signed under another name or made in a borrowed style.
- Year 2 Escalation: Family pressure intensifies through work, apprenticeship, or
  a practical career track.
- Year 3 Payoff: If advanced, they present an imperfect personal work under their
  own name. If unfinished, commercial success hides the sketchbook that mattered.

**Memory Motif:** An unfinished mural or sketchbook with torn-out pages.

### 5. Skater Rebel

**School Mask:** Boundary-testing skater, shortcut expert, roof-and-back-alley
navigator, visibly allergic to rules.

**Hidden Drama:** Home is not emotionally safe enough, and skating gives them a
reason not to return too early. Beneath the rebel mask is a sharp sensitivity to
other people's pain. They know informal safe places around Lakeview because they
have needed them.

**Core Want:** Freedom that is not just escape.

**Core Fear:** That staying anywhere long enough means being trapped.

**Player Role:** Become someone they show safe places to, not someone who fixes
home or turns them respectable.

**Three-Year Arc:**

- Year 1 Seed: They know every shortcut and forbidden-feeling place. A minor
  injury reveals they would rather stay out than call home.
- Year 2 Escalation: The school, town, or family threatens the places they use to
  breathe. Their hidden protectiveness surfaces when younger students need refuge.
- Year 3 Payoff: If advanced, they help shape a legal safe gathering place
  without pretending home is healed. If unfinished, they keep vanishing and leave
  short messages saying not to worry.

**Memory Motif:** A safe-place map drawn on skateboard grip tape.

### 6. Goth / Alt Kid

**School Mask:** Black clothes, sharp replies, alternative elegance, controlled
distance, and the ability to make a room feel less honest by noticing everything.

**Hidden Drama:** She is deeply tender but terrified that visible vulnerability
will change how people treat her. She sends sincere messages late at night, then
deletes or retreats from them in the morning.

**Core Want:** To be seen and still treated normally afterward.

**Core Fear:** That naming what matters gives someone a weapon or makes the
relationship unrecoverable.

**Player Role:** Become safe by not pressing, not dramatizing, and staying normal
after glimpses of vulnerability.

**Three-Year Arc:**

- Year 1 Seed: At 02:17, she sends a sincere, strange, overexposed message. In
  the morning she deletes it or says, "ignore that. sleep is a hostile editor."
- Year 2 Escalation: A private message, note, or text fragment circulates through
  school as microviolence: screenshots, half-jokes, and locker comments. Others
  misread it as romantic drama when it is really about fear that friendship can
  leave too.
- Year 3 Payoff: If advanced, she lets the player read something before deleting
  it and does not retreat the next morning. If unfinished, the final draft remains
  unsent.

**Memory Motif:** A phone under the pillow, a draft at 02:17, and a blinking
cursor after the final sentence.

**Agency Rules:** The player should not save or fix her. Meaningful choices
include not pressing after a night message, interrupting microviolence without
heroic spectacle, asking what she needs now rather than demanding an explanation,
respecting humor as part of the truth, and treating her normally the next day.

**Voice Samples:**

```text
"Relax. If I were being dramatic, there would be better lighting."

"I deleted it because morning me is a coward with excellent grammar."

"Don't look so honored. I let you read one sentence, not my autopsy."

"People keep thinking the sad part is wanting someone. It's not. It's wanting someone to stay normal after they know."

"I'm fine. And before you say that sounds fake, congratulations, you have ears."
```

### 7. Student Council Organizer

**School Mask:** Clipboard, schedules, events, keys, volunteer rosters, the person
who makes school life function.

**Hidden Drama:** Their kindness works like a contract. They help because they
believe belonging must be earned. Organizing lets them enter every room without
facing whether anyone would invite them as a guest.

**Core Want:** To be chosen when they are not useful.

**Core Fear:** That if they stop helping, they disappear from everyone else's
life.

**Player Role:** Notice the person after the event ends and help them experience
presence without productivity.

**Three-Year Arc:**

- Year 1 Seed: They are always helpful and always needed. The crack appears when
  they clean up alone after everyone else leaves.
- Year 2 Escalation: A major school event goes wrong and the kindness contract
  breaks.
- Year 3 Payoff: If advanced, they hand the clipboard to someone else and stay
  because they want to. If unfinished, their name appears in every thank-you list
  but few memories.

**Memory Motif:** A sticker-covered clipboard from three years of events.

### 8. Teacher's Pet

**School Mask:** Perfect answers, clean notebooks, teacher approval,
institutional favorite, always correct and prepared.

**Hidden Drama:** Good grades are alibis. At home, mistakes are treated like
interrogations, so every grade, signature, and teacher praise becomes evidence of
innocence. Friendship can feel dangerous when closeness might become information
to explain or defend.

**Core Want:** To make a mistake and still be safe.

**Core Fear:** That one visible flaw will become an accusation.

**Player Role:** Normalize imperfection by staying calm around small failures.
The player cannot rewrite the home environment.

**Three-Year Arc:**

- Year 1 Seed: They seem exemplary until a minor error triggers disproportionate
  panic.
- Year 2 Escalation: A school conflict requires admitting uncertainty or
  defending someone without complete proof. Intimacy feels like a
  cross-examination.
- Year 3 Payoff: If advanced, they allow one visible flaw to remain and do not
  turn it into a trial. If unfinished, they graduate with honors but speak like
  every sentence has been prepared for judgment.

**Memory Motif:** A red pen or corrected page that was not torn out.

### 9. Activist

**School Mask:** Petitions, posters, justice language, public questions, moral
intensity, unwillingness to let unfairness pass quietly.

**Hidden Drama:** Their father sits on the city council and is tied to decisions
the student opposes. The family story of public service contains a lie or
compromise, but the father is not a flat villain.

**Core Want:** To build a moral voice that is not merely an argument with their
father.

**Core Fear:** That they are inheriting the same compromises they condemn.

**Player Role:** Witness the difference between righteous performance and
difficult truth. The player cannot settle the family conflict.

**Three-Year Arc:**

- Year 1 Seed: The player sees petitions and sharp public questions. A city
  project with the father's name creates a reaction more personal than political.
- Year 2 Escalation: The inherited lie becomes more complicated. The father may
  have made harmful compromises, but not without context or consequence.
- Year 3 Payoff: If advanced, they lead a campaign or speech that is neither
  copied from the father nor defined only against him. If unfinished, they win a
  small public issue but remain trapped in his shadow.

**Memory Motif:** A protest poster with corrections written on the back of a
family invitation.

### 10. Working Poor Student

**School Mask:** Busy, practical, older than their years, often absent after
school, careful with money, hard to schedule.

**Hidden Drama:** A sick mother, a little sister, a completely absent father, and
after-school work have made them the household's second adult. Their adolescence
is full of empty places where ordinary teen life should have been.

**Core Want:** To be allowed one thing that belongs only to them.

**Core Fear:** That rest or joy will make the family collapse.

**Player Role:** Make individual moments easier and less lonely. The player
cannot rescue the family or solve poverty.

**Three-Year Arc:**

- Year 1 Seed: They disappear after school, count money, answer calls from their
  sister, and ask for help only indirectly.
- Year 2 Escalation: Work, caregiving, grades, and relationships collide. The
  player can help protect moments, not remove the burden.
- Year 3 Payoff: If advanced, they allow themselves one thing just for them: a
  class photo, application, trip, or evening without the phone. If unfinished,
  the memory album shows absences from events they could not attend.

**Memory Motif:** A receipt, bus ticket, or shopping list with homework written
in the margin.

## Relationship And Ending Design

### Relationship State Inputs

Relationship epilogues and memory album entries should interpret simple system
state rather than expose a large ending taxonomy.

Inputs:

- Relationship Stage: stranger, acquaintance, comfortable, close, very close.
- Arc Progress: which key Year 1, Year 2, and Year 3 beats were seen.
- Arc Completion: incomplete or complete, interpreted per route.
- Special Bond: none, best friend, romance.
- Final-Year Presence: whether the player was present for the Year 3 culmination
  or last-chance scene.

### Interpretation Rules

- Do not expose many player-facing ending labels for partial relationships.
- Incomplete endings should use classmate-specific tone with warm incompleteness
  and light regret as the default filter.
- High relationship stage without arc completion should feel warm but unfinished,
  not like a failed checklist.
- Arc completion does not always mean the player became the classmate's most
  important person.
- A low relationship stage with a few important beats can still create a
  meaningful remembered almost-connection.
- Conflict repair changes ending tone rather than merely restoring a number.
- Missing a Year 3 culmination should not erase prior closeness, but it should
  leave a visible sense of distance, timing, or paths not taken.
- Romance is a distinct commitment path, not a superior version of friendship.
- Romance should not automatically complete a classmate's personal arc.
- No-romance runs remain narratively complete through friendship, best-friend,
  found-group, academic, club, or self-definition outcomes.

### Memory Album Rules

- Preserve specific shared moments rather than abstract relationship labels.
- For completed arcs, show the scene or object that proves what changed.
- For unfinished arcs, show the strongest almost-moment without shaming the
  player.
- For distant classmates, show a recognizable school-life image that reminds the
  player they existed in the same years.
- For best friend, include a recurring private motif that appears in graduation or
  post-graduation reflection.
- For romance, include a commitment-specific memory without making the rest of the
  cast feel irrelevant.
- For paths not taken, use subtle absence, empty places, unread posts, missed
  event photos, or unsent messages rather than punitive failure text.
- The album should not read like a completion checklist.

### Epilogue Writing Rules

- Answer: who did this person become around the player, and what did the player
  get to witness?
- Write incomplete endings as emotionally real, not mechanically inferior.
- Preserve beautiful incompleteness.
- Avoid savior framing; completed arcs should show classmates making their own
  choices.
- Let academics, clubs, and locations color relationship epilogues when relevant.
- Graduation should feel like the end of a shared era, not a route-results
  scoreboard.

## Lakeview World And Place Memory

### World Overview

Lakeview is a compact school town that the protagonist gradually learns through
routine, classmates, clubs, errands, after-school choices, and memory. It should
feel discoverable without becoming a large open world. Places should have stable
practical functions and accumulating emotional functions.

### Accepted Place Categories

- School public spaces: hallway, auditorium, field, cafeteria, announcement
  board.
- School hidden or quiet spaces: empty classroom, roof, backstage, library,
  equipment storage.
- Dormitory spaces: room, laundry room, night corridor, reception, shared kitchen.
- Town practical spaces: shop, bus stop, workshop, diner or cafe, city laundry.
- Town social spaces: park, pier, square, small amphitheater, skate spot.
- Family/status spaces: boutique, city hall, family home, photo studio, office.
- Creative/club spaces: art room, stage, music studio, workshop, science club.
- Threshold spaces: gates, bus stops, passages, building backs, in-between places.

### Shared Recurring Places

- Main Street Bus Stop: boundary between school, dormitory, home, work, escape,
  and return.
- Convenience Shop: small spending, work, gossip, after-school meetings, and
  back-room access.
- School Auditorium + Backstage: public faces, events, speeches, performances,
  contests, and graduation preparation.
- Library + Archive Corner: quiet memory, notes, letters, old newspapers,
  research, and tutoring.
- Park Pier / Old Amphitheater: honesty away from school, solitude, evening
  scenes, and small events.
- Dormitory Night Corridor + Laundry Room: insomnia, accidental conversations,
  fatigue, messages, and late-night vulnerability.

### Character Arc Places

| Classmate | Primary Place | Secondary / Event Places | Narrative Function | Memory Object |
|---|---|---|---|---|
| Fashion Queen Bee | School bathroom mirror | Boutique; School Auditorium + Backstage | Image control, maternal modeling pressure, social performance, private guilt | Accessory from betrayed friend |
| Athlete | Empty bench by field or gym | Equipment storage; Awards event; Park Pier | Visible victory, team loyalty, wrong-witness burden, hidden tenderness | Wristband, muddy shoes, team ball, empty bench |
| Nerd / Science Geek | Science lab after class | Library + Archive Corner; lost-and-found; shared study table | Protocols against chaos, letters, research, cataloged objects, social unpredictability | Future letter, labeled found object, backup pen |
| Art Kid | Unfinished mural behind school | Family workshop; cafe/shop wall; art room | Personal voice, practical family expectations, commercial art under another name | Sketchbook, hidden signature, mural fragment |
| Skater Rebel | Skate spot behind shop | Parking roof; underpass; threshold routes | Escape, unsafe home, freedom versus avoidance, safe places for others | Grip-tape map, scuffed wheels |
| Goth / Alt Kid | Dormitory night corridor near vending machine | Park pier; old cemetery corner; phone in bed at 02:17 | Late vulnerability, controlled distance, deleted messages, being seen normally | Draft message, phone under pillow, saved line |
| Student Council Organizer | Student council room / announcement board | Event kitchen; backstage; empty auditorium | Usefulness, belonging earned through labor, presence without task | Sticker-covered clipboard, checklist, key ring |
| Teacher's Pet | Front classroom desk / teacher's desk | Library tutoring room; hallway outside classroom | Grades as alibi, approval, fear of visible flaws, safety while imperfect | Red-corrected page, red pen, un-erased mistake |
| Activist | Market notice pole / campaign board | City hall; public meeting; family city event | Public justice, inherited lie, father conflict, independent moral voice | Protest poster on family invitation |
| Working Poor Student | Main Street Bus Stop near shop | Shop back entrance; dorm laundry/shared kitchen | Time scarcity, money pressure, caregiving, absent father, ordinary teen cost | Receipt, bus ticket, shopping list with homework |

### Place Rule

Every recurring place should have one practical function and one emotional
function.

- The bus stop is for travel, but emotionally asks who can go home safely.
- The mirror is for appearance, but emotionally asks whose face is being worn.
- The library is for study, but emotionally stores what students cannot say
  aloud.
- The shop is for spending, but emotionally exposes who can afford ordinary
  teenage life.
- The auditorium is for public school life, but emotionally tests what survives
  under an audience.

## Dialogue Framework

### Dialogue Style

Dialogue should be contemporary, grounded, character-specific, and economical.
Characters should sound like students with private pressures, not exposition
vehicles. Emotional scenes should avoid confession-dump structure when a smaller
behavior, object, or message can carry the reveal.

General rules:

- Use humor as defense, affection, avoidance, or recognition depending on the
  character.
- Let silence, short replies, deleted messages, and changed routines count as
  narrative beats.
- Keep player choices focused on attitude, priority, boundary, and interpretation
  rather than obvious good/bad morality.
- Do not let the player demand full vulnerability as a reward for relationship
  progress.
- Avoid savior dialogue where the player explains the correct life lesson.

### Phone-Native Writing

The phone is a narrative delivery surface, not only a UI. It carries messages,
social posts, availability, profile discoveries, memory records, missed
invitations, and endgame album material.

Phone content should support:

- Public mask versus private message contrast.
- Late-night vulnerability and morning retreat.
- Family pressure from home.
- Small planning hooks that become emotional choices.
- Social-media profile discovery that makes future relationship pursuit fairer.
- Memory album entries that preserve specific scenes and objects.

### Branching Dialogue

Branching should express who the player is and what kind of relationship they are
building. Branches can change trust, tone, future availability, or whether a
classmate feels seen, but should not reduce characters to puzzle locks.

Common choice modes:

- Respect privacy or press for an explanation.
- Treat a moment normally or make it dramatic.
- Offer practical help or emotional presence.
- Challenge a public mask or wait for a safer context.
- Join a risky plan or set a boundary.
- Prioritize relationship, school, recovery, money, or curfew.

## Narrative Delivery

### In-Game Storytelling

Primary delivery channels:

- Playable story beats in locations.
- Dialogue scenes and optional encounters.
- Lesson-adjacent social moments.
- School events and club events.
- Phone messages, posts, profiles, and invitations.
- Place-based discovery hooks.
- Memory album entries.
- Year transitions, graduation, and epilogues.

### Optional Content

Optional content is central to the narrative promise. The game should let the
player miss content without implying they failed to play correctly. Missed arcs,
unread posts, unvisited places, and distant classmates help define the player's
particular school years.

### Multiple Endings

The game should not use a large global ending taxonomy. The ending is a composed
graduation interpretation of academic standing, future direction, club identity,
relationship stages, arc progress, best friend, romance, memory album, and paths
not taken.

## Integration With Gameplay

### Ludonarrative Harmony

The narrative depends on the same constraints as the simulation: time, school,
curfew, condition, money, grades, travel, relationship availability, and social
capacity. Emotional outcomes should usually be earned through attention and
presence rather than abstract affinity farming.

Design implications:

- The player cannot deeply complete every core classmate in one run.
- Relationship rewards are primarily memory-making.
- Academics and relationships should both shape graduation.
- Poor condition creates friction, not erased progress.
- Money pressure can matter narratively without becoming a poverty simulator.
- Curfew and travel create believable social boundaries.

### Story Gates

Relationship scenes may gate on:

- Relationship stage.
- Arc beat progress.
- Calendar year or semester.
- Classmate availability.
- Discovered preferences or profile details.
- Location discovery.
- Club context.
- Prior dialogue choices.
- Condition, money, time, or curfew warnings.

Gates should be readable enough that the player can make fair plans through the
phone, map, calendar, and social profile layers.

### Player Agency Rules

- The player is a witness, catalyst, participant, and safe person, not a savior.
- Support choices should help classmates make their own decisions.
- Refusing, missing, or delaying a scene can be meaningful without being punitive.
- Romance is optional and not a superior version of friendship.
- Best friend and romance can overlap, but do not have to.
- One strong no-romance run should feel complete.

## Year 1 Semester 1 Narrative Slice

### Slice Purpose

The first delivery slice should prove the narrative vision at small scale while
remaining aligned with the full three-year target.

Accepted MVP cast direction:

- Popular status-holder.
- Pressured athlete.
- Financially strained student.
- Boundary-testing rebel.
- Science nerd.

This mix exposes status hierarchy, performance pressure, class and money tension,
rules and boundaries, and intellectual curiosity or isolation.

### Featured Lightweight Arc

The first fully supported lightweight MVP arc should belong to the popular
status-holder. This route tests reputation, social media as mask, fear of losing
status, family pressure to be the ideal child, and the player discovering the
person underneath the school's simplified label.

Beat chain:

1. Public confidence.
2. A too-perfect social post.
3. Reputation commentary or gossip.
4. A private crack after a parent phone call.
5. A less controlled after-school scene.
6. A small final act of authenticity in front of the player.

The payoff should avoid a dramatic confession. The emotional win is a small,
earned moment where the classmate lets the player see something uncurated.

### MVP Arc Constraints

- First impressions should be stereotype-forward enough for quick readability.
- Complication should arrive quickly, ideally by the second or third meaningful
  encounter.
- The lightweight arc should exercise profile discovery, posts, rumors,
  public/private contrast, school hierarchy, after-school locations, and the
  player's role as safe witness/catalyst.
- Other MVP classmates can remain teaser-level but should still point toward their
  full-game engines.

## Production Notes

### Writing Scope

The full game narrative target is large: 10 multi-year classmate arcs, three
school years, clubs, town memory, phone content, graduation, memory album, and
relationship epilogues. Production should therefore treat narrative as modular
and state-aware.

Recommended writing units:

- Protagonist arrival and school onboarding scenes.
- Per-classmate arc bible entries.
- Year-specific classmate beat chains.
- Phone post/message packs.
- Place memory records.
- School event scripts.
- Club identity scenes.
- Memory album entries.
- Graduation and epilogue prose.

### Localization

Project documentation and implementation-facing narrative content currently use
English. Polish brainstorming notes are workflow history. If localization becomes
an accepted feature, it should receive its own contract instead of mixing source
languages in implementation content.

### Voice Acting

No voice acting is assumed. Dialogue should be written to read well in text UI
with strong character voice, compact pacing, and clear branch intent.

## Open Narrative Questions

- What are the final names, pronouns, visual identities, and voice rules for the
  10 core classmates?
- Which of the 10 arcs are romance-compatible, and what does romance change
  without replacing friendship completion?
- Which 4-5 clubs become full-game identity layers, and which classmates connect
  to each club?
- Which 15-25 Lakeview destinations are in the full-game map, and which are
  relationship-introduced?
- What exact memory album categories should exist in the phone UI?
- How should academic future outcomes combine with relationship and club endings?
- Which classmate receives the first implementation-ready route script after the
  MVP popular status-holder arc?
- How should conflict and repair be represented inside arc progress without a
  separate conflict-state taxonomy?

## Source Handling Notes

The earlier `Lakeview Memory Map Draft - Discarded` section in the brainstorming
artifact was not promoted as source of truth. This document uses the later
`Lakeview Arc Map - Accepted Foundations` material instead.
