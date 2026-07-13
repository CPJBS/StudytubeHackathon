# Brief 03 — The Signal Room

> **Fictional data pack.** LearnLoop is a made-up company built for the GTM AI Workshop (Jul 16). Every number, review, and post below is invented. Nothing here is real data. See `../learnloop-company-bible.md` for the world it lives in.

---

## The situation

LearnLoop has one RevOps person, and they are drowning.

They pipe together four data sources — web/funnel analytics (GA4-style), the LMS product funnel, review-site feedback (G2/Capterra-style), and LinkedIn engagement. The pipes work. The dashboards render. But nobody in the building can say what any of it *means*.

- The board wants to know why trial→paid conversion is "stuck." Nobody agrees on the actual number.
- Sales blames the top of the funnel ("marketing sends junk"). Marketing blames activation ("the product loses people in week one"). Product blames sales ("they promised things Loop doesn't do yet").
- One dashboard says LinkedIn is the best channel. Another says it converts worst. Both are "right," depending on which column you read.
- Reviews are a wall of stars and paragraphs. Everyone has read "a few" and drawn opposite conclusions.

Every meeting re-litigates the same argument because there is no shared answer. There is data. There is no *signal*.

---

## The goal

Build a **synthesis layer**: something that ingests this messy, multi-source pile and produces a short **"what it means + what to do" briefing** a VP could read in three minutes and act on.

Not a dashboard. Not more charts. A *reading* of the data — the two or three things that are actually true, stated plainly, with the one recommendation each implies. The judges care about **the interpretation**, not the visualization.

A great output looks like:
> "Trial→paid is not stuck — it's two different funnels wearing one number. [insight]. Do X. Here's the evidence." (~1 page)

A weak output re-plots the CSVs and calls the messiest month a "trend."

---

## What's in this pack

| File | What it is | The trap |
|------|-----------|----------|
| `funnel-analytics.csv` | ~12 months of web + funnel data, by channel | Inconsistent channel names, missing months, an outlier month, a column that disagrees with the LinkedIn export |
| `reviews.md` | ~18 review-site reviews, mixed sentiment | The signal is a *pattern across reviews*, not any single 5-star or 1-star |
| `linkedin-engagement.csv` | ~30 LinkedIn posts with engagement metrics | One content type quietly outperforms the rest ~5x; product posts look busy but do nothing |
| `README.md` | This file | — |

There is a fifth file, `contradictions-and-redherrings.md` — **that one is for mentors only.** If you're a participant, don't open it. It's the answer key.

---

## ⚠️ Read this before you build

**The data is deliberately messy and it contradicts itself. That is the point of the exercise.**

There is **no pre-cleaned "correct" table** hiding behind this. The mess is realistic: real RevOps piles look exactly like this. Your job is not to find *the* answer — it's to build a layer that separates **signal from noise** and is honest about which is which.

Specifically, expect:
- **Naming chaos** — the same channel appears under 3+ spellings. If you `GROUP BY channel` naively, you'll split one channel into three and mis-rank everything.
- **Holes** — some months are missing rows or blank cells. Don't quietly treat blank as zero.
- **An outlier** — one month is wildly off. It's either a tracking bug or a one-off spike. Deciding which *is* the analysis.
- **Cross-source disagreement** — the funnel CSV and the LinkedIn CSV describe the same channel and don't match. One of them is closer to the truth. Which, and why?
- **Loud-but-empty data** — the highest-*volume* things are not the highest-*value* things. Reviews with the most words aren't the most representative. Posts with the most impressions aren't the ones that drove signups.

A team that reports "LinkedIn is our #1 channel, onboarding is great, and March was a breakout month" has pattern-matched the noise. A team that catches *why* each of those is a trap has found the signal.

**Be honest about confidence.** If the data can't support a claim, say so. "We can't tell X from this data, and here's the one thing we'd instrument to find out" is a *strong* answer, not a weak one.

---

## Suggested starting prompts

Paste one of these into your build to get moving. Adapt freely.

1. **Clean-then-read:**
   "Here are four messy GTM data files from a company called LearnLoop. First, reconcile the inconsistencies — especially channel names across the two CSVs — and flag anything missing, contradictory, or anomalous. Don't fix silently; list every judgment call you made. Then tell me the 2-3 things that are actually true across all four sources."

2. **The briefing:**
   "Act as a RevOps analyst. From these four files, write a one-page briefing for our VP GTM: what the data means (max 3 insights, each with its evidence and a confidence level) and what to do about each (one concrete action). Ignore anything you can't support. Explicitly name any metric you think is being misread by the org."

3. **Signal vs noise audit:**
   "Go through these files and split them into SIGNAL (patterns that repeat across sources or reviews) and NOISE (outliers, one-offs, naming artifacts, loud-but-unrepresentative items). For each noise item, say what a naive analyst would wrongly conclude from it."

4. **The contradiction hunt:**
   "The funnel CSV and the LinkedIn CSV both describe LinkedIn performance and they disagree. Find the contradiction, reason about which source is more trustworthy for which question, and tell me what conversion story is actually true — then do the same for the reviews vs the funnel drop-off."

---

*Fictional pack for the GTM AI Workshop. All data invented. If anything here contradicts the company bible, the bible wins.*
