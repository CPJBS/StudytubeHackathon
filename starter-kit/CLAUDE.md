# LearnLoop — Team Workspace Primer

**Welcome. Claude reads this file automatically every time you start.** It gives Claude the context it needs to help you build. You don't need to edit it — just start working.

---

## What you're doing today

Your team has been assigned one of three briefs for **LearnLoop**, a (fictional) B2B learning-enablement SaaS. Your job: **build a working fix with Claude** in the next couple of hours, then show it off.

- Open your brief's folder — `brief-01-signal-room/` (the triage), `brief-02-brand-voice/` (the production line), or `brief-03-account-penetration/` (the motion machine). **Start with that folder's `README.md`.**
- The top level of this pack is LearnLoop's **shared world**: `learnloop-story-onepager.md` (the story — read this one first), `learnloop-company-bible.md`, `company-facts.json` (the numbers — every fact should trace back to this file), `icp-snapshot.md`, `rate-card.md`, `gtm-roster.md`, `win-loss-call-notes.md`, and `customer-quote-bank.md`. It's worth pointing Claude at these directly — they're what let your build reason about LearnLoop like an insider instead of guessing.
- Your starter prompts: the matching `prompt-pack-brief-0X.md`. Paste one in to get moving.
- **One company, three folders.** Everyone has the same pack. Your brief's folder is your assignment; the other two are the same company seen from different angles — wander in when your build genuinely needs them, not before you've shipped something.

---

## How to drive Claude Code (read this — it's the difference between a demo and a build)

1. **Talk in plain language.** Describe the outcome you want, not the code. "Read the accounts file and find the 10 best targets" beats trying to write the logic yourself.
2. **Point Claude at your files.** "Look at `accounts.csv` and `contacts.csv`" — Claude will read them. It works from your actual data, not guesses.
3. **Go one step at a time.** Build a piece, look at it, then ask for the next piece. Small loops beat one giant prompt.
4. **Ask it to make things you can see.** "Turn this into an HTML page I can open" or "write this to a file" — you want an artifact to demo, not just an answer in the chat.
5. **When it's wrong, say so plainly.** "That's not it — the tone is too corporate, make it sharper." Claude iterates fast on feedback.
6. **Ask Claude how to do something if you're unsure.** "What's the best way to approach this?" is a valid prompt.

## The bar for the showcase

You'll get ~3 minutes to show what you built. Aim for **something that runs / something you can see**: a working script, a generated set of assets, an HTML page, a rewrite loop, a briefing.

## One company, one machine

**Your brief stands alone — build it and demo it on its own terms.** But LearnLoop's machine has three functions — SENSE (which account, why now), REACH (what we do about it), SPEAK (the words it needs) — and your build is one of them. The strongest builds behave like real subsystems: clean inputs, clean outputs, one screen someone else could open, read, or run without you explaining it from scratch. Build as if the other two subsystems exist. It's a full system — remember that.

---

## Ground rules

- **All the data is fictional.** LearnLoop isn't real — build freely.
- **Your account:** each team gets a shared Claude account (we cover it) — log in together on one laptop. Plenty for today, so build freely; just don't run giant jobs in a loop for no reason. Working on your own laptop too? Use your own Claude login.
- **Stuck for more than a few minutes?** Grab a mentor (Chiel, Casper, or Dimitri). That's what we're here for.

Now open `README.md` and go. 🚀
