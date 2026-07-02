---
title: 'Narrative Design Document'
project: 'High School Story'
date: '2026-06-28'
author: 'Filip Piechowski'
version: '1.0'
stepsCompleted: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
status: 'complete'
narrativeComplexity: 'Heavy'
gdd: '_bmad-output/planning-artifacts/gdds/gdd-High School Story-2026-06-25/gdd.md'
scopeMode: 'Full NDD, MVP-first'
---

# Narrative Design Document

## High School Story

### Document Status

This narrative document is being created through the GDS Narrative Workflow.

**Narrative Complexity:** Heavy
**Scope Mode:** Full NDD, MVP-first
**Steps Completed:** 11 of 11 (Complete)

---

_Content will be added as we progress through the workflow._

## Story Foundation

### Narrative Premise

A custom student enters a new high-school semester in a fictional European town, trying to build a life out of ordinary days: lessons, friendships, clubs, recovery, social risks, and the small choices that decide who feels close and what gets missed. As time, energy, stress, school pressure, and fragile relationships compete for attention, the player cannot become everything to everyone. The story asks what kind of school life the protagonist will remember, and whether belonging is found by performing the right identity or by showing up for the people and moments that matter.

### Core Themes

**Nostalgia**  
The game treats school life as emotionally charged ordinary time: hallway routines, autumn events, lunch breaks, exams, texts, awkward first connections, and memories that later feel larger than they seemed.

**Belonging**  
The protagonist is not only trying to make friends, but to understand where they fit: in class, in clubs, in social groups, in quiet one-on-one trust, and in the town around the school.

**Missed Chances**  
The player cannot attend every event, deepen every bond, ace every subject, recover perfectly, and notice every person. Regret is not failure; it is part of making the semester feel personally authored.

**Identity Through Choices**  
The protagonist's identity emerges from repeated commitments: who they spend time with, what pressure they accept, what they avoid, whose version of events they believe, and what kind of life rhythm they build.

### Tone and Atmosphere

**Tone:** Warm, nostalgic, intimate, grounded, and socially sharp when needed. The game can include realistic humiliation, indirect vulgarity, painful rumors, public embarrassment, social cruelty, and occasional physical consequence such as a nosebleed, but avoids misery-as-aesthetic and overused profanity.

**Atmosphere:** The MVP semester has an autumn-to-winter atmosphere: cooler mornings, earlier dusk, warm indoor spaces, cafeteria noise, quiet libraries, club rooms, phone screens, cold evenings, Harvest Evening lights, and the emotional contrast between public school life and private reflection. This seasonal mood belongs primarily to the MVP semester. Later semesters may shift atmosphere with the school year: spring can feel more open, restless, romantic, and future-facing; later winter can feel compressed and exam-heavy; summer remains mostly off-screen unless future scope changes.

**Emotional Register:** Nostalgia first, attachment second, bittersweet reflection third. The game should often feel gentle, but not frictionless. The strongest emotional moments come from realizing that an ordinary choice mattered.

---

## Story Structure

### Structure Type

**Episodic calendar structure with an overarching relationship arc**

The semester is built from days, weeks, school routines, fixed events, lessons, club meetings, and relationship opportunities. Individual scenes and events are episodic, but they accumulate into a longer emotional arc shaped by wellbeing, academic pressure, missed chances, and authored relationship beats.

### MVP Act Breakdown

**Act 1: Arrival and First Impressions, Weeks 1-2**  
The player learns the school rhythm, meets the MVP classmates, sees early social roles forming, and receives the first signals that public reputations are incomplete.

**Act 2: Routine and Attachment, Weeks 3-6**  
The player starts building habits and preferences. Repeatable interactions begin to matter. Nell's second beat reveals writing, authorship, privacy, and the first real contradiction beneath her rumor-shaped persona.

**Act 3: First Pressure and Trust Test, Weeks 6-10**  
Club identity, social choices, and event pressure sharpen. Zine Deadline Crisis becomes Nell's MVP doorway into future friendship, proving that trust depends on attention, restraint, and flags, not only Bond.

**Act 4: Mid-Semester Identity, Weeks 11-15**  
The player's emerging lifestyle becomes visible: academic, social, club-focused, romantic-curious, balanced, chaotic, or lonely. Harvest Evening and other event memories reflect who the protagonist seeks out and who they miss.

**Act 5: Exam Pressure and Semester Consequence, Weeks 16-20**  
Academic pressure narrows the calendar. Relationships do not fully resolve, but the semester has produced memories, partial bonds, regrets, and identity signals that point toward the full game.

---

## Story Track Architecture

`High School Story` does not use one linear main plot as its only narrative structure. The MVP semester is organized through parallel narrative tracks: authored content lanes that overlap through calendar timing, location access, relationship state, wellbeing pressure, and player choice.

### Narrative Track Definitions

| Track | Function |
| --- | --- |
| Main Semester Arc | The broad structure of the MVP: arrival, onboarding, routine formation, mid-semester identity, exam pressure, and reflection. |
| Classmate Story Arcs | Authored relationship arcs tied to individual classmates. MVP uses Nell as the 3-beat relationship progression proof case while the other four classmates receive intro seeds. |
| Club Story Arcs | Science Club and Literary Club content. Clubs provide identity texture, special events, route variants, and insider context without replacing classmate arcs. |
| School Events | Fixed school-calendar events such as Class Integration Day. These show the class becoming a social organism. |
| Town Events | Fixed town/community events such as Harvest Evening. These show belonging beyond campus and give the semester its broadest community-memory anchor. |
| Academic / Wellbeing Arc | Lessons, homework, tests, Energy, Stress, Mood, recovery, and exam pressure as systemic narrative. |
| Romance / Compatibility Layer | Optional early romantic potential expressed inside existing scenes and events, not a standalone MVP romance arc. |
| Player Identity Arc | The emergent story of who the protagonist becomes through repeated choices, missed chances, habits, bonds, priorities, and memory flags. |

### Beat Type Definitions

| Beat Type | Purpose |
| --- | --- |
| Prologue Beat | Establishes life context before the school loop begins. |
| Onboarding Beat | Teaches or emotionally frames a core loop, location, or system. |
| Intro Beat | Establishes a classmate's public mask, first impression, wound seed, and relationship hook. |
| Relationship Milestone Beat | An authored relationship beat that requires Bond, context, story flags, or prior interaction. |
| Fixed Calendar Event | A school or town event that exists in the calendar and can be missed or partially attended. |
| Club Special Event | A contained larger club beat, usually 90 minutes, with member and non-member relevance where needed. |
| Systemic Pattern Beat | A narrative moment created through repeated behavior rather than one scripted scene. |
| Systemic Pressure Beat | A pressure moment created by academics, wellbeing, deadlines, or limited time. |
| Track Entry Beat | A beat that introduces an optional recurring content lane such as a club. |
| Event Foreshadowing Beat | Calendar, phone, social media, or NPC hints that make an upcoming event feel present before it occurs. |
| Reflection Beat | A summary or interpretation of accumulated choices without closing full-game arcs. |

### MVP Beat Map by Track

| Beat | Primary Track | Secondary Track | Beat Type | Timing | Criticality |
| --- | --- | --- | --- | --- | --- |
| Arrival to Town | Main Semester Arc | Player Identity / Dorm Life | Prologue Beat | Before Week 1 | Required |
| First Bell / New Semester Begins | Main Semester Arc | Academic / Wellbeing | Onboarding Beat | Week 1 | Required |
| The Perfect Answer | Classmate: Amelia | Academic / Wellbeing | Intro Beat | Week 1 | Required |
| Class Integration Day | School Events | Player Identity | Fixed Calendar Event | Week 1 | Required |
| The Photo Everyone Wants To Be In | Classmate: Charlotte | School Event / Nell Setup | Intro Beat | Week 1 | Required |
| The Version Everyone Knows | Classmate: Nell | Reputation / Social Media | Stranger Beat | Weeks 1-2 | Required for Nell arc |
| Walk It Off | Classmate: Oliver | Wellbeing / Public Image | Intro Beat | Week 2 | Required |
| The Phone He Broke | Classmate: Leo | Discipline / Social Cruelty | Intro Beat | Weeks 2-3 | Required |
| First Routine Forms | Main Semester Arc | Player Identity | Systemic Pattern Beat | Weeks 2-4 | Required |
| First Club Commitments | Club Story Arcs | Player Identity | Track Entry Beat | Weeks 3-5 | Optional / Track Critical |
| A Piece With No Name | Classmate: Nell | Literary Club optional | Relationship Milestone Beat | Weeks 3-5 | Required for Nell arc |
| Early Academic Pressure Rises | Academic / Wellbeing | Main Semester Arc | Systemic Pressure Beat | Weeks 4-7 | Required |
| Science Showcase Sprint | Club: Science | Amelia / Academic | Club Special Event | Weeks 6-10 | Optional / Track Critical |
| Zine Deadline Crisis | Club: Literary | Nell | Club Special Event + Relationship Milestone | Weeks 6-8 | Required for Nell arc |
| Harvest Evening Announcement | Town Events | Phone / Social Media | Event Foreshadowing Beat | Weeks 7-9 | Required |
| Harvest Evening | Town Events | Player Identity / Classmates | Major Fixed Calendar Event | Weeks 8-12 | Optional but Major |
| Mid-Semester Identity Check | Player Identity Arc | Main Semester Arc | Reflection Beat | Weeks 11-15 | Required |
| Exam Pressure Narrows Calendar | Academic / Wellbeing | Main Semester Arc | Systemic Pressure Beat | Weeks 16-19 | Required |
| Week 20 Exam Period | Academic / Wellbeing | Player Identity | Semester Gate | Week 20 | Required |
| Semester Reflection / Memory Ledger | Player Identity Arc | Main Semester Arc | Neutral Reflection Beat | Week 20 | Required |

### Prologue Beat: Arrival to Town

The game opens before the school loop begins. The protagonist travels by train to the larger town where they will attend high school because their home town does not have a suitable high school. The cutscene gives light background without overdefining the custom character: the protagonist is not fleeing a melodramatic catastrophe, but entering a new life stage earlier and more alone than before.

The first playable moment is practical and grounded: arriving at the bus stop, walking to the dorm, checking in, entering the room, and spending the first night there. This establishes relocation, dorm life, distance from home, and the emotional texture of starting over before the first school day starts the main loop.

Narrative functions:

- Establish the "new place" feeling before school systems begin.
- Make dorm life emotionally grounded rather than only a schedule anchor.
- Create the first nostalgia seed: leaving home, arriving somewhere unfamiliar, and lying awake before the first school day.
- Support subtle authored inner tone without replacing player authorship.
- Separate arrival into life context from the first day of school gameplay.

### Chronological Semester Beat Flow

| Phase | Timing | Major Beats |
| --- | --- | --- |
| Prologue | Before Week 1 | Arrival to Town; dorm check-in; first night alone. |
| Act 1: Arrival and First Impressions | Weeks 1-2 | First Bell / New Semester Begins; The Perfect Answer; Class Integration Day; The Photo Everyone Wants To Be In; The Version Everyone Knows; Walk It Off. |
| Act 2: Routine and Attachment | Weeks 3-6 | The Phone He Broke; First Routine Forms; First Club Commitments; A Piece With No Name; Early Academic Pressure Rises. |
| Act 3: First Pressure and Trust Test | Weeks 6-10 | Science Showcase Sprint; Zine Deadline Crisis; Harvest Evening Announcement. |
| Act 4: Mid-Semester Identity | Weeks 8-15 | Harvest Evening; Mid-Semester Identity Check; optional romance hints inside existing scenes. |
| Act 5: Exam Pressure and Semester Consequence | Weeks 16-20 | Exam Pressure Narrows Calendar; Week 20 Exam Period; Semester Reflection / Memory Ledger. |

### Cross-Track Interaction Rules

