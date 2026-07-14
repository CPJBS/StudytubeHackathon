# Prompt Pack — Brief 01: The Signal Room

Paste these into Claude Code to get moving. They escalate from "first triage" to "a living system the room can interrogate." Heads up: **the data is messy and contradictory on purpose** — your job is to find the signal in it. Adapt freely.

---

**1. First triage of the 50**
> Read `signal-feed.md` and `accounts.csv`. Rank the 50 accounts hot / warm / cold. For every hot account, cite the exact signal(s) and why they matter for a learning platform. Flag any feed item you suspect is noise — something that looks like a trigger but isn't — and say why.

**2. Adjudicate the org**
> Read `what-the-org-believes.md` — five leaders, five theories, at most one of them right. For each claim, use the calibration data (`funnel-analytics.csv`, `linkedin-engagement.csv`, `reviews.md`) to rule: right, wrong, or half-right, with evidence and a confidence level. Where the data can't rule, say so and name what you'd instrument.

**3. Calibrate the heat score**
> From `funnel-analytics.csv`, `linkedin-engagement.csv` and `reviews.md`: what does a good-fit, likely-to-convert account look like for LearnLoop specifically? Reconcile the channel-naming mess first, don't treat blank as zero, and be suspicious of the loudest month. Then fold what you learned back into the triage from prompt 1 — what re-ranks, and why?

**4. Make it live**
> Build the triage as a living system: the ranked accounts with their why up top, the noise quarantined with reasons, and a question box — "why is this account hot?", "who should Frieda call first tomorrow?" — answered with evidence. When I paste new signals, the ranking updates and explains what moved.

---

**Stretch goals if you're flying:**
- A signal-type playbook: which kinds of signal — funding, headcount, regulation, job ads — historically matter most for a learning platform, and which look like triggers but aren't
- A one-screen handover: top accounts, the why, and the hook — ready for an outbound team (Brief 03) to act on cold

**Demo target:** feed it a fresh signal → who moved up and why. Then let the room interrogate it.
