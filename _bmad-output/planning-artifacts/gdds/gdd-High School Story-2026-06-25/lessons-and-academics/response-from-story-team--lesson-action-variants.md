# Handoff: Lesson Action Categories and Variants

## Companion Links

- Direction: Response
- Requested by: Story team
- Intended recipient: GDD session
- Related files: lessons-and-academics/request-to-storyteller--lesson-action-variants.md
- Canonical outcome: Accepted with authored-only constraint; condensed into gdd.md lesson action table.

Date: 2026-06-25  
Project: High School Story  
Prepared for: Game Designer session  
Prepared by: Storyteller / Design Thinking support  
Purpose: Document the recommended strategy for treating lesson actions as broad systemic categories with contextual variants that differ mainly by flavor, Energy, Stress, Mood, and light secondary effects.

---

## Context

The previous lesson-action ideation produced several interesting ideas, but many of them are better understood as variants of already planned lesson actions rather than new top-level actions.

The current baseline lesson-action set should remain broad and readable:

- Focus / listen actively
- Take notes / light participation
- Study another subject
- Use phone / text
- Quiet recovery / zone out
- Chat / pass note
- Risky distraction

The recommendation is to treat these as the stable lesson action categories. Each category can contain specific contextual variants that give lessons emotional texture without bloating the main action list or turning lessons into unrelated minigames.

---

## Core Strategy

### Categories Are the Systemic Buttons

The player should primarily understand lesson choices through a small set of repeatable categories. These categories are the mechanical grammar of lessons and should stay stable across subjects and teachers.

Example:

- `Focus / Listen Actively` means investing Energy into current-subject learning.
- `Quiet Recovery` means sacrificing academic efficiency for wellbeing stabilization.
- `Chat / Pass Note` means trading attention and risk for relationship or social benefit.

This keeps lesson gameplay readable, repeatable, and easy to balance.

### Variants Are the Emotional and Contextual Layer

Specific actions inside each category should provide flavor and tuning. Variants can differ by:

- Energy cost or recovery
- Stress increase or reduction
- Mood pressure or relief
- Academic intensity
- Relationship or social opportunity
- Teacher strictness interaction
- Availability conditions such as current Mood, low Energy, upcoming exam, nearby classmate, or active story arc

Variants should usually reuse the same UI and resolution structure. They should not require custom minigames or bespoke interaction screens.

### Mood Should Be the Main Differentiator

Energy and Stress already have clear numerical roles. Mood is where variants can make lessons feel personal.

The same broad category can feel different depending on the protagonist's emotional state:

- `Quiet Recovery` can be calm, tired, sad, numb, or overwhelmed.
- `Chat / Pass Note` can be warm, flirtatious, nervous, mischievous, or caring.
- `Focus` can be disciplined, anxious, determined, or quietly reassuring.

This supports the GDD direction that Mood is qualitative and mostly soft, not just a third bar.

### Recommended UI Treatment

Avoid showing 30+ lesson actions at once.

Recommended model:

1. The lesson presents a small number of available categories.
2. If useful, each category can show a specific contextual variant label and tooltip.
3. The underlying action remains category-driven for balance.

Example:

- Category: `Quiet Recovery`
- Variant shown this block: `Mental Pause`
- Tooltip: "Recover a little Energy and reduce Stress while staying loosely aware of the lesson. Very low academic gain."

This gives the player flavor without creating a large action-management burden.

---

## Proposed Variants by Category

### 1. Focus / Listen Actively

Top-level purpose: Spend Energy to improve current-subject knowledge. Can raise Stress if the protagonist is already strained.

| Variant | Flavor | Energy | Stress | Mood | Mechanical Notes |
| --- | --- | --- | --- | --- | --- |
| Deep Focus | The student blocks out the classroom noise and fully enters the topic. | High cost | Neutral or slight increase | Focused, Drained | Highest current-subject gain. Weaker or more costly when Tired or Overwhelmed. |
| Prove Yourself | The student listens with ambition, trying to prove something to themself or the teacher. | High cost | Increase | Determined, Anxious | Strong subject gain and possible small teacher impression gain. Can worsen Stress if already high. |
| Follow the Thread | The student may not understand every detail, but follows the main idea. | Medium cost | Slight decrease | Calm, Reassured | Stable medium gain. Good option for low or medium subject knowledge. |
| Answer When Called | Defensive attention: stay ready enough not to be embarrassed. | Medium cost | Variable | Alert, Nervous | Lower knowledge gain, but reduces penalty from sudden teacher questions or strict teacher checks. |

### 2. Take Notes / Light Participation

Top-level purpose: Safe academic participation with lower Energy cost than full focus.

