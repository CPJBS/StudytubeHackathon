# Brief 03 · ABM — The Account Penetration Machine

> **Fictional workshop material.** Everything here lives in the LearnLoop world. Read `../learnloop-story-onepager.md` first (the story), then this brief. Numbers: `../company-facts.json`. No real companies, people, or data appear in this pack.

---

## Your task

- **Build:** a system that takes prioritized accounts and **reaches them at the right time through the right door** — outbound email, LinkedIn, a call brief, a reference, an event, even a physical gift — orchestrated across the buying committee.
- **The market:** 50 named DACH accounts, well-researched, barely penetrated; a 3-person pod; a 0.4% reply baseline to beat.
- **Success looks like:** hand it one hot account and its signal → a complete attack plan out: the play, the committee, the channels, the timing, and the asset briefs. Then the next account, live.
- **Not your task:** writing the message. The Brand Voice Machine (Brief 02) already writes it — you *order* it (an asset brief: audience, signal, angle, format, language) and you **distribute** it: right channel, right person, right moment.

---

## The brief

The board wants **five enterprise logos from a list of 50 DACH accounts this quarter**. The current outbound reply rate is **0.4%**. The team is burning the list with templated sequences nobody answers.

**What you'll build:** the motion machine — **signal in, action out.** The Signal Room (Brief 01) tells LearnLoop which account is hot and why. Your machine turns that into the play: which door to take (email? phone? LinkedIn? a beachhead reference? a landing page? a physical gift?), how to work the buying committee *as a committee*, in what order, on what timing — and **the asset briefs**: precise content requests the Brand Voice Machine (Brief 02) produces from. Then it does the next account, and the next. This is AI outbound and ABM, engineered: the system that stands between a signal and a booked conversation.

**A winning demo:** hand your machine one hot account and its signal → a complete attack plan comes out — the play, the committee, the channels, the timing, the asset briefs. Then do the next account, live.

---

## You are the REACH subsystem

LearnLoop's machine has three functions: SENSE (which account, why now), REACH (what we do about it), SPEAK (the words it needs). You're building REACH — the part that turns signal into action.

The backstory matters: the Berlin pod won LearnLoop's first 9 German customers the artisanal way — founder intros, references, feet on the ground. That motion worked and cannot be multiplied. When the warm network ran dry, the pod fell back on templates: 3,200 emails, 13 replies. The 50 accounts in this pack are the pod's own target list — well-researched, barely penetrated. Your machine has to do what the warm network did (open the right door at the right moment) without the warm network.

**Your inputs and outputs:** you consume a prioritized account and its signal — work from the **starter signals** in `baseline-and-targets.md`; they stand in for the live triage a Signal Room (Brief 01) keeps running. You produce the play *and the asset briefs* — content orders precise enough that a production line (Brief 02) could fill them without a conversation. Your brief stands alone and is judged alone. But it's one part of a full system — so make each input and output one clean screen, not a lecture.

A scoping note that saves you an hour: **you own distribution — the play, the doors, the orchestration. The message itself already exists; your machine decides where, to whom, and when it lands.** Signal capture and triage belong to the Signal Room; the words belong to the Brand Voice team (order them with an asset brief — audience, signal, angle, format, language). A team that spends the afternoon writing copy or hunting signals is doing another brief's job with worse tools.

And one real-world constraint for your routing logic: **the pod is three people.** A human touch — a call, a personal LinkedIn note — costs roughly 100x an automated one, and Frieda can do maybe eight meaningful calls a day. So the machine's job includes deciding *which door for which account*: a hot Tier-A with a live signal deserves a call brief for a human, not another email; a burned or bounced contact (check `send-log.csv`) shouldn't get email at all. Routing an account to a person, with the research attached, is a valid output of your machine — arguably the most valuable one.

---

## The baseline: 0.4%

| Metric | Now | Target |
|--------|-----|--------|
| Reply rate | **0.4%** | 3–5% |
| Meetings booked / quarter | 2 | 20–25 |
| Accounts multi-threaded | ~0 | ≥3 personas on every Tier-A account |
| Enterprise logos won | 0 | **5 of 50** |

Full funnel + targets: [`baseline-and-targets.md`](./baseline-and-targets.md). Deliverability and opens are healthy — the collapse is at *reply*. The old motion was one template through one door for everyone. That's the thing your machine replaces.

