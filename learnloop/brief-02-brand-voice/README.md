# Brief 02 · Brand × AI — The Brand Voice Machine

> **Fictional workshop material.** Everything here lives in the LearnLoop world. Read `../learnloop-story-onepager.md` first (the story), then this brief. Numbers: `../company-facts.json`. Nothing here is a real company's asset.

---

## The brief

LearnLoop **4x'd its content output** this year. **Six people** now publish in the company's name, and the brand voice is drifting into beige. On top of that, LearnLoop is expanding into **Spain and Germany** — so "on-brand" now has to survive new markets too. Editing everything by hand doesn't scale.

**What you'll build:** a reusable tool that rewrites any draft into the brand voice **and explains what it changed and why** — then push it further and build it as a skill that can flex to a new language or market without starting from scratch.

**A winning demo:** feed in an ugly draft live, get back something on-brand with a clear explanation of every change — then **prove it travels to Madrid and Berlin.**

---

## You are the SPEAK subsystem

LearnLoop's machine has three functions: SENSE (who, why now), SPEAK (what to say, in whose voice), REACH (land it, earn the reply). You're building SPEAK.

Here's what makes this urgent rather than cosmetic: the voice isn't a taste thing — it's the thing that pulled the right buyers in when LearnLoop was small (ask the sales team how many deals started with someone forwarding a LearnLoop post). Today the voice is held together by one pair of hands editing six people's output, one draft at a time. That pair of hands does not scale to 4x output — and it does not speak German or Spanish at all. Nora's memo in this pack is the whole problem in 250 words.

**At the reconnect (last half hour) you hand over:** your checker, run live on the REACH team's German outreach in front of the room. You'll also receive the SENSE team's read on which content actually performs — treat it as input for what the voice system should amplify. Build so those hand-offs are easy.

---

## What's in this pack (suggested 20-minute sift order)

| # | File | What it is |
|---|------|-----------|
| 1 | This README | The brief. |
| 2 | [`voice-guide.md`](./voice-guide.md) | The official voice rules: principles, DO/DON'T lists, banned words, and how the voice adapts (not translates) for DE and ES. **Your rubric.** |
| 3 | [`gold-standard.md`](./gold-standard.md) | One reference piece that nails the voice, annotated line-by-line. Calibrate against this. |
| 4 | [`on-brand-corpus.md`](./on-brand-corpus.md) | 20 on-brand reference pieces across formats. The training set: if a draft doesn't sound like these, it isn't ready. |
| 5 | [`off-brand-stack.md`](./off-brand-stack.md) | 10 recent drafts awaiting review, from all six authors. All have drifted — some obviously, some subtly. Your checker should catch every one and say why. |
| 6 | [`author-samples/`](./author-samples/) | 6 short pieces, one per author. Some on-voice, some drifted — can your system tell? |
| 7 | [`de-launch-memo.md`](./de-launch-memo.md) | Nora's German-launch memo + the freelance translation that came back "grammatically perfect and completely dead." Diagnosing *why* it's dead is your job. |
| 8 | [`localisation-pieces.md`](./localisation-pieces.md) | 3 EN pieces awaiting DE/ES transcreation, each with a trap (idiom, bold claim, register). |

Shared world (parent folder): the story one-pager, the bible, `company-facts.json`, `icp-snapshot.md`, `customer-quote-bank.md` (how buyers actually talk — useful calibration), `win-loss-call-notes.md`, `gtm-roster.md`.

---

## Suggested starting prompts

Adapt freely — these are starters, not scripts.

1. **Codify the checker.**
   *"Read voice-guide.md, gold-standard.md and on-brand-corpus.md. Turn the voice into a scoring rubric a model can apply consistently — including the structural rules (claim-first, proof, no hedging), not just the banned-word list. Then score every draft in off-brand-stack.md and author-samples/, cite the specific rule broken, and rank worst-to-best."*

2. **Build the rewrite loop.**
   *"Take the worst-scoring draft. Rewrite it to pass every rule and read like the gold standard. Show a before/after diff and name every change and the rule it satisfies. Then wrap this into a reusable flow: paste any draft → verdict → rewrite → explanation."*

3. **Cross the language line.**
   *"Read de-launch-memo.md. First diagnose precisely why the freelance German translation is voice-dead (be specific: which rules did it break, where did the rhythm and the aside die). Then produce the transcreation that fixes it — and prove the voice survived with a back-translation test."*

4. **Prove it scales.**
   *"Run the full loop on all 10 stack drafts + all 6 author samples in one pass. Show it holds the line the same way each time. Then package it as a reusable skill: what would another team need to run this on their own brand?"*

---

*Fictional. Consistent with `company-facts.json` (canon v2). Built for the GTM AI Workshop, Jul 16.*