| Variant | Flavor | Energy | Stress | Mood | Mechanical Notes |
| --- | --- | --- | --- | --- | --- |
| Clean Notes | The student creates notes that will be useful later. | Medium cost | Decrease | In Control, Calm | Moderate current gain plus bonus to later studying from this topic. |
| Copy From Board | Minimum viable participation: write down what is visible and keep up. | Low or neutral cost | Neutral | Neutral, Tired | Low but safe academic gain. Useful fallback at low Energy. |
| Mark What You Don't Get | The student marks confusion honestly instead of pretending to understand. | Medium cost | Decrease | Honest, Slightly Anxious | Small immediate gain, but improves later study or help-seeking outcomes. |
| Organize Old Notes | The student tidies previous notes during a slower part of class. | Low cost | Strong decrease | Calm, Relieved | Low current-subject gain, but reduces Stress from academic backlog. |

### 3. Study Another Subject

Top-level purpose: Trade current-lesson attention for another subject, deadline, or exam pressure. Lightly risky by default.

| Variant | Flavor | Energy | Stress | Mood | Mechanical Notes |
| --- | --- | --- | --- | --- | --- |
| Cram for Next Test | Quick under-desk revision before a later test or difficult class. | Medium cost | Increase | Pressured, Anxious | Improves upcoming-test readiness. Riskier with strict teachers. |
| Finish Homework Quietly | The student completes an assignment that has been weighing on them. | Medium cost | Increase then possible decrease | Guilty, Relieved | Improves homework/deadline state. If successful, can reduce later Stress. |
| Patch a Weak Subject | The student returns to a subject that has been falling behind. | Medium cost | Decrease | Responsible, Worried | Helps a weak subject and reduces long-term academic pressure. |
| Trade Today for Tomorrow | A deliberate choice to sacrifice this class because another deadline matters more. | Low or medium cost | Decrease | Strategic, Uneasy | Stronger benefit to another deadline, very low current-subject gain. |

### 4. Use Phone / Text

Top-level purpose: Gain social, message, planning, or social-media value while risking teacher attention and losing academic efficiency.

| Variant | Flavor | Energy | Stress | Mood | Mechanical Notes |
| --- | --- | --- | --- | --- | --- |
| Quick Check Messages | A fast glance to see whether someone replied or plans changed. | Neutral | Decrease or increase | Connected, Anxious | Small social update. Mood depends on message content. |
| Text Back Carefully | The student tries to answer with the right tone while hiding the phone. | Low cost | Variable | Warm, Nervous | Bond or trust gain, especially during active relationship threads. |
| Scroll to Escape | The student escapes into the feed because the lesson or day feels too heavy. | Neutral or slight recovery | Short-term decrease, possible later increase | Numb, Distracted | Short-term relief, poor academic gain. Can create guilt or distraction pressure. |
| Check Social Clues | The student reads posts, stories, location hints, or subtle social signals. | Neutral | Neutral or slight decrease | Curious, Lonely | Gains social knowledge or schedule hints. Can worsen Lonely if the player feels excluded. |
| Hide a Hard Message | The student reads something emotionally difficult and tries not to react. | Neutral | Increase | Sad, Irritated, Anxious | Useful for authored or relationship-context moments. Strong Mood effect, low immediate mechanical gain. |

### 5. Quiet Recovery / Zone Out

Top-level purpose: Sacrifice academic efficiency to stabilize Energy, Stress, or Mood. This category should remain available even at low Energy.

| Variant | Flavor | Energy | Stress | Mood | Mechanical Notes |
| --- | --- | --- | --- | --- | --- |
| Mental Pause | The student drifts for a moment but remains loosely synced with the lesson. | Small recovery | Decrease | Calm, Tired | Small Energy recovery and Stress relief. Very low academic gain, but not a full disconnect. |
| Look Out the Window | A nostalgic pause: light, weather, courtyard, hallway, a passing thought. | Small recovery or neutral | Strong decrease | Melancholy, Calm | Stronger Stress relief. May add Sad or Lonely pressure if social needs are low. |
| Micro-Nap | The student fights sleep and catches a few minutes of rest. | Strong recovery | Decrease | Tired to Relieved | Best Energy recovery, near-zero academic gain. Low Risk or Risky depending on teacher. |
| Breathing Through It | The student quietly manages anxiety or overload without making a scene. | Neutral | Strong decrease | Anxious to Calm | Strong anti-Stress option. Especially available or effective when Anxious or Overwhelmed. |
| Doodle in the Margin | Margin drawings as light self-regulation. | Neutral or small recovery | Decrease | Creative, Soothed | Small Mood benefit, low academic gain. Can connect to creative identity traits. |

### 6. Chat / Pass Note

Top-level purpose: Trade attention and teacher risk for relationship, trust, social knowledge, or emotional support.

