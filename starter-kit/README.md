# Starter Kit — Facilitator Guide

Created: 2026-07-07
**Audience:** organizers (Chiel / Casper / Dimitri). Not for participants.

This kit is what each team opens in Claude Code. Assemble one folder per team based on the brief they pick.

---

## What's in here

| File | Goes to | Purpose |
|------|---------|---------|
| `CLAUDE.md` | Every team | Primer Claude auto-reads: how to drive it + the shared-world files worth pointing it at. Generic — same for all teams. |
| `prompt-pack-brief-01.md` | Teams on Brief 01 | Escalating starter prompts (understand → build the machine) |
| `prompt-pack-brief-02.md` | Teams on Brief 02 | Escalating starter prompts (learn voice → build the system) |
| `prompt-pack-brief-03.md` | Teams on Brief 03 | Escalating starter prompts (make sense of mess → synthesis layer) |

---

## How to build a team folder (on the day, once they've picked a brief)

Every team folder — regardless of brief — is assembled from three layers:

```
team-{name}/
├── CLAUDE.md                          ← from this kit (same for everyone)
├── prompt-pack.md                     ← rename the matching prompt-pack-brief-0X.md
├── learnloop-story-onepager.md        ← shared world, from ../learnloop/
├── learnloop-company-bible.md         ← shared world, from ../learnloop/
├── company-facts.json                 ← shared world, from ../learnloop/
├── icp-snapshot.md                    ← shared world, from ../learnloop/
├── rate-card.md                       ← shared world, from ../learnloop/
├── gtm-roster.md                      ← shared world, from ../learnloop/
├── win-loss-call-notes.md             ← shared world, from ../learnloop/
├── customer-quote-bank.md             ← shared world, from ../learnloop/
└── (their brief's data pack)          ← everything in ../learnloop/brief-0X-*/, minus exclusions below
```

**1. Shared world (trunk) — every team gets all 8 files, no exceptions.** These live at the top level of `../learnloop/` and are what let a team's tool reason about LearnLoop beyond its own brief (pricing in `rate-card.md`, who's who in `gtm-roster.md`, real buyer language in `customer-quote-bank.md` and `win-loss-call-notes.md`). Copy them in flat, same filenames.

**2. Kit layer** — `CLAUDE.md` (identical for every team) plus the matching prompt pack, renamed to `prompt-pack.md` so participants don't have to figure out which one is theirs.

**3. Brief layer — the full contents of their brief's folder, with two standing exclusions:**
- **Never include anything from `../learnloop/mentor-kit/`** in a team folder, regardless of brief. That folder (mentor cards, the close-the-loop runbook, holdout accounts/drafts, fresh questions, the late data drop) is for mentors only.
- **For Brief 03 specifically, also drop `contradictions-and-redherrings.md`** — the mentor-only answer key. Everything else in `brief-03-signal-room/` goes in.

So, concretely:
- **Brief 01 team** = trunk (8 files) + kit layer + all of `brief-01-account-penetration/` (README, `accounts.csv`, `contacts.csv`, `burned-templates.md`, `baseline-and-targets.md`, `berlin-pod-call-notes.md`, `contact-signals.md`).
- **Brief 02 team** = trunk (8 files) + kit layer + all of `brief-02-brand-voice/` (README, `voice-guide.md`, `gold-standard.md`, `on-brand-corpus.md`, `off-brand-stack.md`, `author-samples/`, `de-launch-memo.md`, `localisation-pieces.md`).
- **Brief 03 team** = trunk (8 files) + kit layer + all of `brief-03-signal-room/` **except** `contradictions-and-redherrings.md` (README, `what-the-org-believes.md`, `funnel-analytics.csv`, `linkedin-engagement.csv`, `reviews.md`).

## Two ways to distribute (decide before the day)

1. **Pre-zipped folders** — build all 3 brief-variants as zip files in advance; hand a team the zip matching their pick. Fastest on the day.
2. **Git repo per brief** — teams clone. Cleaner if participants are comfortable with git, but adds a step. Given mixed technical levels, **lean option 1.**

## Provisioning checklist (per team)
- [ ] Team folder assembled (trunk + kit layer + correct brief pack, no mentor-kit content, no `contradictions-and-redherrings.md` for Brief 03)
- [ ] Team Claude account (login) handed out at kickoff — own-login noted as backup
- [ ] `CLAUDE.md` present so Claude loads context automatically
- [ ] Browser fallback ready (claude.ai Project with the same data pack) for any broken install
- [ ] Mentor-kit printed/at hand for mentors (`mentor-cards.md` + `close-the-loop-runbook.md`) — this is the coaching reference and finale choreography, mentors carry it, teams never see it
- [ ] Holdout files ready for demo time (`accounts-holdout.csv`, `unseen-drafts.md`, `late-data-drop.csv`, `fresh-questions.md`) — mentors use these to stress-test a team's tool live, on an account/draft/question it hasn't seen

## Plan the room for the reconnect

**The last 30 minutes are not free-build time.** Per the mentor runbook, teams stop building at T-30, hand off to the other two subsystems, and a single account travels the whole machine (SENSE → SPEAK → REACH) in a live chain-run before demos begin. Facilitators should plan the physical room for this: same-brief teams need to cluster for a quick pairing at T-30, and there needs to be a clear path (and a projector) for cross-brief handovers at T-25. Don't schedule this as an afterthought — it's the finale, not a wrap-up.

---

*Prompt packs are starters, not scripts — mentors should encourage teams to go off-script once they're moving.*
