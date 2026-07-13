# Starter Kit — Facilitator Guide

Created: 2026-07-07
**Audience:** organizers (Chiel / Casper / Dimitri). Not for participants.

This kit is what each team opens in Claude Code. Assemble one folder per team based on the brief they pick.

---

## What's in here

| File | Goes to | Purpose |
|------|---------|---------|
| `CLAUDE.md` | Every team | Primer Claude auto-reads: how to drive it + the bar for the showcase. Generic — same for all teams. |
| `prompt-pack-brief-01.md` | Teams on Brief 01 | Escalating starter prompts (understand → build the machine) |
| `prompt-pack-brief-02.md` | Teams on Brief 02 | Escalating starter prompts (learn voice → build the system) |
| `prompt-pack-brief-03.md` | Teams on Brief 03 | Escalating starter prompts (make sense of mess → synthesis layer) |

---

## How to build a team folder (on the day, once they've picked a brief)

Each team gets a folder containing:

```
team-{name}/
├── CLAUDE.md                          ← from this kit (same for everyone)
├── learnloop-company-bible.md         ← from ../learnloop/
├── prompt-pack.md                     ← rename the matching prompt-pack-brief-0X.md
└── (their brief's data pack)          ← copy the whole ../learnloop/brief-0X-*/ folder contents in
```

So a Brief 01 team's folder = `CLAUDE.md` + bible + `prompt-pack.md` (from pack 01) + everything from `brief-01-account-penetration/` (README, accounts.csv, contacts.csv, burned-templates.md, baseline-and-targets.md).

**Do NOT include** `brief-03`'s `contradictions-and-redherrings.md` in a team folder — that's the mentor-only answer key.

## Two ways to distribute (decide before the day)

1. **Pre-zipped folders** — build all 3 brief-variants as zip files in advance; hand a team the zip matching their pick. Fastest on the day.
2. **Git repo per brief** — teams clone. Cleaner if participants are comfortable with git, but adds a step. Given mixed technical levels, **lean option 1.**

## Provisioning checklist (per team)
- [ ] Team folder assembled (correct brief pack + no mentor key)
- [ ] API key + credit cap issued (sealed, handed at kickoff)
- [ ] `CLAUDE.md` present so Claude loads context automatically
- [ ] Browser fallback ready (claude.ai Project with the same data pack) for any broken install

---

*Prompt packs are starters, not scripts — mentors should encourage teams to go off-script once they're moving.*