| Variant | Flavor | Energy | Stress | Mood | Mechanical Notes |
| --- | --- | --- | --- | --- | --- |
| Whisper About Class | The student quietly asks or comments about the current task. | Low cost | Decrease | Connected, Reassured | Small relationship gain and small academic gain. Lower risk than off-topic chat. |
| Share a Tiny Joke | A small shared laugh during a dull moment. | Neutral | Strong decrease | Playful, Warm | Bond and Mood gain. Low academic gain. Risk depends heavily on strictness. |
| Ask If They're Okay | The student notices a classmate is having a bad day. | Medium cost | Neutral or increase | Caring, Concerned | Trust gain and possible story hint. Minimal academic gain. |
| Pass a Practical Note | A practical note: homework, plans after class, what happened earlier. | Neutral | Variable | Socially Anchored | Can unlock or improve a break/lunch interaction. Moderate risk. |
| Flirt Under the Radar | A glance, half-joke, or note with romantic charge. | Low or medium cost | Increase | Excited, Nervous | Romantic tension or bond gain. Strong embarrassment consequence if caught. |

### 7. Risky Distraction

Top-level purpose: Larger Mood or social payoff with higher academic cost and higher teacher risk.

| Variant | Flavor | Energy | Stress | Mood | Mechanical Notes |
| --- | --- | --- | --- | --- | --- |
| Make the Back Row Laugh | The student turns boredom into a small performance for nearby classmates. | Medium cost | Decrease or increase | Excited, Mischievous | Strong social and Mood payoff. Academic loss. Risky or Very Risky. |
| Dare From a Friend | A classmate pushes the student into doing something mildly reckless. | Medium cost | Increase | Thrilled, Pressured | Bond gain with the provoking classmate and possible identity marker. High risk. |
| Deflect the Lesson | A comment or question that subtly derails the teacher's flow. | Medium cost | Variable | Clever, Irritated | Can reduce class tension or buy time, but teacher impression can drop. |
| Show Off Quietly | A smaller, controlled display: expression, gesture, clever note, visible confidence. | Low or medium cost | Increase | Confident, Embarrassed | Lower payoff and lower risk than a full joke, but still socially visible. |

---

## Availability and Context Rules

These variants should not all be globally available at all times. Good availability rules will make lessons feel authored while still using systemic content.

Recommended drivers:

- Current Mood: Anxious unlocks or strengthens `Breathing Through It`; Lonely changes the effect of `Check Social Clues`; Excited strengthens social variants.
- Energy: Low Energy favors `Copy From Board`, `Mental Pause`, `Micro-Nap`, and other fallback variants.
- Stress: High Stress makes recovery variants more valuable and ambition variants more costly.
- Teacher strictness: Strict teachers increase risk for phone, chat, nap, and risky distraction variants.
- Subject type: Some subjects can favor `Clean Notes`, others `Follow the Thread`, group work, or practical note-taking.
- Nearby classmate: Social variants should depend on who sits nearby and the relationship state.
- Calendar pressure: Upcoming tests and deadlines should surface `Cram for Next Test`, `Finish Homework Quietly`, and `Trade Today for Tomorrow`.
- Active story arcs: Relationship events can replace generic phone/chat variants with authored variants such as reading a hard message or checking on a classmate.

---

## Balance Notes

- Variants should rarely change the core promise of their parent category.
- Strong Mood relief should usually come with academic opportunity cost.
- Strong academic gain should usually cost Energy and sometimes Stress.
- Strong social gain inside a lesson should usually carry risk or academic loss.
- Recovery variants must stay useful enough to prevent low-Energy lessons from feeling like dead time.
- Risk consequences should remain small by default: lost block benefit, Stress increase, teacher impression decrease, embarrassment, temporary phone restriction, or relationship effect if relevant.

---

## Scope Warnings

Avoid turning variants into a second layer of heavy content production.

Risky directions:

- Making every variant require unique dialogue.
- Creating subject-specific minigames.
- Adding a full stealth/attention meter for every teacher.
- Making teacher relationships as deep as classmate relationships.
- Showing too many variants in the UI at once.
- Making Mood effects so strong that they hard-block normal player choice.

Recommended restraint:

- Use variants as reusable labels, tooltips, modifiers, and occasional short barks.
- Reserve bespoke writing for classmate arcs, special lessons, exams, and meaningful authored events.
- Let the same variant feel different through Mood, teacher strictness, relationship state, and calendar context.

---

## Summary Recommendation

Keep the lesson system centered on a small, stable set of broad action categories. Add emotional and strategic variety through contextual variants inside those categories.

This approach supports the game's pillars:

- Time and wellbeing as core currencies: each variant tunes Energy, Stress, and Mood differently.
- Relationships through interaction and story milestones: chat, phone, and support variants connect lessons to classmates.
- Starting identity enriched through tradeoffs: repeated variant choices express the student's lived identity.
- School structure as pressure: teacher strictness, subject demands, deadlines, and limited class time make small choices matter.

The main design value is that lessons can feel emotionally specific without becoming a separate minigame collection.