---

## Working Germany (read before you design a single play)

The market you're working plays by different rules than NL:

- **Sie-form, always.** Titles matter (Dr. is used). First-naming a German L&D director you've never met costs you the reply.
- **Proof beats punch.** German buyers are more skeptical of bold unbacked claims. Keep the confidence; attach the number or the mechanism.
- **Cold email is legally and culturally tighter than in NL** (company counsel's note to the pod: one-to-one relevance and a legitimate reason to write, or don't send; bulk blasts are how domains die). This makes channel choice part of the puzzle: phone is normal in German B2B; LinkedIn is where the L&D community actually talks.
- **The works council (Betriebsrat) is a real stakeholder.** Any hint of "employee monitoring" in a play triggers the blocker. Talk about capability visibility for teams, not tracking of individuals. See what happened in the call notes.
- **"Wer nutzt Sie in Deutschland?"** — the reference question kills cold deals here. The pod's 9 beachhead customers are the scarce asset; `warm-paths.md` maps where they can open doors. Spend them deliberately.

---

## What's in this pack (suggested 20-minute sift order)

| # | File | What it is |
|---|------|-----------|
| 1 | This README | The brief. |
| 2 | [`burned-templates.md`](./burned-templates.md) | The 4-touch, one-door motion that produced 0.4%, with why-this-fails notes. The anti-pattern to beat. |
| 3 | [`berlin-pod-call-notes.md`](./berlin-pod-call-notes.md) | 5 call notes from the pod: how the warm wins actually happened, and what killed the cold calls. The objections in here are your play-design map. |
| 4 | [`accounts.csv`](./accounts.csv) | The 50 target accounts (DE/AT/CH): firmographics, tech signals, A/B/C tiers. Skim 10 rows, trust the rest — your tool reads them all. |
| 5 | [`contacts.csv`](./contacts.csv) | ~130 contacts mapped to the buying committee. Joins on `account_id`. |
| 6 | [`warm-paths.md`](./warm-paths.md) | The pod's who-could-open-which-door note: beachhead customers, events, references, hearsay. Doors that aren't email. |
| 7 | [`send-log.csv`](./send-log.csv) | Last quarter's send history, one row per contact. Who's burned, who bounced, who's untouched — your suppression and routing input. Joins on `contact_id`. |
| 8 | [`baseline-and-targets.md`](./baseline-and-targets.md) | The funnel, the targets, and the **starter signals** (your stand-in until the Signal Room's triage arrives). |

The live market-signal feed and person-level signals live with the Signal Room (Brief 01): `../brief-01-signal-room/signal-feed.md` and `contact-signals.md`. Same company — wander over when your build needs them.

Shared world (in the parent folder): the story one-pager, the bible, `company-facts.json`, `icp-snapshot.md`, `rate-card.md`, `win-loss-call-notes.md`, `customer-quote-bank.md`, `gtm-roster.md`. Your machine gets smarter with every one of them it reads.

---

## Suggested starting prompts

Adapt freely — these are starters, not scripts.

1. **Stand-in triage.**
   *"Read the starter signals in baseline-and-targets.md and accounts.csv. Pick the 3 hottest accounts and say why. (These stand in for the Signal Room's live triage, Brief 01 — the input your machine is built to consume.)"*

2. **Mine the calls for play rules.**
   *"Read berlin-pod-call-notes.md and win-loss-call-notes.md. List every objection and buying trigger German buyers actually voiced. Turn them into motion rules: which doors work in DACH, what proof has to be in the room, and when a human call beats any email."*

3. **One full attack plan.**
   *"For ACC-013: map the buying committee from contacts.csv. Choose the play — who gets email, who gets a call brief for the pod, who we reach via a reference (warm-paths.md) or an event. Sequence and time the touches. Then write the asset brief for each touch: audience, signal, angle, format, language — NOT the copy itself; that's the Brand Voice Machine's job."*

4. **Make it a machine.**
   *"Now make it repeatable: any account_id in → attack plan + asset briefs out. Respect send-log.csv (no email to burned or bounced contacts) and the German rules in this README. Show where a human reviews, and run it on a second account to prove it."*

---

*Fictional. Consistent with `company-facts.json` (canon v3). Built for the GTM AI Workshop, Jul 16.*
