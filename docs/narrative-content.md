# Narrative Content

## Ownership

This document is the BMAD-native source for implementation-ready authored
narrative content in High School Story. Full-game narrative design lives in
`docs/narrative-design.md`. This document replaces the previous
`docs/narrative/` split for playable scripts and should be updated before or
with changes to authored story beats.

## Intro: Arrival To Lakeview

### Purpose

| Field | Value |
|---|---|
| Scene type | Playable intro sequence after character creation. |
| Timeline | Late afternoon on August 29, the day before the first day at Lakeview High. |
| Function | Establish separation from home, guide the player to the dorm, and hand off into the first freeform school day. |
| Tone | Quiet, nervous, hopeful, slightly lonely. |

### Implementation Notes

- Use `{firstName}` and `{lastName}` for player name tokens.
- Internal thoughts can be narration, thought bubble, or unvoiced subtitle text.
- The bus stop segment should allow short free movement and optional
  ask-for-directions interactions.
- The scene ends when the player goes to sleep in the dorm room.
- The next morning transitions into the normal unscripted game loop.

### Scene Flow

1. Bus ride into Lakeview.
2. Phone vibration and text exchange with parents.
3. Internal reaction from the player.
4. Bus arrives at the stop near the dorm district.
5. Player can ask a few passersby for directions.
6. Player reaches the dorm and checks in.
7. Player is directed to their room.
8. Final internal monologue in the room.
9. Player goes to sleep.
10. Fade out and begin the next day.

### Required Beats

- Phone vibration interrupts the bus ride before arrival.
- At least one parent message chain is readable before the player gets off the
  bus.
- The first text reply expresses player attitude, not only logistics.
- Player can reply once before arrival and once after reaching the room.
- At least two optional pedestrians are available near the stop.
- Direction prompts support different social styles such as polite, awkward, or
  direct.
- Dorm supervisor interaction is mandatory.
- Sleep interaction ends the intro and starts the next day.

### Canonical Script

#### 1. Bus To Lakeview

Late afternoon. The bus hums along a road lined with fields and scattered houses.
Warm light spills through the windows. In the distance, Lakeview slowly comes
into view.

THOUGHT (`{firstName}`):
So this is it.

THOUGHT (`{firstName}`):
Lakeview.

THOUGHT (`{firstName}`):
Tomorrow I walk into Lakeview High... and that is the start of three whole years
here.

THOUGHT (`{firstName}`):
Three years away from home.

A low vibration buzzes from the smartphone.

#### 2. Parents' Messages

The player checks the phone. A short text thread from Mom and Dad is open.

MOM:
Did you get there yet?

DAD:
Or are you still on the bus?

MOM:
Text us as soon as you arrive.

DAD:
And do not wander around town with that big bag. Go straight toward the dorm.

MOM:
Good luck tomorrow, sweetheart. First days are always stressful, but you will be
fine.

DAD:
You will manage. Just keep your head up.

PLAYER - TEXT REPLY OPTION A, CALM:
Still on the bus. I am almost there.

PLAYER - TEXT REPLY OPTION B, RESPONSIBLE:
Not yet. I will head straight to the dorm and text you when I get there.

PLAYER - TEXT REPLY OPTION C, VULNERABLE:
Not yet. I am almost there... just a little nervous.

After any option:

MOM:
All right. Message us when you get off.

DAD:
Remember: dorm first, everything else later.

MOM:
We are proud of you.

#### 3. Internal Beat

THOUGHT (`{firstName}`):
They make it sound easy.

THOUGHT (`{firstName}`):
New town. New school. New room. New everything.

THOUGHT (`{firstName}`):
I only have to survive one evening.

THOUGHT (`{firstName}`):
Then tomorrow... I guess my real life here starts.

The bus slows down. Buildings pass outside the window: a convenience store, a
crosswalk, apartment blocks, and a sign pointing toward Lakeview High.

BUS DRIVER:
Lakeview. Last stop.

#### 4. Arrival At The Bus Stop

The bus doors fold open. The player steps out with a bag. The engine rumbles
away, leaving the street suddenly quiet.

THOUGHT (`{firstName}`):
And just like that... I am here.

THOUGHT (`{firstName}`):
Okay. Dorm first.

Objective appears: `Find the Lakeview High dormitory.`

#### 5. Optional Direction NPCs

Only a few people are around. The player may ask one or more for directions.

Passerby 1: elderly woman with grocery bags.

PLAYER - ASK OPTION, POLITE:
Excuse me. Do you know where the Lakeview High dorm is?

ELDERLY WOMAN:
The student dorm? Of course.

ELDERLY WOMAN:
Go straight to the next intersection, then turn left at the vending machines. You
will see a brick building with a small front garden.

ELDERLY WOMAN:
If you reach the school gates, you have gone a little too far.

PLAYER:
Thank you.

ELDERLY WOMAN:
First day tomorrow?

PLAYER:
Yeah.

ELDERLY WOMAN:
Then try not to look this worried. Everyone can tell.

