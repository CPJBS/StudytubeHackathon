# Prompt Pack — Brief 03: The Signal Room

Paste these into Claude Code to get moving. They escalate from "make sense of the mess" to "build a synthesis layer." Heads up: **the data is messy and contradictory on purpose** — your job is to find the signal in it. Adapt freely.

---

**1. Adjudicate the five beliefs**
> Read `what-the-org-believes.md` — five leaders, five theories about what's wrong, at most one of them right. For each belief, use the other files in this folder to rule: right, wrong, or half-right, with the evidence and a confidence level. Where the data can't rule, say so.

**2. Survey the pile**
> Read `funnel-analytics.csv`, `reviews.md`, and `linkedin-engagement.csv` in this folder. Give me a first read of what each source contains and where the data looks messy, inconsistent, or contradictory. Don't clean it yet — just map it.

**3. Clean and reconcile**
> The data has problems on purpose — inconsistent naming, missing values, at least one misleading outlier. Find and fix the issues in `funnel-analytics.csv` so the numbers can be trusted, and tell me every problem you found and how you handled it.

**4. Find the real patterns**
> Now dig for signal. What's actually happening with the funnel, the reviews, and the LinkedIn engagement? Separate the real patterns from the noise and red herrings, tie it back to the beliefs you just adjudicated, and be explicit about what you're confident in vs. guessing.

**5. Synthesize the briefing**
> Turn your findings into a one-page briefing for LearnLoop's leadership: "what the data means + what to do about it." Lead with the 2-4 things that matter most. Write it to a file I can open and present.

**6. Build the signal room**
> Make this repeatable and interactive: build an HTML "signal room" that pulls the cleaned data into the key insights plus a question box, so RevOps could open it any week, ask "what happened here?" about any channel or month, and get a grounded answer. Demo it.

---

**Stretch goals if you're flying:**
- Quantify the LinkedIn pattern you found and recommend a content mix
- Rank the review themes by how much they're likely costing in churn
- Flag which single metric leadership is probably misreading, and why

**Demo target:** something LearnLoop would open again on Monday — a living view they can interrogate, not a screenshot.
