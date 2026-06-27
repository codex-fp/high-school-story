# Handoff: Favorites / Preferences Recommendation

## Companion Links

- Direction: Response
- Requested by: Story team
- Intended recipient: GDD session
- Related files: identity-and-preferences/request-to-story-team--favorites-preferences.md
- Canonical outcome: Accepted and integrated into gdd.md character creation/preferences section.

Date: 2026-06-26
Project: High School Story
Prepared for: GDD design session
Prepared by: Storyteller + Game Designer support session
Purpose: Recommend the MVP favorite/preference categories for character creation.

---

## Recommendation Summary

Use 5 favorite/preference categories in Character Creation:

1. Social Preference
2. Free Time Preference
3. Music Preference
4. Media Preference
5. Food Preference

This set gives the protagonist a clear personal shape at the start of the game without turning favorites into a second attribute system. The categories are broad enough to support dialogue, relationships, gifts, hangouts, dates, activity flavor, and Mood outcomes, while remaining small enough for MVP implementation.

The naming should stay neutral and system-readable. Category names and options should feel like character creator fields, not colorful lifestyle labels.

---

## Recommended Categories

| Category | Example Options | Primary Uses | Compatibility Use | Scope Risk |
|---|---|---|---|---|
| Social Preference | One-on-one, small group, large group, quiet company, spontaneous plans, planned activities, texting | Hangout Mood, invite fit, social event comfort, relationship pacing | High | Low |
| Free Time Preference | Rest, outdoor activity, social activity, study, creative activity, family time, town exploration | Weekend activities, Mood recovery, activity flavor, event suggestions | High | Low |
| Music Preference | Pop, indie/alternative, hip-hop/R&B, rock/punk, electronic, acoustic/folk, classical/soundtrack, K-pop/global | Shared-interest dialogue, dance/concert moments, bedroom/social media flavor | Medium | Low |
| Media Preference | Comedy, romance/drama, mystery, fantasy/sci-fi, horror/thriller, sports/action, documentary, indie/art | Movie nights, club talk, dates, texting, fandom-style bonding | Medium | Medium |
| Food Preference | Pizza/fries, baked sweets, spicy snacks, boba/smoothies, coffee/tea, fresh bowls, homemade food, adventurous food | Gifts, cafeteria choices, hangout snacks, small kindness moments | Low-Medium | Low |

---

## Mechanical Guidance

Favorites should be soft modifiers, not build-defining stats.

Recommended uses:

- Add small Mood bonuses when an activity matches a preference.
- Improve invite acceptance or comfort when a hangout format matches Social Preference.
- Add relationship flavor when two characters share or complement preferences.
- Provide better gift, food, date, and hangout suggestions.
- Unlock small dialogue variations, texts, and social media posts.
- Help choose default flavor for recurring school-life scenes.

Avoid:

- Direct attribute bonuses.
- Hard-locking story or relationship content.
- Making one option clearly optimal.
- Requiring bespoke writing for every combination.

---

## Compatibility Guidance

Use compatibility most strongly for:

- Social Preference
- Free Time Preference

Use compatibility moderately for:

- Music Preference
- Media Preference

Use mostly flavor and gift affinity for:

- Food Preference

Compatibility should support chemistry, not determine success. Shared preferences can create easy bonding, while different preferences can create interesting contrast. A mismatch should produce texture, not punishment.

Example:

- Two students who both prefer "one-on-one" may build trust faster in private hangouts.
- A "planned activities" student and a "spontaneous plans" student can still bond, but scenes may create light tension or playful contrast.
- Different music or media tastes can create conversation hooks rather than penalties.

---

## Narrative Guidance

These preferences should make the created student feel specific without fully defining them.

Good narrative uses:

- Short character creator summaries.
- Personalized dialogue openers.
- Text messages that reference preferences.
- Cafeteria, hallway, bus, library, club, and weekend flavor.
- Small recurring motifs, such as a student's usual drink or favorite Friday activity.
- Relationship moments where a classmate remembers what the protagonist likes.

The strongest emotional use is recognition: classmates should occasionally make the player feel seen because they remembered a preference.

---

## MVP Recommendation

Implement all 5 categories for MVP if possible.

Priority order:

1. Social Preference
2. Free Time Preference
3. Food Preference
4. Music Preference
5. Media Preference

Reasoning:

- Social Preference and Free Time Preference most directly affect core school social sim loops.
- Food Preference is cheap, reusable, and supports gifts/hangouts immediately.
- Music Preference and Media Preference are valuable for identity and bonding, but can start as dialogue and flavor hooks before receiving deeper systems.

---

## Deferred / Avoided Categories

Defer for later:

- Personal Style
- Favorite School Space / Niche
- Hobby Preference
- Academic Subject Preference
- Fashion Preference

Avoid for now:

- Separate detailed categories for books, movies, TV, games, podcasts, and fandoms.
- Specific real-world artists, brands, franchises, or celebrities.
- Highly granular subgenres.
- Preferences that imply politics, religion, sexuality, or other sensitive identity areas unless the game later has a clear narrative and safety framework for them.

---

## Notes for GDD Owner

Recommended data model:

- One selected option per category at character creation.
- Optionally allow one later "evolving preference" slot if the design wants the protagonist to change over three years.
- Keep preference labels short, neutral, and UI-friendly.

Recommended GDD phrasing:

"Favorites/preferences personalize the protagonist and provide soft hooks for Mood, relationship chemistry, gifts, hangouts, dialogue, and activity flavor. They do not provide attribute bonuses, lock major content, or replace relationship effort."

Open decision:

- Decide whether preferences are fixed after character creation or can evolve through story choices. If they can evolve, keep that as a later system and do not require it for MVP.
