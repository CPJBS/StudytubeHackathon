# Brief 02 — The Brand Voice Machine

> **Fictional data pack.** LearnLoop is a made-up company built for the GTM AI Workshop. Every name, number, and sample in this pack is invented. See `../learnloop-company-bible.md` for the world — the bible is the single source of truth.

---

## The situation

LearnLoop had a voice worth reading. Direct, confident, a little contrarian. It talked to L&D leaders as peers, led with claims and numbers, and named the pain nobody else would say out loud. Early content stood out *because* it didn't sound like every other learning-platform blog.

Then the content team scaled. Output is up **4x this year** — but now **six people publish under the brand**, and the writing has quietly turned beige. "Empower." "Unlock." "Seamless solutions that drive results in today's fast-paced world." The sentences got longer and the claims got softer. Nobody decided to sound generic; it happened one hedge at a time, because hand-editing every piece to hold the line doesn't scale across six authors.

And it's about to get harder. LearnLoop is **expanding into DACH and Spain this quarter.** That means the same voice has to hold not just across six authors, but across three languages — and a straight translation of a beige English sentence just gives you a beige German one. The voice has to survive *transcreation*, not survive translation.

## The goal

Build a **voice system** — not a style memo nobody reads. Two moving parts:

1. **A codified voice** — the principles, the banned-word list, the DO/DON'T rules, made machine-usable so a model (or a person) can apply them consistently.
2. **A check + rewrite loop** — feed in any draft, get back a verdict (on-voice / drifted) plus a rewrite that fixes it, in EN, and adapts (not translates) for DE and ES.

The bar: the system should catch the same drift a good human editor would, hold the line across all six authors, and travel across languages without going flat. Hand-editing is the thing you're replacing.

## What's in this pack

| File | What it is |
|------|------------|
| `voice-guide.md` | LearnLoop's official brand voice guide — principles, DO/DON'T word lists, before/after tone examples, and how the voice *adapts* (not just translates) for DE and ES. This is your rubric. |
| `author-samples/` | 6 short pieces, one per publisher, varied by content type. **Some are on-voice, some have drifted.** Your check-loop should be able to tell them apart. (Each file carries a hidden intended-answer note for mentors.) |
| `localisation-pieces.md` | 2–3 English pieces that need DE/ES *transcreation*. Each flags the trap — an idiom, a pun, or a claim that needs softening for the German market. DE/ES versions are left blank for you to build. |
| `gold-standard.md` | One reference piece that nails the voice, annotated line-by-line with *why* it works. Calibrate against this. |

## Suggested starting prompts

Copy-paste to get moving — then make them your own.

1. **Codify the checker.** "Read `voice-guide.md` and turn it into a scoring rubric a model can apply. Then score every file in `author-samples/` on-voice or drifted, cite the specific rule broken, and rank them worst-to-best."

2. **Build the rewrite loop.** "Take the worst-scoring author sample. Rewrite it to pass the `voice-guide.md` rules and read like `gold-standard.md`. Show a before/after diff and name every change you made and which rule it satisfies."

3. **Cross the language line.** "Take piece 1 in `localisation-pieces.md`. Transcreate it for DE (Sie-form, more precise) and ES (warmer, more relational) — don't translate literally. Explain how you handled the trap flagged in the note, and prove the LearnLoop voice survived the jump."

4. **Prove it scales.** "Design a repeatable loop: any author pastes a draft → the system returns a verdict, the broken rules, and a fixed rewrite. Run it on all 6 samples and show it holds the line the same way each time."

---

*Fictional pack. Nothing here is a real LearnLoop asset — the company doesn't exist.*
