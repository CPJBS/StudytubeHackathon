# Brief 02 · Brand × AI — The Brand Voice Machine

> **Fictional workshop material.** Everything here lives in the LearnLoop world. Read `../learnloop-story-onepager.md` first (the story), then this brief. Numbers: `../company-facts.json`. Nothing here is a real company's asset.

---

## Your task

- **Build:** a production line that turns any content brief into an on-voice asset — consistently, across languages (EN/DE/ES), markets, verticals, formats, and ICPs.
- **The market:** LearnLoop is expanding from Benelux into **Germany and Spain**. Assume the target accounts are already picked (that's the Signal Room's job, Brief 01) — your machine owns everything about how LearnLoop sounds when it gets there.
- **Success looks like:** brief in → on-voice asset out, in German, every voice decision explained — and the next language or market is configuration, not a rebuild.

---

## The brief

LearnLoop **4x'd its content output** this year. **Six people** now publish in the company's name, and the writing is drifting into **generic SaaS filler** — copy that could have come from any vendor. On top of that, LearnLoop is expanding into **Spain and Germany** — so "on-brand" now has to survive new markets too. Editing everything by hand doesn't scale.

**What you'll build:** the production line — **brief in, on-voice asset out.** A system that produces the content the motion machine (Brief 03) orders — emails, LinkedIn posts, landing sections, one-pagers — consistently in LearnLoop's voice and the ICP's own language, across EN, DE and ES. Its quality gate is a checker/rewriter that catches drift and explains every fix. And it's built as a *system*, not a prompt: the next language (French is already whispered for 2027) should be configuration, not a rebuild. A machine that knows **who we write for, what we write about, how we write, and how we sound — in any language.**

**A winning demo:** take an asset brief in, ship the on-voice asset out — in German, with every voice decision explained. Then prove the system can stretch to a language it has no guide for.

---

## You are the SPEAK subsystem

LearnLoop's machine has three functions: SENSE (which account, why now), REACH (what we do about it), SPEAK (the words it needs). You're building SPEAK — the production line everything downstream depends on.

Here's what makes this urgent rather than cosmetic: the voice isn't a taste thing — it's the thing that pulled the right buyers in when LearnLoop was small (ask the sales team how many deals started with someone forwarding a LearnLoop post). Today the voice is held together by one pair of hands editing six people's output, one draft at a time. That pair of hands does not scale to 4x output — and it does not speak German or Spanish at all. Nora's memo in this pack is the whole problem in 250 words.

**Your inputs and outputs:** you consume **asset briefs** — content requests with an audience, a signal, an angle, a format, a language. Produce from the stand-ins in `asset-briefs-from-the-pod.md` — they're exactly the kind of request LearnLoop's motion machine (Brief 03) orders, downstream of accounts the Signal Room (Brief 01) has already prioritized. Your brief stands alone and is judged alone. But it's one part of a full system — so build the line so that any well-formed brief in that format comes out on-voice, with no conversation needed.

Division of labour, so nobody duplicates work: the Signal Room (Brief 01) owns *why now*, the motion machine (Brief 03) owns *the play and the ask* — you own everything about **how it's said**: voice, language, register, format. Their briefs feed your line; your assets arm their sends.

---

## What's in this pack (suggested 20-minute sift order)

| # | File | What it is |
|---|------|-----------|
| 1 | This README | The brief. |
| 2 | [`voice-guide.md`](./voice-guide.md) | The official voice rules: principles, DO/DON'T lists, banned words, and how the voice adapts (not translates) for DE and ES. **Your rubric.** |
| 3 | [`gold-standard.md`](./gold-standard.md) | One reference piece that nails the voice, annotated line-by-line. Calibrate against this. |
| 4 | [`asset-briefs-from-the-pod.md`](./asset-briefs-from-the-pod.md) | Three stand-in content requests — the kind the motion machine (Brief 03) orders. Your production inputs. |
| 5 | [`on-brand-corpus.md`](./on-brand-corpus.md) | 20 on-brand reference pieces across formats. The training set: if your output doesn't sound like these, it isn't ready. |
| 6 | [`off-brand-stack.md`](./off-brand-stack.md) | 10 recent drafts awaiting review, from all six authors. All have drifted — some obviously, some subtly. Your quality gate should catch every one and say why. |
| 7 | [`author-samples/`](./author-samples/) | 6 short pieces, one per author. Some on-voice, some drifted — can your system tell? |
| 8 | [`de-launch-memo.md`](./de-launch-memo.md) | Nora's German-launch memo + the freelance translation that came back "grammatically perfect and completely dead." Diagnosing *why* it's dead is your job — your German output must beat it. |
| 9 | [`localisation-pieces.md`](./localisation-pieces.md) | 3 EN pieces awaiting DE/ES transcreation, each with a trap (idiom, bold claim, register). |

Shared world (parent folder): the story one-pager, the bible, `company-facts.json`, `icp-snapshot.md` and `customer-quote-bank.md` (how the ICP actually talks — the language your assets should speak), `win-loss-call-notes.md`, `gtm-roster.md`.

---

## Suggested starting prompts

Adapt freely — these are starters, not scripts.

1. **Codify the voice.**
   *"Read voice-guide.md, gold-standard.md and on-brand-corpus.md. Turn the voice into a machine-usable rubric — the structural rules (claim-first, proof, no hedging), not just the banned-word list. Then score every draft in off-brand-stack.md and author-samples/, cite the specific rule broken, and rank worst-to-best."*

2. **Build the quality gate.**
   *"Take the worst-scoring draft. Rewrite it to pass every rule and read like the gold standard. Show a before/after diff and name every change and the rule it satisfies. Then wrap it into a loop: any draft in → verdict → rewrite → explanation."*

3. **Produce from a brief.**
   *"Take the first request in asset-briefs-from-the-pod.md. Produce the asset it asks for — right audience, right angle, right format, right language and register — and run it through your own quality gate before you show me. This is the production line doing its actual job."*

4. **Cross the language line.**
   *"Read de-launch-memo.md. Diagnose precisely why the freelance German translation is voice-dead (which rules broke, where the rhythm and the aside died). Then produce the transcreation that fixes it — and prove the voice survived with a back-translation test."*

5. **Prove it's a system, not a prompt.**
   *"Run the full line on all three asset briefs and all 10 stack drafts in one pass — same verdicts, same voice, every time. Then the stretch: add French. No guide exists for it. Derive the register rules from how the guide adapts DE and ES, state your assumptions, and produce one asset. What would you need from a native reviewer?"*

---

*Fictional. Consistent with `company-facts.json` (canon v3). Built for the GTM AI Workshop, Jul 16.*