Passerby 2: student in a sports jacket.

PLAYER - ASK OPTION, AWKWARD:
Hey, sorry. Is the Lakeview High dorm close from here?

STUDENT:
Yeah, pretty close.

STUDENT:
Straight ahead, left at the corner store, then keep walking until you see the
bicycles out front.

STUDENT:
You new?

PLAYER:
That obvious?

STUDENT:
You are carrying your whole life in one bag, so... yeah.

STUDENT:
Do not worry. Tomorrow will be chaos for everyone, not just you.

PLAYER:
Good to know.

Passerby 3: tired office worker.

PLAYER - ASK OPTION, DIRECT:
Sorry, could you point me toward the Lakeview High dorm?

OFFICE WORKER:
Student dorm? Down that street.

OFFICE WORKER:
There is a sign by the entrance, but it is easy to miss when it starts getting
dark.

OFFICE WORKER:
If you see the school fence, look to your right.

PLAYER:
Thanks.

OFFICE WORKER:
No problem. Good luck tomorrow.

#### 6. Walking To The Dorm

The player follows directions through a calm neighborhood. Evening settles in.
Cicadas hum. Windows glow one by one. Ahead, a modest brick building stands
behind a low fence and a metal sign: `Lakeview High Student Dormitory`.

THOUGHT (`{firstName}`):
That has to be it.

THOUGHT (`{firstName}`):
No turning back now.

Objective updates: `Check in at the dorm entrance.`

#### 7. Dorm Check-In

Inside, the lobby is clean but plain. A fluorescent light buzzes softly above a
front desk. A tired but organized dorm staff member looks up from a clipboard.

DORM SUPERVISOR:
You must be the new arrival.

DORM SUPERVISOR:
Name?

PLAYER:
`{firstName} {lastName}`.

The supervisor checks the list.

DORM SUPERVISOR:
Right. We were expecting you.

DORM SUPERVISOR:
Your room is on the second floor, room 214.

DORM SUPERVISOR:
Bathrooms are at the end of the hall. Quiet hours start at ten. Curfew is nine in
the evening unless the school approves otherwise.

DORM SUPERVISOR:
Classes begin tomorrow, so get some rest.

PLAYER:
Okay. Thanks.

DORM SUPERVISOR:
If you get lost, the floor map is posted by the stairs.

DORM SUPERVISOR:
Welcome to Lakeview.

#### 8. First Look At The Room

The player enters room 214. It is small but tidy: bed, desk, wardrobe, curtains,
and the faint smell of detergent and old wood. One bag placed in the corner is
enough to make it feel occupied, but not yet like home.

The room falls quiet.

THOUGHT (`{firstName}`):
So this is my room.

THOUGHT (`{firstName}`):
For three years.

THOUGHT (`{firstName}`):
It is weird how fast a place can stop being someone else's and start being yours.

THOUGHT (`{firstName}`):
Tomorrow I have to remember names, buildings, classes... everything.

THOUGHT (`{firstName}`):
Maybe if I sleep now, it will all feel less unreal in the morning.

The phone is checked one last time.

PLAYER - TEXT REPLY:
I made it. I am at the dorm.

MOM:
Good. We can sleep peacefully now.

DAD:
Get some rest. Big day tomorrow.

MOM:
Good night. We love you.

THOUGHT (`{firstName}`):
Yeah.

THOUGHT (`{firstName}`):
Big day tomorrow.

#### 9. End Of Scene

The player sets the phone aside, lies down, and stares at the ceiling for a
moment. Outside, Lakeview is quiet.

THOUGHT (`{firstName}`):
All right.

THOUGHT (`{firstName}`):
Let it begin.

Fade out.

Transition: advance to the next morning in the dorm room and hand control to the
normal unscripted gameplay loop.

### Canonical Script Summary

The player rides a bus toward Lakeview in late afternoon light. They think about
the weight of leaving home and starting three years at Lakeview High. A phone
message thread from Mom and Dad asks whether they have arrived, reminds them to
go straight to the dorm, and offers encouragement. The player chooses a reply
that can be calm, responsible, or vulnerable.

The bus arrives at Lakeview. The player steps out with their bag and receives the
objective `Find the Lakeview High dormitory.` Optional direction NPCs include an
elderly woman with grocery bags, a student in a sports jacket, and a tired office
worker. Each gives practical directions and a small social flavor beat.

The player follows directions through a calm neighborhood to the Lakeview High
Student Dormitory. At the front desk, the dorm supervisor confirms the player's
name, assigns room 214, explains bathrooms, quiet hours, and curfew, and tells
the player to rest before classes begin tomorrow.

In room 214, the player reflects on the small unfamiliar room becoming theirs.
They text home that they arrived, receive goodnight messages from their parents,
and lie down. The scene fades out and transitions to the first morning in the
dorm before school.

### Transition Target

- Start state: player wakes in the dorm on the first morning before school.
- Narrative handoff: the intro closes the emotional arrival arc and begins the
  open-ended school-life loop.
