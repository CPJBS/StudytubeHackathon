# Prompt Pack — Brief 02: The Brand Voice Machine

Paste these into Claude Code to get moving. They escalate from "learn the voice" to "build a system that holds it at scale." Adapt freely — these are starters, not a script.

---

**1. Learn the voice + see the drift**
> Read `voice-guide.md` and every file in `author-samples/`. Tell me which samples are on-voice and which have drifted to generic SaaS writing, with the specific words or moves that give each one away.

**2. Build a voice checker**
> Build a "voice check" that takes any piece of LearnLoop content and scores it against `voice-guide.md` — flagging banned words, hedging, and beige phrasing, with a pass/fail and specific fixes. Run it on the 6 author samples so I can see it working.

**3. Build the rewrite loop**
> Now extend it: when a piece fails the check, rewrite it to pass — keeping the author's point but fixing the voice. Show me the before/after on the two worst drifted samples.

**4. Cross the language line**
> Take the pieces in `localisation-pieces.md` and produce German and Spanish versions that adapt the voice for each market (per the guide) — not literal translations. Call out any traps you hit (puns, claims that need softening).

**5. Prove it scales**
> Package this so a team of 6 could actually use it: given a new draft in any of the 3 languages, it checks, rewrites, and returns a clean on-voice version. Demo it on a fresh piece I'll give you.

---

**Stretch goals if you're flying:**
- Generate a one-page "voice cheat sheet" the 6 authors could pin above their desk
- Build a "drift detector" that scores a batch of content and shows how far off-voice the team has drifted
- Handle a piece that's on-voice in EN but needs the DE market's harder-proof standard

**Demo target:** show a beige draft going in and a sharp, on-voice, correctly-localised piece coming out — and explain how this holds the line across 6 people and 3 languages.
