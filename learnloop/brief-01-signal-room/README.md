# Brief 01 · Data × AI — The Signal Room

> **Fictional workshop material.** Everything here lives in the LearnLoop world. Read `../learnloop-story-onepager.md` first (the story), then this brief. Numbers: `../company-facts.json`. Every signal, review, post, and row below is invented — and parts of the pile are messy **on purpose**.

---

## Your task

- **Build:** a system that identifies and prioritizes accounts — out of the 50 targets, **who do we reach out to, why is it relevant right now, and what's the hook?**
- **The market:** 50 named DACH accounts LearnLoop is betting the quarter on, and a market feed full of signals about them.
- **Success looks like:** a ranked, evidence-backed answer that stays alive — feed it a new signal and the ranking moves and explains itself; point at any account and it tells you why it's hot and what the outreach hook is.

---

## The brief

The market is emitting signals — funding rounds, new CHROs, regulation deadlines, job ads, reorgs — and **nobody at LearnLoop is catching them.** The Berlin pod compiled a raw feed and a target list, then went back to cold-calling, because reading fifty accounts' worth of signals is a full-time job nobody has. Meanwhile, when the company looks *inward* to ask "what actually works for us," it drowns in four data sources that contradict each other.

**What you'll build:** **the triage.** A system that reads the signals and answers the only question that matters every Monday morning: **which of the 50 accounts is hot, which is not, why — and who should we contact right now.** Kept alive: when new signals land, the ranking moves and can say what moved it. Explicitly *not* a dashboard — nobody at LearnLoop needs more charts. A living triage you can interrogate: point at any account and ask "why is this one hot?" and get the evidence.

**A winning demo:** hand your triage a fresh signal and ask "who moved up, and why?" Then let the room ask it "why is ACC-X ranked above ACC-Y?" — and watch it answer with evidence, not vibes.

---

## You are the SENSE subsystem

LearnLoop's machine has three functions: SENSE (which account, why now), REACH (what we do about it), SPEAK (the words it needs). You're building SENSE — the part of the machine that decides where everyone else's effort goes.

The stakes: LearnLoop is betting the quarter on 50 German accounts with a 3-person pod. Every hour the pod spends on the wrong account is gone. Right now "which account is hot" is decided by gut feel and whoever spoke loudest in the Monday meeting — read `what-the-org-believes.md`: five leaders, five theories — some wrong, several probably half-right. Your triage referees with evidence.

**Your inputs and outputs:** you consume the raw signal feed, the account universe, and the company's own messy performance data. You produce **the triage**: top accounts, the why, and the hook — exactly the input an outbound machine (Brief 03) would act on — plus a read on which content actually pulls, which a content team (Brief 02) would love to have. Your brief stands alone and is judged alone. But it's one part of a full system — so build your output as one clean screen another team could pick up cold, not a lecture.

Two layers to your work, and they're not equal:

1. **The triage (the deliverable):** signals × fit → who's hot, who's not, why, who first. The signal feed contains genuine triggers *and* noise that looks like triggers — a funding round earmarked for machinery, a hiring spree that's a call center. Telling them apart is the job.
2. **The calibration (the evidence beneath it):** a heat score needs a definition of "hot *for LearnLoop*" — which channel actually converts, what customers love, where the product leaks (and what the first German customers are already whispering). That definition is buried in the company's own four messy data sources. Dig it out, and your triage stops being generic lead scoring and starts being *LearnLoop's* triage.

---

## ⚠️ Read this before you build

**The internal data is deliberately messy and it contradicts itself. That is the point.**

There is no pre-cleaned "correct" table hiding behind this. Real GTM data looks exactly like this. In the calibration files, expect:
- **Naming chaos** — the same channel appears under multiple spellings. A naive `GROUP BY` will mis-rank everything.
- **Holes** — missing rows, blank cells. Blank is not zero.
- **An outlier** — one month is wildly off. Tracking bug or real spike? Deciding *is* the analysis.
- **Cross-source disagreement** — two files describe the same channel and don't match. Which is closer to the truth, for which question?
- **Loud-but-empty data** — the highest-volume things are not the highest-value things. That's true in the signal feed too.

---

## What's in this pack (suggested 20-minute sift order)

| # | File | What it is |
|---|------|-----------|
| 1 | This README | The brief. |
| 2 | [`signal-feed.md`](./signal-feed.md) | **The core input.** ~50 dated market signals for the 50 target accounts: funding, regulation (EU AI Act, NIS2…), headcount growth, full job-ad texts, subsidies — plus the pod's own hand-tagged shortlist as an appendix (their judgment, not ground truth). Some of this feed is noise. Joins on `account_id`. |
| 3 | [`../brief-03-account-penetration/accounts.csv`](../brief-03-account-penetration/accounts.csv) | The 50-account universe (firmographics, tech signals, tiers). Lives in the motion machine's folder — same company. |
| 4 | [`contact-signals.md`](./contact-signals.md) | Person-level signals: quotable public LinkedIn activity for 10 key contacts. |
| 5 | [`what-the-org-believes.md`](./what-the-org-believes.md) | Five leaders' current theories. Your triage gets to referee — and the data may prove several of them half-right. |
| 6 | [`funnel-analytics.csv`](./funnel-analytics.csv) | Calibration: ~12 months of web + funnel data by channel. Raw. |
| 7 | [`linkedin-engagement.csv`](./linkedin-engagement.csv) | Calibration: ~30 LinkedIn posts with engagement metrics. Raw. |
| 8 | [`reviews.md`](./reviews.md) | Calibration: 21 reviews including the first German customers. The signal is a pattern, not a quote. |

(There is no single right ranking. Two teams weighting different signals can both be right — what gets judged is whether your triage can defend its read with evidence.)

Shared world (parent folder): the story one-pager, the bible, `company-facts.json`, `win-loss-call-notes.md` (why deals really close — calibration gold), `customer-quote-bank.md`, `rate-card.md` (deal-size sanity checks), `gtm-roster.md`.

---

## Suggested starting prompts

Adapt freely — these are starters, not scripts.

1. **First triage.**
   *"Read signal-feed.md and accounts.csv. Rank the 50 accounts hot / warm / cold. For every hot account, cite the exact signal(s) and why they matter for a learning platform. Flag any feed item you suspect is noise — something that looks like a trigger but isn't — and say why."*

2. **Adjudicate the org.**
   *"Read what-the-org-believes.md. For each of the five claims, use the calibration data to rule: right, wrong, or half-right — with evidence and a confidence level. Where the data can't rule, say so and name what you'd instrument."*

3. **Calibrate the heat score.**
   *"From funnel-analytics.csv, linkedin-engagement.csv and reviews.md: what does a good-fit, likely-to-convert account look like for LearnLoop specifically? Reconcile the channel-naming mess first, don't treat blank as zero, and be suspicious of the loudest month. Then fold what you learned back into the triage from prompt 1 — what re-ranks?"*

4. **Make it live.**
   *"Build the triage as a living system: the ranked accounts with their why up top, the noise quarantined with reasons, and a question box — 'why is this account hot?', 'what happened here?', 'who should Frieda call first tomorrow?' — answered with evidence. When I paste three new signals, the ranking updates and explains what moved."*

---

*Fictional. Consistent with `company-facts.json` (canon v3). Built for the GTM AI Workshop, Jul 16.*