- Classmate arcs are meaningful, but none should read as the main story of the full game.
- Nell's MVP arc proves the relationship progression model; it does not make Nell or Literary Club more important than the other full-game classmate arcs.
- Club membership enriches classmate arcs with variants, insider context, stronger options, or better preparation, but it does not hard-gate core classmate progression.
- Harvest Evening carries the broadest MVP emotional peak because it belongs to the town/community layer rather than to one classmate or club.
- Zine Deadline Crisis is the strongest relationship proof moment because it demonstrates authored relationship progression, trust flags, and non-club route support.
- Romance potential is a scene layer in MVP, expressed through optional choices, chemistry, remembered preferences, softened tone, one-on-one variants, or charged responses inside existing beats.
- Semester Reflection / Memory Ledger remains neutral rather than epilogue-like. It summarizes memories, missed chances, relationship states, academic standing, wellbeing pattern, and identity signals without closing full-game arcs.

---

## Pacing and Flow

### Narrative Tempo

The MVP uses a slow-burn, calendar-driven, cumulative tempo. The game should not feel like a chain of dramatic cutscenes. Major authored beats are surrounded by repeatable daily choices, smaller interactions, texts, lunch moments, lessons, recovery, and missed opportunities.

### Tension Curve

Tension moves in waves rather than a straight escalation. The prologue creates solitude and relocation. Early weeks create social uncertainty and onboarding. Weeks 6-10 create the first major relationship and club pressure. Weeks 8-15 widen into community memory and identity formation through Harvest Evening and accumulated routines. Weeks 16-20 compress around exams and consequence.

### Story Density

The prologue is low-system, high-atmosphere. Weeks 1-3 are story-dense because the player must meet the cast and understand the school. Weeks 4-10 balance authored relationship beats with routine formation. Weeks 11-15 are more reflective and player-shaped. Weeks 16-20 reduce optional narrative density so academic pressure can breathe.

### Key Moments

**Highest systemic tension:** Week 20 Exam Period.

**Emotional MVP peak:** Harvest Evening, because it is the semester's broadest community-memory moment and asks whether the protagonist feels part of the town, the class, a specific bond, or still outside looking in.

**Strongest relationship proof moment:** Zine Deadline Crisis, because it demonstrates authored relationship progression, trust flags, and non-club route support without becoming the main story.

**Warmest social memory anchor:** Harvest Evening.

**Resolution beat:** Neutral Semester Reflection / Memory Ledger.

**Forward hook:** Classmate arcs remain open. Nell feels reachable as a future friend, but her full wound, Charlotte rupture, and deeper friendship arc remain unresolved.

---

## Characters

### Character Design Principles

Characters in `High School Story` begin from recognizable high-school media archetypes, then become specific through contradiction, wound, routine, relationship behavior, and system interaction. No core classmate should exist only as a trope, romance target, quest giver, stat gate, or club representative.

Across the full game, classmate arcs should stand on equal narrative footing. The MVP uses Eleanor "Nell" Graves as the relationship progression proof case, but this does not make Nell the main story character or Literary Club the central narrative path.

Each core classmate should connect to at least one gameplay system, one social context, one emotional wound, one public misunderstanding, and one future relationship arc question.

### Player Protagonist Framework

The protagonist is a custom student sent from a smaller home town to a larger town because their home town does not have a high school. They live in a dorm and begin the game in an unfamiliar place, separated from home routines and forced to build a school life from scratch.

The protagonist's parents exist as a light but real off-screen presence. They can occasionally contact the protagonist through the phone messaging app, and their existence is reinforced mechanically through a weekly allowance. Parent messages should be sporadic and event-driven rather than a regular daily check-in system.

The protagonist supports a subtle authored inner tone: the player controls identity, choices, habits, relationships, and priorities, while the narration may gently frame feelings of relocation, nostalgia, awkwardness, loneliness, attachment, stress, and reflection.

The game should not overdefine the protagonist's prior personality, family drama, romantic history, social status, or past trauma. Their backstory exists mainly to justify relocation, dorm life, parental distance, weekly allowance, and the emotional texture of starting over.

**Core motivation:** Build a life in a new school environment.

**Internal conflict:** Who am I becoming when every day requires choosing what I cannot do?

**External conflict:** Time scarcity, school pressure, social reputation, limited energy, dorm life, exams, distance from home, and relationship opportunities that cannot all be pursued.

Parent communication should support tone, logistics, allowance, homesickness, and occasional life-context moments, but it should not become a major family-drama arc in MVP.

### Antagonistic Forces / Pressure Sources

`High School Story` does not require one central villain. Its opposition is mostly systemic, social, emotional, and temporal.

| Pressure Source | Narrative Function |
| --- | --- |
| Time Scarcity | Forces missed chances and identity-defining tradeoffs. The player cannot maintain every relationship, ace every subject, recover perfectly, attend every event, and notice every important moment. |
| Academic Pressure | Makes school consequential without making grades the whole story. Tests, homework, lessons, and exams create stakes that compete with relationships and recovery. |
| Energy / Stress / Mood | Turns lifestyle into story. The protagonist's state reflects the cost of choices and changes the emotional tone of scenes. |
| Reputation | Makes classmates visible through partial, often unfair stories before the player understands them as people. |
| Social Hierarchy | Creates belonging pressure, exclusion, public image management, group placement, and the fear of being seen with the wrong person. |
| Performance Expectations | Pushes classmates to become useful, impressive, charming, strong, perfect, funny, or effortless at personal cost. |
| Distance From Home | Gives dorm life, solitude, parental messaging, allowance, homesickness, and new routines emotional weight. |
| Limited Attention | Forces the player to choose who receives care. Not noticing someone can matter, even when the player did not intend harm. |

Antagonistic forces should create pressure without turning the game cruel or punitive. The goal is not to punish the player for imperfect optimization, but to make ordinary choices feel emotionally consequential.

---

## MVP Classmate Cast

### Charlotte "Lottie" Fairchild

**Archetype:** Hyper-polished Queen Bee / perfect daughter.

**Public Role:** Emerging social center and image-maker of the class. Charlotte organizes attention: who gets included, photographed, complimented, invited, or quietly pushed to the edge.

**Subversion:** She is not naturally elite or effortlessly cruel. Her family is new money trying to look old money, and Charlotte has been trained into proof that the family belongs. Her polish is defensive, rehearsed, and guilt-reinforced.

**Core Wound:** Charlotte is terrified that if she stops looking effortless, everyone will see she was manufactured. Eleanor remembers enough of "Lottie" to prove that Charlotte Fairchild is a construction.

**Public Misunderstanding:** The player may first read her as vain, shallow, or simply mean. The deeper truth is that charm, taste, styling, and social control are survival tools she learned before she fully understood their cost.

**Relationship To Protagonist:** Charlotte can treat the protagonist as someone to place, test, style, include, or gently evaluate. Early connection with her should feel flattering and dangerous at once: being noticed by Charlotte can feel like social warmth until the player notices the terms.

**Relationship To Eleanor/Nell:** Charlotte and Eleanor knew each other before Charlotte's current persona hardened. Eleanor trusted Charlotte with private writing context. Charlotte did not necessarily intend to destroy her, but status panic and public non-defense helped the rumor harden.

**System Hooks:** Social hierarchy, Class Integration Day, fashion/status language, Social Media, cafe hangouts, group invitations, public/private dialogue contrast.

**Preferences:** Large group; social activity; pop; romance/drama; coffee/tea.

**Behavioral Tell / Scene Handle:** When rattled, Charlotte performs one tiny correction too many: smoothing a sleeve, touching a necklace, checking a reflection, or resetting her smile half a second too late. Her control cracks through over-correction, not obvious panic.

**MVP Beat Responsibility:** "The Photo Everyone Wants To Be In" establishes Charlotte's charm, social placement power, deniable cruelty, and the first visible tension around Eleanor.

**MVP Beat Guardrail:** The beat should make social placement concrete through framing, centering, marginal placement, captions, tags, invitations, and omissions. The harm should be deniable on the surface but emotionally legible underneath.

**Full Arc Direction:** From control to accountability, and from status to loyalty. Her full arc should not be "popular girl learns to be nice"; it should force Charlotte to stop managing optics and take responsibility inside a story that protects her while leaving Eleanor exposed.

### Oliver "Ollie" Grant

**Archetype:** Injured golden-boy jock.

**Public Role:** Warm, admired athlete and public symbol of school success. Oliver is approachable, physically confident, socially liked, and often treated as someone who naturally carries school pride.

**Subversion:** He is not carefree or uncomplicated. His body has become the place where other people store hope, pride, future plans, and expectations. His charm is real, but it also helps him hide pain.

**Core Wound:** Oliver believes that if his body fails, he fails everyone.

**Public Misunderstanding:** The player may first read him as lucky, popular, relaxed, and naturally strong. The deeper truth is that his "easy" confidence is partly camouflage for injury, fear, responsibility, and pressure to keep being useful.

**Relationship To Protagonist:** Oliver can become an early source of warmth, encouragement, and social ease. A connection with him should feel low-pressure at first, but the player may gradually notice small contradictions: a wince, a deflection, a too-quick joke, or a refusal to rest.

**Relationship To Charlotte:** Charlotte and Oliver are easy for the school to frame together as polished public symbols: the flawless popular girl and the golden athlete. This can create shallow public shipping or event-photo assumptions, but the deeper link is that both are rewarded for masks.

**System Hooks:** Sport/PE context, Energy, Stress, Mood, public image, recovery, convenience-store snacks/drinks, outdoor hangouts, school-spirit moments.

**Preferences:** Small group; outdoor activity; hip-hop/R&B; sports/action; pizza/fries.

**Behavioral Tell / Scene Handle:** Oliver masks pain through ordinary athletic habits: retying a shoe after stairs, joking while shifting weight off one leg, or volunteering to carry something before anyone can notice he should rest.

**MVP Beat Responsibility:** "Walk It Off" establishes Oliver's admired grit, hidden pain, and the danger of a school culture where self-damage is praised as courage.

**MVP Beat Guardrail:** The beat should show both the cost and the reward of self-damage: pain hidden under warmth, but also applause, admiration, team culture, teacher praise, or social media celebration.

**Full Arc Direction:** From being the unbreakable public symbol to becoming someone allowed to need care. His full arc should ask whether he can separate his value from performance, sport, and the future others have attached to his body.

### Eleanor "Nell" Graves

**Archetype:** Goth rumor girl / wounded writer.

**Public Role:** Rumor-shaped outsider. Students think they know Eleanor's story before they know her. Her presence tests whether the player accepts school narratives or listens for the person under them.

**Name Use:** At school she is generally "Eleanor." "Nell" should feel closer, older, or more intimate: used by people with real history, emotional access, or earned trust.

**Subversion:** Her goth image is not only aesthetic. It is a defense built after private heartbreak writing was exposed, misread, and flattened into a damaging school rumor. She would rather be misunderstood than exposed again.

**Core Wound:** If people decide your story for you once, they can do it again.

**Public Misunderstanding:** The player may first read her as cold, hostile, or performatively edgy. The deeper truth is that her edge is partly a warning label: a way to keep people from getting close enough to weaponize her vulnerability.

**Relationship To Protagonist:** Eleanor's relationship with the protagonist should grow through restraint, attention, and boundary respect rather than pursuit alone. The player earns trust not by extracting her secret, but by proving that closeness does not automatically mean loss of control.

**Relationship To Charlotte:** Eleanor and Charlotte have old history. Eleanor trusted Charlotte with private writing context, and Charlotte's status panic and public non-defense helped the rumor harden. The rupture remains unresolved in MVP.

**System Hooks:** Literary Club, Zine Deadline Crisis, Social Media/reputation, texting, library/quiet locations, writing/authorship, consent, privacy, one-on-one trust.

