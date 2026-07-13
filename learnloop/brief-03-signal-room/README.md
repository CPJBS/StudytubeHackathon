# Brief 03 · Data × AI — The Signal Room

> **Fictional workshop material.** Everything here lives in the LearnLoop world. Read `../learnloop-story-onepager.md` first (the story), then this brief. Numbers: `../company-facts.json`. Every review, post, and row below is invented — and the pile is messy **on purpose**.

---

## The brief

LearnLoop is **drowning in data** — site analytics, funnel drop-off, customer reviews, LinkedIn engagement — and nobody can say what any of it actually means.

**What you'll build:** not a one-off analysis — **build something they can keep using.** An interactive dashboard or tool that turns the raw data into a live read of what's happening, and lets someone point at any part of it and ask *"wait, what happened here?"* and get an answer.

**A winning demo:** show something LearnLoop would open again on Monday — **a living view they can interrogate, not a screenshot.**

One clarification that decides who wins: **the interpretation is the product.** A chart-dump without a reading loses to a plain page that says what's true, what's noise, and what to do — but the promised bar stands: it should be alive, reusable, and able to answer follow-up questions on the spot. Build the reading *into* the tool.

---

## You are the SENSE subsystem

LearnLoop's machine has three functions: SENSE (who, why now, what works), SPEAK (what to say), REACH (land it). You're building SENSE.

The stakes: LearnLoop is about to bet the quarter on 50 German accounts. The answer to "what actually works for us — which channel, which content, which product strength, which weakness will bite us in a market where we have zero goodwill" is buried in the company's own data. Right now every meeting re-litigates it: read `what-the-org-believes.md` — five leaders, five theories, at most one of them right. Mila (RevOps, team of one) pipes the data together; nobody can read it. Your tool settles arguments.

**At the reconnect (last half hour) you hand over:** the play — which accounts/channels deserve the DACH budget, which content does the pulling, where the product leaks — delivered to the REACH and SPEAK teams as their input. Build so that hand-off is one screen, not a lecture.

---

## ⚠️ Read this before you build

**The data is deliberately messy and it contradicts itself. That is the point of the exercise.**

There is no pre-cleaned "correct" table hiding behind this. Real RevOps piles look exactly like this. Expect:
- **Naming chaos** — the same channel appears under multiple spellings. A naive `GROUP BY` will mis-rank everything.
- **Holes** — missing rows, blank cells. Blank is not zero.
- **An outlier** — one month is wildly off. Tracking bug or real spike? Deciding *is* the analysis.
- **Cross-source disagreement** — two files describe the same channel and don't match. Which is closer to the truth, for which question?
- **Loud-but-empty data** — the highest-volume things are not the highest-value things.

---

## What's in this pack (suggested 20-minute sift order)

| # | File | What it is |
|---|------|-----------|
| 1 | This README | The brief. |
| 2 | [`what-the-org-believes.md`](./what-the-org-believes.md) | Five leaders' current theories about what's wrong. Your tool gets to adjudicate. Pick your suspect now — you'll probably be wrong. |
| 3 | [`funnel-analytics.csv`](./funnel-analytics.csv) | ~12 months of web + funnel data by channel. Raw. |
| 4 | [`linkedin-engagement.csv`](./linkedin-engagement.csv) | ~30 LinkedIn posts with engagement metrics. Raw. |
| 5 | [`reviews.md`](./reviews.md) | 21 review-site reviews, mixed sentiment, including the first German customers. The signal is a pattern, not a quote. |

There is a sixth file, `contradictions-and-redherrings.md` — **mentor-only answer key. Don't open it.** (Yes, really. Your demo is better if you earned it.)

Shared world (parent folder): the story one-pager, the bible, `company-facts.json`, `win-loss-call-notes.md` (qualitative corroboration lives there), `customer-quote-bank.md`, `rate-card.md` (for sanity-checking any revenue math), `gtm-roster.md`.

---

## Suggested starting prompts

Adapt freely — these are starters, not scripts.

1. **Clean-then-read:**
   *"Here are the LearnLoop GTM data files. First reconcile the inconsistencies — especially channel naming across the two CSVs — and flag everything missing, contradictory, or anomalous. Don't fix silently; list every judgment call. Then tell me the 2–3 things that are actually true across all sources."*

2. **Adjudicate the org.**
   *"Read what-the-org-believes.md. For each of the five claims, use the data to rule: right, wrong, or half-right — with the evidence and a confidence level. Where the data can't rule, say so and name what you'd instrument."*

3. **Build the living read.**
   *"Build an interactive page/tool over these files: the 2-4 true insights up top with evidence and confidence, the noise explicitly quarantined with reasons, and a question box where I can ask 'what happened here?' about any channel, month, or claim and get a grounded answer. It should still be useful when new data lands next month."*

4. **The signal-vs-noise audit:**
   *"Split everything in these files into SIGNAL (patterns that repeat across sources) and NOISE (outliers, artifacts, loud-but-unrepresentative items). For each noise item, say what a naive analyst would wrongly conclude from it."*

---

*Fictional. Consistent with `company-facts.json` (canon v2). Built for the GTM AI Workshop, Jul 16.*
