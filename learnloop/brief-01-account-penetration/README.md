# Brief 01 — The Account Penetration Machine

> **Fictional workshop material.** Everything here lives in the LearnLoop world. Read the [company bible](../learnloop-company-bible.md) first — it is the single source of truth. No real companies, people, or data appear in this pack.

---

## The situation

LearnLoop is a Series B B2B learning-enablement platform (€11.4M ARR, 140 people, ~55% YoY growth and slowing). The board has one demand this quarter: **prove LearnLoop can grow outside its home market.** The spotlight is on **DACH** (Germany, Austria, Switzerland).

The problem: LearnLoop's 3 SDRs are running outbound into a list of DACH mid-market accounts, and it isn't working. The reply rate is **0.4%**. Not because the list is bad — the accounts are squarely in ICP (200–2,000 employees, mid-market, in some kind of transformation) — but because the outreach is generic. Mail-merged templates, feature dumps, "Hope this email finds you well," fake "loved your post" personalisation. The list is getting *burned* faster than it's producing pipeline.

Sending more of the same makes it worse. The motion has to change.

---

## The goal

**Win 5 enterprise logos from 50 DACH accounts this quarter.**

To get there, teams build an **AI-assisted account-penetration workflow**:

> **research → signal → personalised, multi-threaded outreach that earns replies**

- **Research** the account: firmographics, tech stack, what's changing.
- **Find the signal**: a real trigger event (reorg, leadership hire, competitor tool, job posts, compliance pressure, expansion) that makes *now* the right time.
- **Personalise + multi-thread**: coordinated, persona-specific outreach to the buying committee (economic buyer, champion, blocker) — not the same email to three people.
- **Earn the reply**: prove you looked, name a pain they already feel, make the ask easy.

---

## The baseline: 0.4%

| Metric | Now | Target |
|--------|-----|--------|
| Reply rate | **0.4%** | 3–5% |
| Meetings booked / quarter | 2 | 20–25 |
| Accounts multi-threaded | ~0 | ≥3 personas on every Tier-A account |
| Enterprise logos won | 0 | **5 of 50** |

Full funnel + how "good" is judged: [`baseline-and-targets.md`](./baseline-and-targets.md).

---

## What "good" looks like

Not a nicer template — a **different category of email**:

1. **Proves you looked** — a real, account-specific signal you can actually cite.
2. **Names a pain the buyer already feels** — mapped to their persona (buyer wants board-ready ROI; champion wants less admin and higher adoption; blocker wants security/integration proof).
3. **Earns the reply** — one low-friction ask, no feature dump, no banned words (`empower / unlock / seamless / leverage / drive results / in today's world`).
4. **Works the account as a committee** — coordinated angles across buyer + champion + blocker.

The test: *could this email only have been sent to this one account?* If it could go to any of the 50 unchanged, it fails.

---

## What's in this pack

| File | What it is |
|------|-----------|
| [`README.md`](./README.md) | This brief. |
| [`accounts.csv`](./accounts.csv) | 50 fictional DACH target accounts (DE/AT/CH), with firmographics, tech signals, and A/B/C priority tiers. |
| [`contacts.csv`](./contacts.csv) | ~130 contacts across those accounts — economic buyers, champions, blockers, and a few end users — each with a title, seniority, and a hook/signal. |
| [`burned-templates.md`](./burned-templates.md) | 4 examples of the *current* generic outbound (the 0.4% stuff) with a "why this fails" note under each — the anti-patterns to beat. |
| [`baseline-and-targets.md`](./baseline-and-targets.md) | The current funnel, the targets, and an optional intent-signals table (dated trigger events per account). |

**How the files connect:** `contacts.csv.account_id` joins to `accounts.csv.account_id`. The intent-signals table in `baseline-and-targets.md` also joins on `account_id` and enriches the `tech_signals` already in `accounts.csv`.

---

## Suggested starting prompts

Drop these into your AI tool of choice to get moving. Adapt freely.

1. **Prioritise the list.**
   *"Here are 50 DACH accounts (accounts.csv) and their contacts (contacts.csv). Score each account on fit + timing for LearnLoop (a B2B learning-enablement platform — see the company bible). Rank the top 10 to attack first and explain the signal that makes each one time-sensitive right now."*

2. **Build a per-account penetration plan.**
   *"For account ACC-013 (Eschenbach Chemie), map the buying committee from contacts.csv. For each persona (economic buyer / champion / blocker), tell me the one pain they feel and the one angle that would earn a reply. Then propose a 3-touch, multi-threaded sequence — coordinated, not repetitive."*

3. **Write outreach that beats the burned templates.**
   *"Read burned-templates.md and its 'why this fails' notes. Now write a first-touch email to the champion at ACC-015 (Meridian Software) grounded in a real signal from the data. Ban these words: empower, unlock, seamless, leverage, drive results, in today's world. Then explain, line by line, why yours would out-reply the burned version."*

4. **Design the workflow, not just one email.**
   *"Design an AI-assisted workflow that turns this raw pack into personalised, multi-threaded outreach for all 50 accounts at scale — research step, signal step, drafting step, and a quality check. Show where a human reviews. Estimate the reply-rate lift vs the 0.4% baseline and justify the number."*

---

*Fictional. Consistent with the LearnLoop company bible. Built for the GTM AI Workshop (Jul 16).*