**Preferences:** Quiet company; creative activity; indie/alternative; indie/art; coffee/tea.

**Behavioral Tell / Scene Handle:** Eleanor leaves evidence of writing without claiming it too directly: draft titles on receipts, margin notes, folded scraps, anonymous fragments, or text saved without a name attached.

**MVP Beat Responsibility:** Eleanor is the MVP relationship progression proof case: "The Version Everyone Knows," "A Piece With No Name," and "Zine Deadline Crisis." These beats should prove that relationship progression requires more than Bond: it needs interactions, presence, attention, story flags, emotional specificity, and authored milestones.

**MVP Beat Guardrail:** Her MVP progression should reward restraint, attention, and boundary respect. Beat 3 should not reveal the full truth of the old rumor; it should test whether the player can help without taking control of her story.

**Full Arc Direction:** From guarded self-protection to chosen trust without surrendering authorship. Her full arc should not be about making her "less goth" or forcing her to publicly explain everything. It should be about letting closeness become safe while preserving her right to control what parts of her story are shared.

### Amelia Price

**Archetype:** Teacher's pet / top student / teachers' favorite.

**Public Role:** Teacher-trusted organizer and academic benchmark. Amelia is the student who knows the deadline, has the spare copy, answers correctly, and quietly makes the school system run smoother.

**Subversion:** She is not perfect because life is easy. She is parentified and invisibly neglected; school is the only system where effort reliably produces order. Her academic excellence is not vanity. It is structure, proof, and escape planning.

**Core Wound:** Amelia believes that if she stops being useful, excellent, and controlled, the chaos will catch her.

**Public Misunderstanding:** The player may first read her as privileged, judgmental, or naturally perfect. The deeper truth is that perfection is how she keeps panic organized.

**Relationship To Protagonist:** Amelia can become a source of practical support, study help, planning, and reliable advice. Early connection with her may feel efficient before it feels intimate. The player can notice that her helpfulness has a cost.

**Relationship To Leo:** Amelia and Leo are mirrors. Amelia trusts careful process because she needs the system to work; Leo distrusts process because he has watched it fail people in real time. Their conflict should expose a real design question: when rules move too slowly, what does care owe the person being hurt?

**System Hooks:** Lessons, homework, grades, Science Club, Science Showcase Sprint, teacher approval, recommendation pressure, study sessions, scheduling, stress.

**Preferences:** Planned activities; study; classical/soundtrack; documentary; homemade food.

**Romanceability:** Aromantic asexual; not romanceable. Full game should support a meaningful Best Friend path where the player matters deeply without romantic framing.

**Behavioral Tell / Scene Handle:** Amelia carries an emergency folder or pouch: spare paper, pen, plaster, timetable, forms, backup notes. Hidden among the practical items may be something softer, such as a homemade recipe she has not made for herself yet.

**MVP Beat Responsibility:** "The Perfect Answer" establishes Amelia's visible competence, teacher trust, over-preparation, and the loneliness under being the student who always has everything handled.

**MVP Beat Guardrail:** The beat should show not only that Amelia is ready, but that readiness has an invisible cost. Her helpfulness may appear before the player asks for it, making it useful but faintly uncomfortable.

**Full Arc Direction:** From perfection as survival to accepting help and wanting something for herself. Her full arc should let her discover that being cared for does not have to be earned through usefulness.

### Leo Ward

**Archetype:** Rebel skater / protective troublemaker.

**Public Role:** Known problem student and unofficial protector of people the system misses. Teachers often see incidents; some students know there is usually a reason.

**Subversion:** Leo is not lazy or rebellious for flavor. He cares sharply about cruelty and humiliation, but his justice is impulsive and can reproduce the same harm he hates. He also performs not caring because trying and failing would feel worse than being dismissed as careless.

**Core Wound:** Leo believes it is better to be dismissed as careless than exposed as not enough.

**Secondary Moral Wound:** He would rather be punished than watch someone be humiliated, even when his intervention creates collateral damage.

**Public Misunderstanding:** The player may first read him as unserious, lazy, violent, or naturally defiant. The deeper truth is that defiance is both protection and avoidance.

**Relationship To Protagonist:** Leo can become a source of humor, honesty, spontaneous plans, and low-polish loyalty. Early connection should feel casual and funny, but the player may gradually see that his jokes are often exits from fear, accountability, or wanting something.

**Relationship To Amelia:** Leo and Amelia are mirrors. Amelia trusts careful process because she needs the system to work; Leo distrusts process because he has watched it fail people in real time. Their conflict should expose a real design question: when rules move too slowly, what does care owe the person being hurt?

**System Hooks:** Detention, after-school spaces, skating/town edge locations, social cruelty, discipline, spontaneous hangouts, convenience store, practical help, low-structure friendship.

**Preferences:** Spontaneous plans; town exploration; rock/punk; comedy; spicy snacks.

**Behavioral Tell / Scene Handle:** Leo pretends not to listen, then proves he heard everything through action: tossing someone food without comment, taking the long way past a place they were nervous about, fixing something before anyone asks.

**MVP Beat Responsibility:** "The Phone He Broke" establishes Leo's protective instinct, reputation as a troublemaker, and the moral mess of fighting humiliation with counter-humiliation.

**MVP Beat Guardrail:** The beat should leave moral discomfort intact. Leo may protect someone for real, but his counter-humiliation can still hurt the aggressor, increase attention on the protected student, or create consequences he has to own.

**Full Arc Direction:** From punished outsider to someone willing to risk effort, future, and honest accountability. His full arc should ask whether he can protect people without hiding from his own desire to become something.

### MVP Beat Responsibility Summary

| Character | MVP Beat Coverage | Narrative Responsibility |
| --- | --- | --- |
| Charlotte "Lottie" Fairchild | 1 intro beat | Establish social hierarchy, image management, deniable cruelty, and Eleanor tension without resolving Charlotte's guilt. |
| Oliver "Ollie" Grant | 1 intro beat | Establish admired grit, hidden pain, school reward for self-damage, and the cost of being a public symbol. |
| Eleanor "Nell" Graves | 3 relationship beats | Prove relationship progression through trust, authored milestones, story flags, boundary respect, and non-club access routes. |
| Amelia Price | 1 intro beat | Establish academic benchmark, teacher trust, over-preparation, parentified competence, and the cost of always being ready. |
| Leo Ward | 1 intro beat | Establish protective instinct, troublemaker reputation, counter-humiliation, and morally messy justice. |

The MVP gives Nell the only 3-beat partial arc to prove the relationship model, but this must not make her feel like the main character of the full game. The other four classmates should feel equally important as future arc candidates even though MVP only gives them intro beats.

---

## Future-Facing 10-Beat Classmate Arc Skeletons

These skeletons define full-game direction for the 5 MVP classmates. They do not expand MVP scope. Beats 1-3 of Nell and beat 1 of the other four classmates are MVP-authored content; remaining beats are future-facing canon/skeleton.

### Eleanor "Nell" Graves - Trust and Authorship Arc

**Arc Question:** Can Nell let someone close enough to know the truth without feeling like she is handing them a weapon?

| Beat | Phase | Function |
| --- | --- | --- |
| 1 | Stranger | **The Version Everyone Knows:** The player meets the rumor before the person and gets a chance to withhold judgment. |
| 2 | Acquaintance | **A Piece With No Name:** The player encounters private or anonymous writing and must respect authorship boundaries. |
| 3 | Acquaintance | **Zine Deadline Crisis:** The player helps around authorship, consent, and reputation without taking control of Nell's story. |
| 4 | Friend | Nell allows a controlled truth: enough to make the player a real friend, not enough to expose the whole wound. |
| 5 | Friend | The Charlotte rupture becomes harder to avoid; Nell's anger is revealed as grief with teeth, but understanding that grief does not resolve Charlotte's accountability. |
| 6 | Friend | Nell lets the player see a tender or funny part of herself that does not exist only in relation to the rumor. |
| 7 | Close Friend | Nell intentionally shares something unfinished, vulnerable, or written for someone to see, testing chosen visibility. |
| 8 | Close Friend | The old rumor locally resurfaces or is socially reframed, forcing a bounded choice about truth, privacy, and who gets to speak without turning Nell into the center of a schoolwide scandal. |
| 9 | Final Path | Best Friend or Romantic route confirms closeness without ownership: the relationship must protect Nell's authorship, not consume it. |
| 10 | Final Path | Nell chooses what part of her story becomes public and what remains hers, ending the arc with agency rather than exposure. |

### Charlotte "Lottie" Fairchild - Status and Accountability Arc

**Arc Question:** What does it cost Charlotte to tell the truth about Eleanor if that truth also exposes who Charlotte used to be?

| Beat | Phase | Function |
| --- | --- | --- |
| 1 | Stranger | **The Photo Everyone Wants To Be In:** Charlotte's charm, taste, and social placement power reveal hierarchy and deniable cruelty. |
| 2 | Acquaintance | The player sees a private crack in Charlotte's polish: a moment where over-correction, embarrassment, or old "Lottie" warmth escapes before she can smooth it away. |
| 3 | Acquaintance | Charlotte helps someone while keeping the help deniable, revealing that she can be kind when kindness does not yet cost her image. |
| 4 | Friend | The player gets a glimpse of "Lottie": not a separate secret self, but a less managed version Charlotte does not trust others to see. |
| 5 | Friend | Her role in Eleanor's isolation becomes harder to smooth over; the player sees that Charlotte's guilt is specific, not abstract. |
| 6 | Friend | Charlotte must choose between controlling the room and telling a less flattering truth, creating the first real accountability test. |
| 7 | Close Friend | Charlotte lets the player see the family/status machinery behind her persona and how exhausting it is to perform belonging. |
| 8 | Close Friend | A public image crisis echoes the mechanism of Eleanor's isolation, forcing Charlotte to recognize how quickly private vulnerability becomes a public label without repeating Eleanor's wound one-for-one. |
| 9 | Final Path | Best Friend or Romantic route requires Charlotte to choose loyalty at visible social cost rather than privately feeling sorry. |
| 10 | Final Path | Charlotte stops using polish as denial; she remains stylish and socially fluent, but accountability becomes practical in how she uses social power even when no one rewards her for it. |

### Oliver "Ollie" Grant - Strength and Care Arc

**Arc Question:** Can Oliver learn that his value is not the same thing as being unbreakable?

| Beat | Phase | Function |
| --- | --- | --- |
| 1 | Stranger | **Walk It Off:** Admiration and injury culture become visible when Oliver hides pain while others praise grit. |
| 2 | Acquaintance | The player notices pain others miss: a physical tell, a private recovery habit, or a contradiction between public ease and bodily cost. |
| 3 | Acquaintance | Oliver deflects help with charm, humor, or responsibility, showing that being cared for feels more dangerous than being admired. |
| 4 | Friend | A younger student or teammate copies Oliver's "walk it off" behavior, forcing him to see that the culture hurting him is also being modeled through him. |
| 5 | Friend | Sport, family hope, and future opportunity collide; the player learns the concrete stakes behind stopping, such as scholarship pressure, parental pride, or fear of becoming a burden. |
| 6 | Friend | Oliver makes a damaging choice to keep being reliable, such as playing, performing, or showing up when he should not. |
| 7 | Close Friend | Oliver admits fear that without sport, strength, or usefulness, he becomes less valuable to the people who count on him. |
| 8 | Close Friend | The player helps Oliver decide what truth his body is allowed to tell: continued performance, honest recovery, or a bounded disclosure that changes how others see him. |
| 9 | Final Path | Best Friend or Romantic route reframes support as respect rather than pity; closeness means seeing his limits without reducing him to them. |
| 10 | Final Path | Oliver defines strength as knowing when not to break himself, ending the arc with agency and a healthier relationship to sport rather than simple withdrawal from it. |

### Amelia Price - Excellence and Selfhood Arc

