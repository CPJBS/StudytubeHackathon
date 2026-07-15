# Starter Kit — Facilitator Guide

Created: 2026-07-07 · Reworked Jul 14 (canon v4: new brief order 01=Signal Room / 02=Brand Voice / 03=Account Penetration, reconnect is now an unannounced curveball)
**Audience:** organizers (Chiel / Casper / Dimitri). Not for participants.

**Distribution model: one identical Assets pack for every team.** No per-team assembly, no brief-matching on the day. Everyone gets the same zip; their chosen brief's folder is their assignment, the rest is the same company.

---

## What's in here

| File | Purpose |
|------|---------|
| `CLAUDE.md` | Primer Claude auto-reads in every team's workspace: how to drive it, the shared world, folder etiquette, and the full-system hint. **It never announces the reconnect — that's a curveball.** |
| `prompt-pack-brief-01.md` / `-02.md` / `-03.md` | Escalating starter prompts per brief (01 = triage, 02 = production line, 03 = motion). All three ship in the pack; teams use the one matching their assigned brief. |
| `build-assets-zip.sh` | Builds the participant pack from `../learnloop/`: excludes all mentor material, **strips hidden HTML comments** (they carry mentor labels), zips. Run it, verify, done. |

## Building the pack

```
./build-assets-zip.sh          # produces dist/learnloop-assets.zip
```

What the script does, and why each step matters:
1. Copies `../learnloop/` **minus** `mentor-kit/` — which now holds **all** mentor/organizer material: the answer key (`contradictions-and-redherrings.md`), the kickoff presentation brief, the runbook, the cards, and the demo-time holdouts.
2. Copies in `CLAUDE.md` + the three prompt packs from this kit.
3. **Strips all `<!-- ... -->` HTML comments from every .md** — the author samples and off-brand stack carry hidden mentor labels (`voice status: drifted`) that any participant's Claude would read instantly. Ground truth lives in `mentor-kit/mentor-cards.md`, so nothing is lost.
4. Verifies: no mentor files present, zero `voice status` strings, zero `reconnect`/`curveball` mentions (the merge must stay a surprise), then zips.

The result is fully participant-safe: hand the same zip to every team (or load it as a claude.ai Project for the browser-fallback).

## Provisioning checklist

- [ ] `dist/learnloop-assets.zip` built with the script (never hand-assembled) and spot-checked: no `mentor-kit/`, no answer key, `grep -r "voice status"` comes back empty
- [ ] Zip distributed via **Google Drive** link, identical for all (GitHub access on request via Casper)
- [ ] Team Claude account (login) issued per team — **created on the day itself, never shared in advance** — handed at kickoff; own login noted as backup
- [ ] Browser fallback ready (claude.ai Project with the same assets) for any broken install
- [ ] Mentor-kit printed/at hand for mentors (`mentor-cards.md` + `close-the-loop-runbook.md`) — teams never see it
- [ ] Demo-time holdouts ready: `accounts-holdout.csv` (REACH), `unseen-drafts.md` (SPEAK), `late-signal-drop.md` + `late-data-drop.csv` + `fresh-questions.md` (SENSE)

## Plan the room for the reconnect (curveball — participants don't know)

**The last ~45 minutes are not free-build time — and the teams don't know that yet.** Build time is ~2 hours; the reconnect is announced as a curveball at T-45, never before. The briefs only carry the hint "it's a full system." Per the mentor runbook: at T-45 teams merge into **cross-brief groups** (with 5 teams: one group of three — one per brief — and one group of two; with 6: two full groups), hand off along the chain, and a single account travels the whole machine (**SENSE → REACH → SPEAK → send**) in a live chain-run before demos begin. Plan the physical room: merge groups need tables at T-45, handovers need a clear path, the chain-run at T-10 needs the projector. It's the finale, not a wrap-up.

---

*Prompt packs are starters, not scripts — mentors should encourage teams to go off-script once they're moving.*
