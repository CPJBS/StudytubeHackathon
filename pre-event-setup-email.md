# Pre-Event Setup Email

Created: 2026-07-07
**Send:** ~Jul 11 (5 days before) · **From:** Chiel / the organizing team · **To:** all registered participants
**Goal:** everyone arrives with Claude Code installed and working, so the 15-min setup clinic on the day is a check, not a scramble.

---

**Subject:** Before Wednesday: 10 minutes of setup so you can build on the day

**Preview text:** Get Claude Code running before you arrive — we'll hand you the keys.

---

Hi {{first_name}},

You're in for the AI Workshop on **Wednesday, July 16**. You'll pick one of three real GTM challenges and **build a working fix with Claude** in a couple of hours — with us in the room to help.

To make the most of the day, spend **10 minutes** getting set up now. Do this before you arrive and you'll be building from minute one.

**What you need:**
- Your laptop (Mac, Windows, or Linux — you'll be working on it all day)
- A terminal (Terminal on Mac, PowerShell on Windows)
- ~10 minutes

**Step 1 — Install Node.js** (if you don't have it)
Download the "LTS" version from [nodejs.org](https://nodejs.org) and install it. To check it worked, open your terminal and run:
```
node --version
```
You should see a version number (v18 or higher).

**Step 2 — Install Claude Code**
In your terminal, run:
```
npm install -g @anthropic-ai/claude-code
```

**Step 3 — Confirm it launched**
Run:
```
claude --version
```
If you see a version number, you're done. 🎉

**What about the API key?**
You don't need one yet — **we'll hand each team an API key with credits at the start of the day.** Just get the install working now.

**Stuck?**
- Reply to this email and we'll help before Wednesday, or
- Come 15 minutes early — we'll run a quick setup clinic and get everyone unblocked.
- Worst case, you'll still be able to build in your browser on the day. Nobody gets left behind.

**No coding experience needed.** If you can describe what you want in plain language, you can build with Claude. That's the whole point.

See you Wednesday — bring your GTM problems, we'll bring the tools.

{{sender_name}}

---

*Internal note (not part of the email): keys are handed out sealed at kickoff, not before, so nobody pre-burns credits. The browser fallback = claude.ai with the team's data pack loaded as a Project. Keep the setup clinic to 15 min — mentors (Chiel/Casper/Dimitri) roam.*