**Arc Question:** Can Amelia accept help or want something for herself without feeling like she is risking her only escape route?

| Beat | Phase | Function |
| --- | --- | --- |
| 1 | Stranger | **The Perfect Answer:** Amelia becomes the visible academic benchmark: prepared, correct, teacher-trusted, and faintly lonely under the polish. |
| 2 | Acquaintance | The player sees that Amelia's readiness is load-bearing, not decorative: backup notes, forms, reminders, emergency supplies, and pre-emptive help. |
| 3 | Acquaintance | A recommendation, advanced program, teacher approval moment, or academic opportunity raises the stakes of her "perfect" performance because success feels like proof, safety, and a possible way out. |
| 4 | Friend | Amelia is offered help and struggles to accept it because needing support feels like losing control. |
| 5 | Friend | Leo or another less controlled student receives unexpected adult attention, making Amelia confront how one visible flash of need or potential can be valued more loudly than years of quiet consistency. |
| 6 | Friend | Home pressure intrudes into school performance: a message, responsibility, errand, sibling need, financial/logistical issue, or disrupted study plan. |
| 7 | Close Friend | Amelia admits she does not know who she is when she is not useful, prepared, or ahead of the next problem. |
| 8 | Close Friend | A deadline or responsibility forces Amelia to choose between flawless output and honest need: preserving the mask or letting someone see the unfinished, unsupported version of her before everything is handled. |
| 9 | Final Path | Best Friend route confirms deep non-romantic intimacy through trust, shared routines, practical care, and the rare permission to be unready, unhelpful, and still wanted. |
| 10 | Final Path | Amelia pursues a future that belongs to her: still competent, still ambitious, but no longer built only from grades, recommendations, escape planning, and being indispensable. |

### Leo Ward - Justice and Future Arc

**Arc Question:** Can Leo risk wanting a future before he knows whether he can reach it?

| Beat | Phase | Function |
| --- | --- | --- |
| 1 | Stranger | **The Phone He Broke:** The player sees Leo's protective instinct, troublemaker reputation, and the moral mess of fighting humiliation with counter-humiliation. |
| 2 | Acquaintance | The player sees effort hidden behind performed carelessness: a practical skill, repaired object, remembered detail, or quiet act of help he refuses to explain. |
| 3 | Acquaintance | Leo avoids a chance that would prove he wants more, using jokes, lateness, rule-breaking, or "not my thing" energy because failing at something wanted would hurt more than being dismissed as careless. |
| 4 | Friend | His protective anger helps someone but creates fallout, forcing the player to see both the value of immediate intervention and the collateral damage Leo must learn to own. |
| 5 | Friend | Amelia's rule-based worldview clashes with Leo's direct action; neither is made simply right, and the player sees why both positions exist. |
| 6 | Friend | Leo is offered a concrete path forward, such as a repair project, practical recommendation, creative task, or adult attention tied to a skill he cannot joke away, and almost ruins it first. |
| 7 | Close Friend | Leo admits that trying scares him more than punishment because punishment confirms the story he already knows how to survive. |
| 8 | Close Friend | He must repair harm caused by his method, not only defend his motive: apology, practical restitution, protecting the victim's privacy, or accepting consequences without turning it into a joke. |
| 9 | Final Path | Best Friend or Romantic route asks Leo to be honest without hiding behind humor, spectacle, or protective anger. |
| 10 | Final Path | Leo risks wanting a future before knowing whether he can reach it, ending the arc with humor, directness, effort, and accountability rather than simple rebellion. |

---

## Future Full-Game Classmate Archetype Slate

The full game target is 12 core classmates. The 5 MVP classmates are fixed and documented above. The remaining 7 classmates are defined here at seed level only: they are not MVP scope, full character sheets, or committed 10-beat arcs yet.

### Seed-Level Scope

These archetypes exist to guide full-game cast balance. They should remain flexible until future narrative design, production estimates, and system planning confirm which classmates are implemented.

The 7 non-MVP classmates should:

- Broaden the school-life fantasy beyond the MVP cast.
- Avoid duplicating MVP classmate wounds one-for-one.
- Add new system hooks for full-game school, town, club, event, memory, and identity content.
- Preserve equal footing across classmate arcs; no future classmate should be designed as the hidden main story character.

### Confirmed Non-MVP Archetype Slate

| Slot | Archetype Seed | Narrative Function | Possible System Hook | Risk / Cliche To Avoid |
| --- | --- | --- | --- | --- |
| 6 | Class Clown / Meme Maker | Humor as social currency and avoidance; making everyone laugh while fearing sincerity or becoming the joke. | Social Media, Mood, class disruption, viral posts, reputation. | Do not make them only comic relief or a walking meme machine. Their humor should sometimes protect, wound, deflect, or fail. |
| 7 | Student Council Organizer | Institutional responsibility, leadership pressure, usefulness as popularity, and the danger of becoming the school's friendly face. | School events, schedules, policy, leadership, Class Integration/Festival planning. | Do not make them a bland rule-follower. Their conflict should come from carrying institutional pressure while still wanting peer belonging. |
| 8 | Part-Time Worker / Local Kid | Town-rooted perspective; knows the place before the protagonist arrives; money pressure and local obligations contrast with dorm-student freedom. | Cafe/store, jobs, town events, money, local rumors, Harvest Evening. | Do not reduce them to economic hardship texture. They should carry local memory, pride, fatigue, and a different relationship to the town. |
| 9 | Yearbook Photographer / Keeper of Candid Moments | Memory, nostalgia, and the question of how the class will be remembered. They preserve moments others do not know are becoming important. | Yearbook photos, candid shots, unlockable memories, photo selection, school history. | Do not make them Nell 2.0 or a quiet martyr. The key contrast is visual memory and archival choice, not secret writing or rumor. |
| 10 | Sci-Fi / Fantasy Nerd / Tabletop Lorekeeper | Imagination, escapism, nerd friendship, and shared fictional worlds as a language for real fear, loyalty, and courage. | School RPG campaign, character-class choices, fantasy/sci-fi mini-events, comics/cards/collectibles. | Avoid the socially awkward geek caricature. They can be socially perceptive while speaking a different emotional dialect. |
| 11 | Student Activist / Protest Spark | Values, youthful idealism, local justice conflicts, and the question of what remains from school convictions after time passes. | Petitions, posters, negotiations with school leadership, protest events, unintended consequences. | Do not make them a walking political thesis or moral preacher. Keep conflicts concrete, local, emotional, and imperfect. |
| 12 | Artistic Soul / Art Room Dreamer | Expression, sensual nostalgia, and leaving a visible trace in school space before the moment passes. | Murals, event decorations, school-space customization, sketchbook relationship moments, aesthetic choices. | Do not make them a pretentious tortured artist or duplicate Nell's writing wound. The medium is visual, spatial, tactile, and environmental. |

### Cast Balance Rationale

The non-MVP slate adds four broad emotional lanes not fully carried by the MVP cast:

- **Memory:** Yearbook Photographer / Keeper of Candid Moments.
- **Imagination:** Sci-Fi / Fantasy Nerd / Tabletop Lorekeeper.
- **Conscience:** Student Activist / Protest Spark.
- **Expression:** Artistic Soul / Art Room Dreamer.

These complement the three retained future archetypes:

- **Humor / online social energy:** Class Clown / Meme Maker.
- **Institutional school life:** Student Council Organizer.
- **Town-rooted everyday realism:** Part-Time Worker / Local Kid.

Together, the 7 future classmates broaden full-game coverage beyond the MVP's status, sport, authorship, academics, and rebellion axes.

### Future Design Guardrails

- Do not create full character sheets for these classmates until their role in the full-game scope is confirmed.
- Do not assign romanceability, final path, or 10-beat arcs yet.
- Avoid treating the slate as locked production scope; it is future-facing narrative direction.
- When each classmate is later developed, start from archetype recognition, then add subversion, wound, public misunderstanding, system hooks, and a 10-beat arc question.
- Keep each future classmate's system hook useful without making them only a representative of that system.

---

## World Building

### World Overview

**Setting:** Lakeview is a small fictional European school town with English naming and a light British/Central European texture. It is named for the lake beyond its old park and market-square area. The town is not a glamorous destination; it is the kind of place where students from smaller surrounding communities arrive by bus or train, where school routines define the week, and where ordinary moments can become lasting school memories.

**World Type:** Grounded modern school-life. There is no magic, sci-fi, supernatural layer, or mystery-thriller premise. The world is emotionally heightened through school rituals, social visibility, seasonal atmosphere, phone/social media pressure, and the way repeated choices become memory.

**World Rules:**

- Realistic consequences, heightened visibility.
- Lakeview behaves like a sincere memory of school: more concentrated, readable, and symbolically timed than strict realism.
- Students are not locked into formal cliques or faction identities; social roles are visible but fluid.
- Public moments travel through corridors, buses, event photos, phone posts, family connections, and repeated encounters.
- The town should support classmate arcs, player identity, event memories, and missed chances without becoming a large lore plot or town-management layer.

**Atmosphere:** MVP autumn/winter is cozy, cold, reflective, and melancholic: wet streets, early dusk, warm cafeteria noise, quiet library windows, phone screens at night, dorm rooms, and Harvest Evening lights. Later semesters can shift seasonally: spring and early summer become more open, busy, energetic, romantic, public, and future-facing.

**Unique Elements:**

- Lakeview as a regional school hub.
- The lake as a seasonal mood mirror.
- Lakeview High as a boarding/commuter crossroads.
- A compact set of memorable school and town landmarks.
- Recurring micro-NPCs, town vendors, dorm staff, teachers, and social media posts as low-scope continuity.
- Town events as memory stages, with Harvest Evening as the MVP civic anchor.

---

### History and Backstory

**Timeline Overview:** Lakeview's history is modest but emotionally useful. The town became the educational center for nearby smaller communities because Lakeview High was the most stable high-school option in the area, supported by transport links, civic infrastructure, and eventually a dorm for students whose home towns could not offer a suitable school path.

**Major Events:**

- Lakeview High began in an older civic school building with institutional memory and local pride.
- A newer annex was added as more surrounding towns began sending students there.
- The dorm was added or expanded as a practical solution for out-of-town students with long or unreliable commutes.
- Harvest Evening became a recurring town-owned civic ritual that the school participates in through volunteers, families, teachers, students, clubs, and local vendors.

**Legends and Myths:** Lakeview does not need dramatic founding myths. Its mythology is social and remembered: old school stories, sibling reputations, family names, past event photos, teacher expectations, local shortcuts, and stories students inherit before they understand them.

**Hidden Secrets:** Lakeview's "secrets" are not conspiracy plots. They are ordinary social truths: reputations that outlive the original event, public stories that flatten private reality, local-versus-newcomer assumptions, family pressure, class differences, and the quiet distance between who someone is and what the school thinks it knows.

---

### Social Groups and Institutions

Lakeview's social groups are not RPG factions. They are grounded social institutions and forces that shape availability, pressure, visibility, and belonging.

#### Lakeview High Staff

**Purpose:** School rules, academic pressure, teacher impressions, recommendations, discipline, support, and adult visibility.

**Leadership:** Headteacher, subject teachers, club supervisors, and dorm-adjacent staff where relevant.

**Goals:** Keep the school functioning, maintain standards, support students unevenly, and enforce rules.

**Methods:** Lessons, homework, tests, teacher notes, club oversight, discipline, recommendations, and event supervision.

**Relationships:** They interact with students through pressure and care, not villainy.

**Story Role:** Creates academic stakes, teacher attention, recommendation pressure for Amelia, discipline texture for Leo, and public adult presence at events.

#### The Dorm Circle

**Purpose:** Curfew, homesickness, substitute home, evening routine, shared loneliness, and dorm gossip.

**Leadership:** Dorm supervisor and practical dorm rules.

**Goals:** Keep resident students safe, housed, and on schedule.

