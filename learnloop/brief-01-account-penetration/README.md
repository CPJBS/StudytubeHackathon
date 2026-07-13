# Brief 01 · ABM — The Account Penetration Machine

> **Fictional workshop material.** Everything here lives in the LearnLoop world. Read `../learnloop-story-onepager.md` first (the story), then this brief. Numbers: `../company-facts.json`. No real companies, people, or data appear in this pack.

---

## The brief

The board wants **five enterprise logos from a list of 50 DACH accounts this quarter**. The current outbound reply rate is **0.4%**. The team is burning the list with templated sequences nobody answers.

**What you'll build:** don't write a clever email — **build the machine that writes them.** The catch: in a machine like this, the writing is the last 10%. What makes the output reply-worthy is everything upstream: research the account, catch the live signal, map the buying committee, choose the way in (email? phone? LinkedIn? a reference from the beachhead?). Only then does it produce the tailored, ready-to-send outreach (or a personalised landing page) — and then it does the next account, and the next. Account research on steroids, with a send button at the end.

**A winning demo:** pick a live account, run your tool, and show outreach so specific the room forgets it was AI-assisted — then prove it does the next one too.

---

## You are the REACH subsystem

LearnLoop's machine has three functions: SENSE (who, why now), SPEAK (what to say, in whose voice), REACH (land it, earn the reply). You're building REACH.

The backstory matters: the Berlin pod won LearnLoop's first 9 German customers the artisanal way — founder intros, references, feet on the ground. That motion worked and cannot be multiplied. When the warm network ran dry, the pod fell back on templates: 3,200 emails, 13 replies. The 50 accounts in this pack are the pod's own target list — well-researched, barely penetrated. Your machine has to do what the warm network did (earn trust through relevance) without the warm network.

A scoping note that saves you an hour: **you own the relevance — who, why now, through which door.** The voice belongs to the SPEAK team (their checker meets your outreach at the reconnect); the bible's voice rules are all you need in the meantime. A team that spends the afternoon polishing sentences is doing another brief's job with worse tools.

**At the reconnect (last half hour) you hand over:** your tool, run live, plus one send-ready multi-threaded sequence — which gets passed through the SPEAK team's voice checker in front of the room. You'll also receive the SENSE team's read on which accounts, channels, and angles the data actually supports. Build so those hand-offs are easy.

---

## The baseline: 0.4%

| Metric | Now | Target |
|--------|-----|--------|
| Reply rate | **0.4%** | 3–5% |
| Meetings booked / quarter | 2 | 20–25 |
| Accounts multi-threaded | ~0 | ≥3 personas on every Tier-A account |
| Enterprise logos won | 0 | **5 of 50** |

Full funnel + targets: [`baseline-and-targets.md`](./baseline-and-targets.md). Deliverability and opens are healthy — the collapse is at *reply*. This is a relevance problem, not a volume problem.

---

## Working Germany (read before you write a single line)

The market you're entering plays by different rules than NL:

- **Sie-form, always.** Titles matter (Dr. is used). First-naming a German L&D director you've never met costs you the reply.
- **Proof beats punch.** German buyers are more skeptical of bold unbacked claims. Keep the confidence; attach the number or the mechanism.
- **Cold email is legally and culturally tighter than in NL** (company counsel's note to the pod: one-to-one relevance and a legitimate reason to write, or don't send; bulk blasts are how domains die). This makes channel choice part of the puzzle: phone is normal in German B2B; LinkedIn is where the L&D community actually talks.
- **The works council (Betriebsrat) is a real stakeholder.** Any hint of "employee monitoring" in your messaging triggers the blocker. Talk about capability visibility for teams, not tracking of individuals. See what happened in the call notes.
- **"Wer nutzt Sie in Deutschland?"** — the reference question kills cold deals here. The pod's 9 beachhead customers are the scarce asset; use them deliberately.

---

## What's in this pack (suggested 20-minute sift order)

| # | File | What it is |
|---|------|-----------|
| 1 | This README | The brief. |
| 2 | [`burned-templates.md`](./burned-templates.md) | The 4-touch sequence that produced 0.4%, with why-this-fails notes. The anti-patterns to beat. |
| 3 | [`berlin-pod-call-notes.md`](./berlin-pod-call-notes.md) | 5 call notes from the pod: how the warm wins actually happened, and what killed the cold calls. The objections in here are your messaging map. |
| 4 | [`accounts.csv`](./accounts.csv) | The 50 target accounts (DE/AT/CH): firmographics, tech signals, A/B/C tiers. Skim 10 rows, trust the rest — your tool reads them all. |
| 5 | [`contacts.csv`](./contacts.csv) | ~130 contacts mapped to the buying committee. Joins on `account_id`. |
| 6 | [`contact-signals.md`](./contact-signals.md) | Quotable public LinkedIn activity for 10 Tier-A contacts. Real personalisation raw material. |
| 7 | [`baseline-and-targets.md`](./baseline-and-targets.md) | The funnel, the targets, and the dated intent-signals table (joins on `account_id`). |

Shared world (in the parent folder): the story one-pager, the bible, `company-facts.json`, `icp-snapshot.md`, `rate-card.md`, `win-loss-call-notes.md`, `customer-quote-bank.md`, `gtm-roster.md`. Your machine gets smarter with every one of them it reads.

---

## Suggested starting prompts

Adapt freely — these are starters, not scripts.

1. **Prioritise the list.**
   *"Read accounts.csv, contacts.csv and the intent-signals table in baseline-and-targets.md. Score each account on fit + timing for LearnLoop (see company-facts.json and icp-snapshot.md). Rank the top 10 to attack first and cite the signal that makes each time-sensitive."*

2. **Mine the calls for angles.**
   *"Read berlin-pod-call-notes.md and win-loss-call-notes.md. List every objection and buying trigger German buyers actually voiced. Turn them into messaging rules: what to lead with, what to never say, what proof to attach."*

3. **Build a per-account penetration plan.**
   *"For account ACC-013, map the buying committee from contacts.csv. For each persona, name the one pain they feel and the angle that earns a reply. Propose a 3-touch multi-threaded sequence — coordinated, not repetitive — citing a real signal per touch."*

4. **Build the machine, not the email.**
   *"Design a repeatable workflow: account in → research dossier → chosen signal → three persona angles → send-ready sequence (respecting the German rules in this README and the voice rules in the bible) → quality gate → next account. Build it so I can run it on any account_id. Show where a human reviews."*

---

*Fictional. Consistent with `company-facts.json` (canon v2). Built for the GTM AI Workshop, Jul 16.*