**Methods:** Curfew, reminders, common-room routines, dorm-only evening time, and occasional phone/home contrast.

**Relationships:** Dorm students share a different rhythm from locals and commuters.

**Story Role:** Grounds the protagonist's relocation, first night alone, parent messages, weekly allowance, and the feeling of building a life away from home.

#### Lakeview Locals

**Purpose:** Town memory, inherited familiarity, family reputation, old stories, shortcuts, and social confidence that comes from already belonging.

**Leadership:** Informal; no formal structure.

**Goals:** None as a group. They represent students who already know Lakeview before the protagonist arrives.

**Methods:** Casual references, family recognition, local knowledge, event familiarity, and assumptions about newcomers.

**Relationships:** Can be welcoming, careless, oblivious, protective, or exclusionary depending on the person.

**Story Role:** Makes belonging feel earned without turning locals into a hostile clique.

#### Commuter Students

**Purpose:** Bus/train timing, split life, after-school constraints, fatigue, and moving between school and home worlds.

**Leadership:** None.

**Goals:** Manage school life around transit and distance.

**Methods:** Early departures, timetable awareness, missed invitations, station routines, and availability limits.

**Relationships:** They contrast with dorm students and locals.

**Story Role:** Reinforces Lakeview as a regional hub and turns travel into social texture.

#### Science Club

**Purpose:** Academic identity, experimentation, project pressure, and structured competence.

**Leadership:** Club supervisor and student regulars.

**Goals:** Meet weekly, build projects, prepare small demonstrations, and support Science Showcase Sprint.

**Methods:** Research, setup, presentation, materials, teamwork, and problem-solving.

**Relationships:** Strong tie to Amelia; accessible to others without hard-gating core classmate arcs.

**Story Role:** Provides club identity, academic pressure, and a contained MVP special event.

#### Literary Club

**Purpose:** Writing, authorship, editing, consent, reputation, and creative vulnerability.

**Leadership:** Club supervisor and student regulars.

**Goals:** Meet weekly, prepare writing material, and support Zine Deadline Crisis.

**Methods:** Drafting, editing, layout, reading, anonymous submissions, zine work, and boundary decisions.

**Relationships:** Strong tie to Nell; membership adds context but does not hard-gate her core arc.

**Story Role:** Supports the relationship progression proof case around authorship and trust.

#### Town Vendors and Volunteers

**Purpose:** Civic texture, Harvest Evening, small purchases, food, stalls, charity/donation flavor, and town continuity.

**Leadership:** Informal town event organizers and local volunteers.

**Goals:** Make town events feel communal, modest, and socially revealing.

**Methods:** Stalls, event setup, volunteer lines, recurring micro-NPCs, and small public encounters.

**Relationships:** Connects students, families, teachers, and locals outside the school mask.

**Story Role:** Gives Lakeview a memory outside campus without becoming a town simulation.

#### Student Social Feed

**Purpose:** Visibility, rumor, event signals, photos, social proof, and incomplete information.

**Leadership:** None.

**Goals:** Not a faction; it is a social force.

**Methods:** Posts, blurred photos, event reminders, jokes, comments, location signals, and rumor fragments.

**Relationships:** Amplifies public moments and supports discovery without replacing in-person presence.

**Story Role:** Carries the "heightened visibility" rule and supports Nell/Charlotte texture, event awareness, and missed-chance feeling.

#### The Class Cohort

**Purpose:** Immediate social arena for first impressions, hallway reactions, seating, class dynamics, and shared event memory.

**Leadership:** None.

**Goals:** None as a formal group.

**Methods:** Group reactions, classroom presence, Class Integration Day, lunch tables, and corridor memory.

**Relationships:** The protagonist's main peer environment.

**Story Role:** Makes school feel socially alive without freezing classmates into rigid cliques.

---

### Key Locations

#### Train / Bus Arrival Point

**Description:** The first practical edge of Lakeview: a station or bus stop where the protagonist arrives with luggage before reaching the dorm.

**Narrative Significance:** Establishes relocation, distance from home, and the first playable movement into a new life.

**Atmosphere:** Transitional, quiet, slightly exposed, full of arrival nerves.

**Key Events:** Prologue arrival, first walk toward dorm, possible future commute references.

**Inhabitants:** Commuters, students arriving from nearby towns, occasional town micro-NPCs.

#### School / Dorm Entrance and Courtyard

**Description:** The shared campus threshold connecting Lakeview High, the dorm, and daily movement.

**Narrative Significance:** The main anchor of school life: first bell, after-school choices, curfew return, and repeated daily recognition.

**Atmosphere:** Busy in the morning, loose after school, quiet and colder in the evening.

**Key Events:** First school day, Class Integration Day setup, short social contacts, after-school route decisions.

**Inhabitants:** Students, teachers, dorm residents, staff, classmates passing through.

#### Dorm / Private Room

**Description:** The protagonist's temporary home: a practical student room inside the dorm system.

**Narrative Significance:** Sleep, recovery, homework, texting, homesickness, parent messages, weekly allowance, and the final dorm-only hour.

**Atmosphere:** Private, quiet, sometimes comforting, sometimes lonely.

**Key Events:** First night alone, evening wind-down, phone messages from parents, study/recovery choices.

**Inhabitants:** Protagonist, dorm supervisor nearby, other dorm students as ambient texture.

#### Classrooms / Old Wing / New Annex

**Description:** The academic heart of Lakeview High: older institutional spaces contrasted with newer growth-era rooms.

**Narrative Significance:** Lessons, teacher pressure, academic identity, homework consequences, and visible student roles.

**Atmosphere:** Focused, structured, sometimes warm, sometimes stressful.

**Key Events:** Lessons, teacher checks, tests, Amelia's intro beat, academic pressure beats.

**Inhabitants:** Teachers, classmates, Lakeview High Staff.

#### Cafeteria

**Description:** The lunch and recovery hub where noise, food, social visibility, and group dynamics collide.

**Narrative Significance:** Makes belonging visible: who sits where, who is invited, who eats quickly, who watches from the edge.

**Atmosphere:** Warm, noisy, public, socially readable.

**Key Events:** Lunch actions, quick recovery, casual social scenes, rumor texture, non-club access routes.

**Inhabitants:** Students, cafeteria worker, classmates, occasional staff.

#### Library / Study Room

**Description:** A quieter academic and emotional refuge, tied to homework, focus, private thought, and literary texture.

**Narrative Significance:** Supports study, Nell's authorship themes, Amelia's academic pressure, and quieter relationship moments.

**Atmosphere:** Quiet, reflective, protected, slightly fragile.

**Key Events:** Homework, study, Nell encounters, anonymous writing clues, academic prep.

**Inhabitants:** Librarian, studying students, Nell, Amelia, quiet classmates.

#### Science Club Room

**Description:** A practical room for experiments, materials, diagrams, prototypes, and structured project work.

**Narrative Significance:** Anchors Science Club and Amelia's academic identity without becoming her whole story.

**Atmosphere:** Focused, busy, slightly tense near deadlines.

**Key Events:** Weekly club meetings, Science Showcase Sprint.

**Inhabitants:** Science Club members, club supervisor, Amelia.

#### Literary Club Room

**Description:** A writing-focused club space for drafts, zines, submissions, layouts, and quiet creative risk.

**Narrative Significance:** Anchors authorship, consent, editing, reputation, and Nell's MVP proof arc.

**Atmosphere:** Intimate, paper-filled, thoughtful, vulnerable under pressure.

**Key Events:** Weekly club meetings, Zine Deadline Crisis.

**Inhabitants:** Literary Club members, club supervisor, Nell.

#### Cafe

**Description:** A nearby off-campus hangout for coffee, snacks, casual talks, small dates, and after-school decompression.

**Narrative Significance:** Proves that the protagonist has a life beyond campus while keeping travel meaningful.

**Atmosphere:** Warm, social, slightly adult-feeling compared to school.

**Key Events:** Hangouts, preference-based moments, quiet conversations, small spending choices.

**Inhabitants:** Students, locals, cafe staff, possible recurring micro-NPCs.

#### Convenience Store

**Description:** A practical nearby stop for snacks, coffee, small gifts, preparation items, and quick errands.

**Narrative Significance:** Supports light money use, gifts, recovery, and everyday town texture.

**Atmosphere:** Bright, ordinary, useful, slightly liminal after school.

**Key Events:** Small purchases, errand flavor, Leo or Oliver texture, quick town encounters.

**Inhabitants:** Store worker, students, local customers.

#### Park / Town Square / Lakeside Event Space

**Description:** Lakeview's civic outdoor space near the lake, used for community rituals and seasonal memory.

**Narrative Significance:** The broadest MVP emotional stage: belonging beyond school, public social choices, and Harvest Evening.

**Atmosphere:** Autumn lights, cold air, stalls, families, classmates outside their school masks, warm food, and limited time.

**Key Events:** Harvest Evening, future-facing seasonal rituals, possible full-game lakeside memories.

**Inhabitants:** Students, families, teachers, vendors, volunteers, local townspeople.

---

## Dialogue Framework

### Dialogue Style

**Overall Voice:** `High School Story` uses lightly cinematic grounded dialogue: concise, readable exchanges rooted in everyday school life, with selective heightened lines when a scene earns emotional weight. The dialogue should feel natural enough for routine play, but shaped enough to support nostalgia, social pressure, attachment, and bittersweet reflection.

**Style Elements:**

- Formality: Mostly casual between students; more formal, controlled, or careful around teachers, staff, public school procedures, and characters maintaining a social mask.
- Period: Modern, grounded, and phone/social-media aware without relying on disposable slang.
- Verbosity: Short, fast exchanges by default, with occasional longer emotional moments for authored beats, relationship milestones, major events, and reflection.
- Humor: Present and character-specific. Sharp irony, wit, sarcasm, awkward humor, and light meme/social-media energy can appear when they reveal character or enrich a scene.
- Profanity: Restrained and realistic. Vulgarity should carry emotional or social weight and should not be used as punctuation.

**Player Response Style:** Player dialogue options are usually short full sentences. They should express immediate stance, attention, restraint, curiosity, care, avoidance, humor, or boundary-setting without overdefining the protagonist's backstory, trauma, family history, romantic past, social class, or fixed personality.

**Dialogue Asset Types:**

| Dialogue Type | Function | MVP Scope Rule |
| --- | --- | --- |
| Authored Beat Dialogue | Required story beats, classmate introductions, Nell progression, major events, and semester reflection. | Full scenes only for named MVP beats. |
| Routine Micro-Dialogue | Hallway, class, lunch, dorm, club setup/cleanup, travel, recovery, and short check-ins. | Usually 1-4 exchanges; often one or no player choice. |
| Phone / Message Dialogue | Parent contact, event foreshadowing, social media, group chatter, reminders, and rumor texture. | Supports discovery and atmosphere without replacing in-person relationship building. |
| Reflection Dialogue | Subtle protagonist inner tone and memory ledger interpretation. | Framing only; preserves player authorship. |
| Variant Lines | Bond, stress, mood, club membership, event attendance, romance hint, missed chance, and prior-flag differences. | Prefer compact line swaps over alternate full scenes. |

**Character Voice Distinctions:**

- **Charlotte "Lottie" Fairchild:** Polished, socially fluent, precise. Compliments can double as control. When shaken, she over-corrects through phrasing, etiquette, or image management.
- **Oliver "Ollie" Grant:** Warm, easy, deflective. Uses jokes to keep concern away. Rarely names pain directly unless trust and pressure make avoidance impossible.
- **Eleanor "Nell" Graves:** Dry, guarded, observant. Says less than she notices. Uses sharpness to protect privacy and resists being narrated on demand.
- **Amelia Price:** Composed, practical, exact. Speaks in plans, contingencies, reminders, and useful information. Cracks appear when no plan exists or help is offered before she can control the situation.
- **Leo Ward:** Blunt, teasing, anti-formal. Uses humor as a shield and sometimes as a weapon. Surprisingly attentive through concrete details rather than sentimental speech.

---

### Key Conversations

#### Arrival / First Night Inner Tone

**Participants:** Protagonist, indirect parent/home presence through phone or memory.

**When:** Prologue, before Week 1 school loop.

**Topic:** Arrival in Lakeview, first dorm room, distance from home, first night before school.

**Purpose:** Establish relocation, subtle authored inner tone, dorm life, and the emotional texture of starting over.

**Tone:** Quiet, reflective, restrained, slightly lonely.

#### First Class / First Bell Social Calibration

**Participants:** Protagonist, class cohort, teacher/staff presence.

**When:** Week 1.

**Topic:** First school rhythm, teacher formality, classroom social temperature, early class presence.

**Purpose:** Teach dialogue register differences and introduce the class as a social arena.

**Tone:** Alert, uncertain, lightly awkward.

#### The Photo Everyone Wants To Be In

**Participants:** Charlotte, protagonist, surrounding classmates.

**When:** Week 1 / Class Integration Day context.

**Topic:** Group image, social placement, who is included, who is made visible or invisible.

**Purpose:** Establish Charlotte's charm, hierarchy, polish, and deniable cruelty.

**Tone:** Bright on the surface, socially sharp underneath.

#### The Perfect Answer

**Participants:** Amelia, protagonist, teacher, class context.

**When:** Week 1.

**Topic:** Correctness, preparation, teacher trust, academic expectations.

**Purpose:** Establish Amelia as the visible academic benchmark and reveal lonely over-preparation.

**Tone:** Controlled, impressive, faintly strained.

#### The Version Everyone Knows

**Participants:** Nell, protagonist, classmates or social feed texture.

**When:** Weeks 1-2.

**Topic:** Rumor versus person, reputation, withholding judgment.

**Purpose:** Establish Nell's Stranger beat and the first test of player attention/restraint.

**Tone:** Guarded, uncomfortable, observant.

#### Walk It Off

**Participants:** Oliver, protagonist, sport/PE or school-spirit context.

**When:** Week 2.

**Topic:** Injury, public admiration, deflection, pressure to be fine.

**Purpose:** Establish Oliver's warmth, pain avoidance, and school reward for self-damage.

**Tone:** Warm, energetic, quietly worrying.

#### The Phone He Broke

**Participants:** Leo, protagonist, affected student(s), school discipline/social rumor context.

**When:** Weeks 2-3.

**Topic:** Reputation, protective instinct, humiliation, counter-humiliation, consequences.

**Purpose:** Establish Leo's moral mess: he protects, but his methods create damage.

**Tone:** Tense, sharp, morally unsettled.

#### A Piece With No Name

**Participants:** Nell, protagonist, optional Literary Club or library/cafeteria context.

**When:** Weeks 3-5.

**Topic:** Anonymous writing, authorship, privacy, whether closeness grants access.

**Purpose:** Test player restraint and begin Nell's Acquaintance progression.

**Tone:** Quiet, fragile, boundary-focused.

#### Zine Deadline Crisis

**Participants:** Nell, protagonist, Literary Club members or non-member helper route.

**When:** Weeks 6-8.

**Topic:** Authorship, consent, editing pressure, reputation, private work becoming public.

**Purpose:** Prove authored relationship progression through flags, attention, and boundary respect.

**Tone:** Pressured, intimate, ethically sharp.

#### Science Showcase Sprint

**Participants:** Amelia, protagonist, Science Club members, supervisor.

**When:** Weeks 6-10.

**Topic:** Project pressure, contribution role, competence, deadlines.

**Purpose:** Give Science Club its MVP special event and make Amelia's competence visible under pressure.

**Tone:** Focused, urgent, practical.

#### Harvest Evening Social Choice Conversations

**Participants:** Protagonist, available classmates, town micro-NPCs, vendors, volunteers, teachers/families as texture.

**When:** Weeks 8-12.

**Topic:** Belonging, public event choices, small purchases, missed chances, preferences, romance hints.

**Purpose:** Use Lakeview's broad community event as the MVP emotional peak and memory stage.

**Tone:** Warm, seasonal, socially revealing, bittersweet.

#### Dorm Wind-Down / Recovery Check-Ins

**Participants:** Protagonist, phone contacts, occasional dorm texture, possible short classmate messages.

**When:** After major days, high-stress moments, missed events, or key milestones.

**Topic:** Fatigue, homesickness, event aftermath, recovery, small check-ins.

**Purpose:** Make wellbeing and distance from home narratively visible without adding full scenes.

**Tone:** Quiet, compact, reflective.

#### Semester Reflection / Memory Ledger

**Participants:** Protagonist reflection, system memory summary.

**When:** Week 20.

**Topic:** Memories, missed chances, relationship states, academic standing, wellbeing pattern, identity signals.

**Purpose:** Close the MVP semester neutrally without epilogue-like finality or full-game arc closure.

**Tone:** Bittersweet, observational, player-authored.

---

### Branching Dialogue System

**System Type:** Limited branching with convergence.

Dialogue choices change tone, flags, relationship response, memory tags, future acknowledgement lines, and sometimes beat outcomes, but most scenes return to the main authored structure. The system should create meaningful authored reactivity without multiplying full alternate scenes.

**Branch Triggers:**

- Player dialogue choice.
- Bond / relationship tier.
- Story flags from prior choices.
- Club membership or club participation.
- Prior attendance, missed events, or event outcomes.
- Mood, Energy, and Stress.
- Preferences and favorites.
- Romance compatibility and romantic potential flags.
- Soft protagonist attributes such as Empathy, Charisma, or Discipline where appropriate.

**Branch Scope:**

- Routine micro-dialogue: 0-1 choice.
- Standard authored beat: usually 2-3 meaningful response options.
- Major beat/event: several choices across the scene, but not fully separate scene versions.
- Most variation should be compact line swaps, short inserts, changed reactions, or follow-up acknowledgements rather than alternate full branches.
- Full divergent scene structures are reserved for rare future full-game route moments, not MVP routine content.

**Convergence:** Branches usually converge back into the main scene or calendar flow. Persistent differences are carried by flags, relationship state, tone memory, and future variant lines.

**Unique Content:** MVP should favor reusable structures with targeted unique lines. Unique dialogue should be concentrated in named authored beats, event moments, and important relationship thresholds.

**Consequence System:**

- Bond changes.
- Story flags.
- Trust/respect shifts.
- Mood, Stress, or Energy effects.
- Event memory flags.
- Club participation or preparation flags.
- Romance hint or compatibility acknowledgement where authored.
- Missed chance flags.
- Later acknowledgement lines in routine dialogue, phone messages, or reflection.

**Scope Guardrails:**

- Full emotional scenes are reserved for named MVP beats.
- Most micro-dialogue should remain 1-4 exchanges.
- Romance in MVP is a tone/choice/variant layer inside existing scenes, not a separate route.
- Phone/social media supports discovery and texture but does not replace in-person relationship building.
- Branching should express attention, restraint, care, humor, avoidance, and boundary-setting rather than creating large parallel narratives.
- Nell receives the MVP partial relationship arc as proof of the model; other classmates remain visible through strong intro beats, routine presence, event variants, and future-facing arc seeds.

---

## Environmental Storytelling

### Visual Storytelling

**Set Dressing:** Environmental storytelling is built from everyday school-life objects rather than heavy lore decoration. The core visual language comes from noticeboards, lockers, cafeteria trays, club posters, dorm desk items, zine pages, science materials, sports gear, phone screens, event photos, homework sheets, and small personal objects. Each detail should support routine, classmate arcs, wellbeing, events, seasonality, or memory/reflection.

**Environmental Details:** Lakeview should visibly remember what has happened. After Class Integration Day, posters, sign-up sheets, and rearranged tables can linger. After Zine Deadline Crisis, papers, drafts, layouts, or missing noticeboard space can show pressure and aftermath. After Science Showcase Sprint, materials, diagrams, or packed-away project items can remain. After Harvest Evening, the park/town-square space can shift from warm temporary lights and stalls to colder empty traces. These states should be production-light variations, not new locations.

**Visual Symbolism:** The game uses a mixed approach: a grounded everyday base plus a small set of recurring symbols for important emotional beats. Key motifs include lake reflections, windows at dusk, noticeboards and posters, photos, phone screens, empty desks or chairs, seasonal lights, handwriting, and repaired or broken objects.

**Color and Lighting:** The MVP semester uses autumn/winter contrast: cold outdoor light, wet streets, earlier dusk, amber interiors, cafeteria warmth, library quiet, dorm-window glow, and Harvest Evening lights. Later semesters can shift into brighter, greener, more open, more public seasonal palettes as spring and early summer make Lakeview feel busier and more alive.

**Character Environmental Tells:**

- **Charlotte:** curated photos, reflections, corrected details, polished accessories, and aesthetic control.
- **Oliver:** sports tape, scuffed gear, water bottles, recovery objects, and hidden signs of physical strain.
- **Nell:** scraps, margins, anonymous fragments, crossed-out titles, zine material, and handwriting.
- **Amelia:** folders, checklists, spare supplies, deadline notes, backup papers, and carefully arranged materials.
- **Leo:** repaired objects, stickers, scuffed wheels, practical fixes, and signs of intervention left without announcement.

---

### Audio Storytelling

**Ambient Design:** Audio should make school life feel present before dialogue begins. Key ambient sounds include school bells, hallway murmur, cafeteria noise, rain on windows, dorm corridors at night, bus/train arrival sounds, phone buzzes, page turns, chair legs on classroom floors, vending machine hum, sports hall echo, and park crowd texture during events.

**Music Integration:** Routine school life should lean lo-fi, cozy, ambient, and listenable across repeated play. Relationship beats, exams, Harvest Evening, and reflection can use stronger melodic or tension cues, but the music should remain restrained. It should open emotional space rather than tell the player exactly what to feel.

**Voice Elements:** MVP does not use full voice acting. Limited non-verbal reaction sounds may be used for emotional texture: a laugh, sigh, startled breath, short murmur, nervous exhale, or other non-word reaction. These should support character presence without locking dialogue production into full VO.

**Sound Design Narrative:** Recurring sounds act as memory anchors:

- School bell: time pressure and institutional rhythm.
- Phone buzz: social pull, anxiety, opportunity, and missed chances.
- Rain on windows: nostalgia, isolation, and inward mood.
- Cafeteria volume: social load and public belonging.
- Dorm door / curfew sound: boundary, distance from home, and evening constraint.
- Camera shutter: memory, image, public visibility, and Charlotte/Nell texture.
- Page turn / pen scratch: authorship, privacy, and Nell.
- Sports hall echo / shoe squeak: performance, body pressure, and Oliver.
- Folder zip / paper shuffle: control, preparation, and Amelia.
- Skate wheels / metal scrape: edge of rules, movement, and Leo.
- Soft crowd / temporary lights hum: Harvest Evening belonging.

**Audio Logs:** The game does not use audio logs as a found-content system. Recorded-audio collectibles are out of tone and scope for MVP. School announcements or chimes may exist as ambient event texture, not as collectible narrative content.

---

### Found / Diegetic Text Artifacts

**Document Types:** The game uses small diegetic text artifacts rather than a traditional lore-collectible system. Forms include notes, zine fragments, school notices, club flyers, homework sheets, calendar reminders, text messages, social media posts, event photos/captions, anonymous submissions, and limited school app/journal entries.

**Quantity:** MVP should use fewer, more meaningful artifacts rather than a large collectible pool. The target is a limited set of small fragments tied to named beats, events, recurring systems, and selected ambient texture.

**Content Focus:** Artifacts reveal character texture, event foreshadowing, classmate pressure, school atmosphere, rumors, missed chances, preferences, world texture, and the difference between public story and private truth. They should support current play rather than building a large external lore archive.

**Discovery:**

- **Required:** Key artifacts inside named beats or systems, such as school notices, Nell-related writing material, Zine Deadline artifacts, Harvest Evening posts, homework/deadline items, or essential phone messages.
- **Optional:** Ambient notes, social media fragments, event photos/captions, small posters, club flyers, recurring micro-NPC texture, and missed-chance traces.

**Rewards:** The reward for engaging with artifacts is context, story flags, variant lines, event awareness, relationship texture, memory ledger entries, or better emotional understanding. The game does not rely on lore completion achievements or collectible grind.

**Scope Guardrails:**

- No large codex/lorebook.
- No collectible document grind.
- No audio-log system.
- Smartphone archives discovered information, but does not become a completionist database.
- Artifacts should be short, readable, and directly useful to school-life play.
- Required artifacts must be clear and accessible; optional artifacts should add texture without blocking core progression.

---

## Narrative Delivery

### Cutscenes

**Quantity:** Medium-low, organized into tiers. Cutscenes exist as framing, authored beat support, and short sensory transitions, not as the dominant delivery mode.

**Average Length:**

- Tier 1 Major Framing Cutscenes: usually 30-120 seconds.
- Tier 2 Authored Beat Cutscenes / Scripted Scenes: usually 30-90 seconds or compact dialogue-scene length.
- Tier 3 Micro-Stings / Transitions: usually 5-15 seconds.

**Style:** In-engine pixel-art scripted scenes with dialogue/UI support. No pre-rendered animation is planned for MVP.

**Skippable:** Cutscenes should be skippable after first view. Text should always be advanceable or speed-up friendly.

**Interactive Elements:** No QTEs. Cutscenes may include dialogue choices, event choices, or a clean handoff into player control.

**Major Cutscene Tiers:**

#### Tier 1: Major Framing Cutscenes

- Train / Arrival to Lakeview.
- Dorm Check-in / First Night.
- First Bell / First School Morning.
- Harvest Evening Arrival / Event Framing.
- Semester Reflection / Memory Ledger.

#### Tier 2: Authored Beat Cutscenes / Scripted Scenes

- The Perfect Answer.
- The Photo Everyone Wants To Be In.
- The Version Everyone Knows.
- Walk It Off.
- The Phone He Broke.
- A Piece With No Name.
- Zine Deadline Crisis.
- Science Showcase Sprint.

#### Tier 3: Micro-Stings / Transitions

- New week / exam pressure.
- Event announcement.
- Club deadline reminder.
- Rain, dusk, or dorm return transition.
- Social feed / photo reveal.
- Missed chance / late arrival.
- Post-event environmental aftermath.

---

### In-Game Storytelling

**Primary Methods:**

- NPC conversations and authored beat dialogue.
- Routine micro-dialogue in class, hallways, cafeteria, dorm, clubs, travel, and town spaces.
- Phone, messages, social feed, calendar, map, and school app/journal.
- Environmental cues, location states, event aftermath, and diegetic text artifacts.
- Player actions such as attending class, choosing lunch company, studying, resting, joining club activity, visiting town, accepting invitations, or missing events.
- Relationship flags, event flags, wellbeing state, and memory ledger entries.

**Show vs. Tell Balance:** The game should show story through schedule pressure, location access, NPC availability, condition changes, public reactions, artifacts, and player routine. It should tell only where clarity is needed: school notices, phone reminders, teacher notes, event prompts, and concise UI summaries.

**Interruption Approach:**

- Low interruption during the routine daily loop.
- Moderate interruption during named authored beats and fixed events.
- Higher interruption only for major semester/event framing moments.

**Player Control:**

- Dialogue can be advanced or sped up.
- Previously seen cutscenes can be skipped.
- Phone/journal information can be reviewed when the player chooses.
- Optional content is discoverable and signposted, but not forcibly surfaced unless needed for required progression.

---

### Optional Content

**Optional Conversations:** Extra NPC dialogue, routine micro-dialogue, short check-ins, and follow-ups after beats or events.

**Optional Hangouts:** Short social activities at the cafe, park, convenience store, dorm, school spaces, or event spaces.

**Optional Club Participation:** Regular Science Club and Literary Club attendance, with variants around special events. Club membership enriches context but does not hard-gate core classmate arcs.

**Optional Town Activities:** Cafe visits, park time, convenience store errands, limited odd jobs, and small town flavor.

**Optional Event Participation:** Harvest Evening can be partially attended, shaped by limited time, limited money, social choices, and missed chances.

**Optional Phone / Social Content:** Messages, social feed posts, event reminders, missed-invitation traces, location hints, and public reaction texture.

**Optional Diegetic Artifacts:** Notes, posters, zine fragments, social posts, event photos/captions, school notices, club flyers, and short ambient text artifacts.

**Optional Romance Hints:** MVP romance is a tone/choice/variant layer inside existing scenes and events, not a full separate route.

**Future-Facing Optional Content:** Full classmate arcs, best friend routes, romantic routes, future classmates, more clubs, more town events, graduation reflection, and epilogue variations.

**Out of MVP Scope:**

- Large side-quest chains.
- Collectible lore grind.
- Secret endings.
- Post-game or New Game Plus design.
- DLC hooks as active narrative scope.

---

### Ending Structure

**MVP Ending Type:** Single semester ending with personalized variation.

The MVP does not end the full game. It closes the first 20-week semester through a neutral **Semester Reflection / Memory Ledger** rather than a traditional epilogue. The ending reflects the player's accumulated choices without declaring a perfect, true, or failed ending.

**Ending Triggers:**

- Major events attended or missed.
- Relationship states.
- Nell MVP progression state.
- Club participation.
- Academic standing.
- Wellbeing pattern.
- Romance hint flags.
- Event memory flags.
- Player identity signals.

**Ending Variety:** Variations are reflective and personalized rather than radically divergent. The semester can feel socially full, lonely, academically focused, chaotic, balanced, club-centered, romance-curious, regretful, or bittersweet depending on play.

**True Ending:** No true/golden ending for MVP. The design should avoid implying that perfect optimization is the correct way to experience school life.

**Failure State:** No hard narrative fail state for the semester. Weak grades, stress, missed events, or low relationship progress are reflected as consequences, not as a game-over ending.

**Full-Game Future Ending Sketch:** The full game should build toward graduation and final reflection. Future endings may include personalized epilogue variations for relationships, academics, future path, classmate arcs, romance, best friendship, and memory outcomes. These should remain memory-led and priority-based rather than a single universal golden ending.

---

## Gameplay Integration

### Narrative-Gameplay Connection

**Integration Approach:** `High School Story` integrates narrative through the daily school-life loop rather than placing story on top of it. Calendar time, limited actions, lessons, wellbeing, relationships, clubs, events, phone information, and memory tracking all express the story's emotional priorities: nostalgia, belonging, missed chances, and identity through choices.

**Mechanic-Theme Alignment:**

- **Nostalgia:** Seasonal calendar rhythm, fixed school events, memory flags, environmental artifacts, event photos, and semester reflection turn ordinary school routines into remembered moments.
- **Belonging:** Location access, lunch choices, invitations, dorm/local/commuter contrast, club participation, and repeated presence show where the protagonist is becoming part of Lakeview.
- **Missed Chances:** Time blocks, overlapping events, partial attendance, travel, curfew, Energy/Stress/Mood, and limited social bandwidth make absence and regret part of play.
- **Identity Through Choices:** Academic effort, study habits, social routines, club commitments, rest, spending, town visits, dialogue tone, and relationship attention define who the protagonist becomes.

**Story-Gameplay Balance:** The daily loop is primary. Authored story beats are milestones inside that loop. Events are pressure and memory anchors. Systemic micro-dialogue, phone/social content, environmental storytelling, and the Memory Ledger fill the spaces between major scenes.

**Ludonarrative Considerations:**

- Relationship progression must not become Bond grind; authored beats require attention, flags, timing, and context.
- Clubs enrich arcs with variants, context, and preparation, but do not hard-gate core classmate arcs.
- Optimization should not be framed as the correct way to play; missed chances and imperfect semesters are valid.
- Cutscenes should not overtake the daily loop.
- Phone/social media should support discovery and texture, not replace in-person presence.
- Romance is selective and authored, not a universal checklist.
- Wellbeing systems should affect story tone and opportunity cost without punishing the player into avoiding narrative content.

---

### Story Gating

**Gating Approach:** Mixed gating, mostly soft and contextual. Hard gates protect semester structure, onboarding, school attendance, and required system moments. Relationship and optional narrative content use contextual gates.

**Story-Locked Elements:**

- Relationship milestones.
- Certain dialogue variants.
- Club special event variants.
- Memory Ledger entries.
- Future friendship/romance path access.
- Some event outcomes or follow-up acknowledgements.

**Cutscene Triggers:**

- Prologue arrival.
- First school day / onboarding.
- Calendar events.
- Named authored beats.
- Club special events.
- Major event framing.
- Week 20 exam/reflection structure.
- Selected micro-stings for deadlines, event announcements, missed chances, and aftermath.

**Mandatory Story Beats:**

- Prologue arrival and dorm setup.
- First school day / core onboarding.
- Mandatory school attendance structure.
- Week 20 exam period.
- Semester Reflection / Memory Ledger.

**Guided / Semi-Required Exposure:**

The player should be exposed to all 5 MVP classmates early through class, social feed, events, lessons, lunch, hallway moments, or ambient school context. However, some full intro beats can be missed or delayed depending on player presence, timing, location, and choices.

A missed intro beat should not block semester completion. It may delay relationship progression, alter first impression, move information into a weaker catch-up variant, create a missed-chance flag, or appear in the Memory Ledger.

**Classmate Arc Gating:**

Classmate story beats unlock through a combination of Bond/tier, story flags, calendar timing, location/context, availability, and prior attention. Bond alone is insufficient.

Nell's 3 MVP beats are required only for Nell's MVP arc progression, not for completing the semester. The player can finish MVP without developing Nell's arc, but cannot progress Nell meaningfully without authored beats and relevant flags.

**Club Gating:**

Club membership provides variants, insider context, stronger preparation, lower friction, or additional flags. It does not hard-gate core classmate arcs. Non-member routes must exist for essential classmate progression where a club-owned event overlaps with a classmate arc.

**Wellbeing and Attribute Gating:**

Mood, Energy, Stress, and attributes can modify tone, options, risks, and outcomes. They should rarely hard-block core story. When they do block or weaken an option, the game should present it as a consequence of the protagonist's current condition, not as arbitrary denial.

**Optional Narrative:**

Optional content includes hangouts, routine conversations, most club attendance, town activities, partial event participation, phone/social fragments, diegetic artifacts, romance hints, and many relationship deepening opportunities.

---

### Player Agency

**Agency Level:** Meaningful choices within an authored semester structure.

The player does not create the story from nothing, but shapes which opportunities matter, which relationships deepen, what is missed, and what the semester means.

**Player Influence:**

- Daily routine and time allocation.
- Academic identity and subject investment.
- Wellbeing pattern.
- Relationship attention and progression.
- Club involvement.
- Event attendance and partial attendance.
- Dialogue tone, flags, and trust/respect outcomes.
- Romantic potential hints where authored and compatible.
- Memory Ledger contents.
- Missed chances.
- Order and depth of relationship discovery.

**Choice System:**

- **Choice types:** time choices, location choices, activity choices, dialogue choices, event choices, club participation choices, study/rest/social tradeoffs, spending choices, and attention/restraint choices.
- **Consequence scope:** immediate tone and stat effects, Bond changes, story flags, event memory flags, trust/respect shifts, future line variants, relationship pacing, and reflection outcomes.
- **Timing:** choices occur across the daily loop, lessons, breaks, lunch, after-school, evenings, weekends, events, authored beats, phone interactions, and semester reflection.

**Role-Playing Freedom:**

The protagonist is a custom student with chosen name, gender, appearance, starting attributes, favorites/preferences, and an emergent school identity. The game supports diligent, social, balanced, chaotic, withdrawn, club-focused, romance-curious, academically intense, recovery-focused, or mixed play styles.

The protagonist has a subtle authored inner tone, but dialogue and reflection should avoid forcing specific past trauma, family conflict, romantic history, social class, or fixed personality unless selected or established through play.

**Predetermined vs. Dynamic Narrative:**

- Fixed: calendar backbone, school attendance, semester structure, core systems, major event dates, authored classmate arcs.
- Dynamic: attendance, relationship depth, flags, event participation, dialogue tone, wellbeing pattern, academic standing, memory ledger, and which opportunities become personally meaningful.

---

## Production Planning

### Writing Scope

**Estimated Word Count:** MVP target of approximately 45,000-70,000 words, with a caution ceiling around 80,000 words. The full game will require separate future estimation and should not be treated as committed by this MVP estimate.

**Content Breakdown:**

- Main story / authored beats and events: ~18,000-28,000 words.
- Routine micro-dialogue, hangouts, and variants: ~12,000-20,000 words.
- Phone, social feed, messages, and diegetic artifacts: ~5,000-10,000 words.
- UI, journal, memory ledger, and system text: ~6,000-10,000 words.
- Revision and optional buffer: ~4,000-8,000 words.

**Scene Count:** MVP includes a medium-low cutscene tier structure, 7 classmate story beats, 2 club special events, 2 fixed major events, prologue/framing moments, routine micro-dialogue pools, phone/social content, and semester reflection. Full scene count should be tracked during content planning by asset type rather than as one flat number.

**Dialogue Lines:** MVP dialogue should be tracked by line/entry count during implementation. The production model should distinguish authored beat lines, routine micro-dialogue lines, phone/message entries, system text entries, and variant lines. Line count should be reviewed whenever new optional content or variant logic is added.

**Branching Complexity:** MVP uses limited branching with convergence. Scope should favor compact line swaps, short inserts, changed reactions, memory flags, and future acknowledgement lines over alternate full scenes. Full divergent scene structures are out of MVP scope except where explicitly approved for a named beat.

**Production Guardrails:**

- Do not let routine micro-dialogue become an uncontrolled content pool.
- Do not add new major cutscenes without replacing or cutting other authored content.
- Do not expand romance into full MVP routes.
- Do not treat phone/social feed content as free; it counts toward writing and QA scope.
- Every additional branch requires writing, implementation, testing, and localization consideration.

---

### Localization

**Approach:** MVP English only, localization-ready.

**Target Languages:** English for MVP. Future localization languages are TBD.

**Cultural Adaptation Notes:** Lakeview should remain a fictional European school town with English naming and a light British/Central European texture. Localization should not relocate the setting or rewrite its cultural frame into a different country. High-school media fantasy should remain readable while preserving Lakeview's fictional identity.

**Technical Considerations:**

- UI should support text expansion, with a planning buffer of roughly 30%.
- Dialogue boxes, phone UI, journal entries, social posts, buttons, tooltips, and memory ledger entries should be designed for variable text length.
- Text should be externalized and tagged by content type, character, scene/beat, flags, and localization status where possible.
- No dubbing plan is required for MVP.
- If localization happens later, it should cover text, UI, subtitles/captions if needed, and accessibility text rather than voiced dialogue.

---

### Voice Acting

**Approach:** Grunts/barks only / non-verbal reactions only.

**Characters Needing Voices:** No character requires full voiced dialogue in MVP. MVP cast may receive limited non-verbal reaction sets later if production budget supports polish.

**Dialogue Volume:** No spoken dialogue lines are planned for recording in MVP.

**Voice Elements:** Possible non-verbal reactions include laugh, sigh, gasp, startled breath, nervous exhale, short murmur, or similar non-word cues.

**Recording Approach:** Placeholder or licensed/library sounds are acceptable during prototype and early production. Professional recording may be considered only as a later polish pass.

**Rationale:** This preserves flexible text, reduces localization cost, avoids full VO production burden, supports rapid iteration, and protects solo-dev scope while still allowing characters to feel present.

---

## Appendix: Character Relationships

### Relationship Map

```text
                         [Lakeview Social Pressure]
                 time, school, visibility, reputation, missed chances
                                      |
                                      v
                              [Protagonist]
             custom student from smaller home town, dorm resident
                /          |           |           |           \
               v           v           v           v            v
        [Charlotte]    [Oliver]      [Nell]     [Amelia]      [Leo]
        status and     strength      trust and   excellence    justice and
        accountability and care      authorship  and selfhood  future
             |                         ^            ^            |
             | old friendship,         |            | mirror /   |
             | rupture, rumor          |            | worldview  |
             v                         |            | clash      v
          [Nell] <---------------------+         [Leo] -----> [School Discipline]
             |
             v
      [Literary Club / Zine Deadline]

[Amelia] ---> [Science Club / Science Showcase]
[Oliver] ---> [School Pride / Sport Pressure]
[Charlotte] -> [Class Cohort / Social Image]
[Protagonist] <-> [Dorm Circle / Home Voices]
[Protagonist] <-> [Lakeview Locals / Commuters / Town Vendors]
```

### Relationship Key

- **Protagonist -> Charlotte:** Optional classmate relationship shaped by social attention, image, status, and whether the player notices the difference between charm and control.
- **Protagonist -> Oliver:** Optional classmate relationship shaped by care, respect, injury pressure, and whether help is offered without pity.
- **Protagonist -> Nell:** MVP partial relationship proof case; progression depends on restraint, authorship respect, trust flags, and attention rather than Bond alone.
- **Protagonist -> Amelia:** Optional classmate relationship shaped by academic pressure, competence, support, and non-romantic best-friend potential.
- **Protagonist -> Leo:** Optional classmate relationship shaped by protective instinct, troublemaker reputation, accountability, and future-facing trust.
- **Charlotte -> Nell:** Former closeness and rupture; Charlotte is tied to the rumor mechanism around Nell, but their shared history must not become the hidden main story.
- **Amelia -> Leo:** Future-facing mirror pair around rules versus direct action, control versus improvisation, and different forms of care.
- **Oliver -> School Pride:** Oliver is socially rewarded for grit, making his body a public symbol of school/team confidence.
- **Charlotte -> Class Cohort:** Charlotte shapes social visibility and image inside the class without being reduced to a flat "popular girl" role.
- **Nell -> Literary Club:** Literary Club is her strongest thematic environment, but not a hard gate for her core arc.
- **Amelia -> Science Club:** Science Club supports her academic identity and pressure, but does not contain her entire arc.
- **Leo -> School Discipline:** Leo's methods often become more visible than his motive, creating tension with staff and reputation.
- **Protagonist -> Dorm Circle / Home Voices:** Dorm life and occasional parent messages ground relocation, homesickness, allowance, and evening routine.
- **Protagonist -> Lakeview Locals / Commuters / Town Vendors:** These groups shape belonging, visibility, event texture, and the difference between arriving somewhere and becoming part of it.

---

## Appendix: Story Timeline

### Chronological Events

```text
[BACKSTORY]
|
├── Lakeview becomes the regional school hub for surrounding smaller towns.
├── Lakeview High grows from older main building into newer annex.
├── Dorm is added or expanded for out-of-town students.
└── Harvest Evening becomes a recurring town-owned civic ritual.
|
v
[PROLOGUE: ARRIVAL TO LAKEVIEW]
|
├── Train / Arrival to Lakeview
├── Bus stop or station arrival
├── Walk to dorm
├── Dorm check-in
└── First night alone
|
v
[ACT 1: ARRIVAL AND FIRST IMPRESSIONS, WEEKS 1-2]
|
├── First Bell / New Semester Begins
├── Amelia - The Perfect Answer
├── Class Integration Day
├── Charlotte - The Photo Everyone Wants To Be In
├── Nell - The Version Everyone Knows
└── Oliver - Walk It Off
|
v
[ACT 2: ROUTINE AND ATTACHMENT, WEEKS 3-6]
|
├── Leo - The Phone He Broke
├── First Routine Forms
├── First Club Commitments
├── Nell - A Piece With No Name
└── Early Academic Pressure Rises
|
v
[ACT 3: FIRST PRESSURE AND TRUST TEST, WEEKS 6-10]
|
├── Science Showcase Sprint
├── Zine Deadline Crisis
└── Harvest Evening Announcement
|
v
[ACT 4: MID-SEMESTER IDENTITY, WEEKS 8-15]
|
├── Harvest Evening
├── Optional romance hints inside existing scenes
├── Relationship and club variants
└── Mid-Semester Identity Check
|
v
[ACT 5: EXAM PRESSURE AND SEMESTER CONSEQUENCE, WEEKS 16-20]
|
├── Exam Pressure Narrows Calendar
├── Week 20 Exam Period
└── Semester Reflection / Memory Ledger
|
v
[FUTURE-FACING FULL GAME]
|
├── Later semesters shift seasonal mood and social pressure.
├── MVP classmates continue toward full 10-beat arcs.
├── 7 non-MVP classmates enter through future classmate archetype slate.
├── Full friendship, romance, academic, club, and town paths deepen.
└── Graduation / final reflection resolves full-game memory outcomes.
```

### Timeline Notes

- MVP covers one 20-week autumn-to-winter semester, not a compressed full game.
- The Prologue occurs before the main school loop begins and establishes relocation, dorm life, and distance from home.
- Nell receives 3 MVP relationship beats as the relationship progression proof case. These are required only for Nell's arc progression, not for completing the semester.
- The other 4 MVP classmates receive early/introduction beats in MVP, with full 10-beat arcs sketched as future-facing canon.
- Harvest Evening is the broadest MVP emotional peak because it belongs to Lakeview and the community layer rather than one classmate or club.
- Zine Deadline Crisis is the strongest relationship proof moment but must not become the main story of the game.
- Week 20 ends with a neutral reflection screen / Memory Ledger, not an epilogue-like closure.

---

## Appendix: References and Inspirations

### Reference Compass

These references are not mandates to copy tone, plot, or content. They provide orientation for future writers and designers.

**Primary Emotional References:**

- **My So-Called Life:** Intimate teen subjectivity, awkward emotional realism, school identity, friendships, family distance, and adolescent self-perception.
- **Freaks and Geeks:** Ensemble school-life texture, social groups, small humiliations, comedy mixed with tenderness, and characters becoming more than their labels.
- **The Perks of Being a Wallflower:** Belonging, friendship, memory, vulnerability, and bittersweet coming-of-age feeling.

**Social Hierarchy / Comedy References:**

- **Mean Girls:** Social hierarchy, public image, deniable cruelty, rumor mechanics, and witty teen social observation.
- **Easy A:** Reputation, social labels, rumor escalation, and identity performance.
- **Booksmart:** Missed chances, academic over-focus, friendship, and the late realization that school life was also meant to be lived.
- **The Breakfast Club:** Recognizable high-school archetypes becoming more human beneath the label.
- **The Edge of Seventeen:** Sharp teen voice, awkward humor, isolation, and messy self-perception.

**Cautionary Boundary Reference:**

- **13 Reasons Why:** Useful only as a cautionary reference for teen social consequences, rumor gravity, public/private truth, and school communities misreading pain. `High School Story` should avoid thriller escalation, misery-as-aesthetic, and trauma-centered sensationalism; its tonal priority remains nostalgia, attachment, and bittersweet reflection.

### Design Reference Carryover From GDD

- **Persona 5:** School-life scheduling and relationship fantasy as a structural reference, without combat framing.
- **Stardew Valley:** Daily rhythm, community texture, routine attachment, and player-shaped memory.
- **The Sims:** Readable life-management layer, player identity through repeated choices, and emergent lifestyle patterns.
