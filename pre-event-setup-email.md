# Pre-Event Setup Email

Created: 2026-07-07 · Updated: 2026-07-14 (per Jul 14 catch-up)
**Send:** ~Jul 14 (Sander/Unmuted owns the send) · **To:** all registered participants
**Goal:** everyone arrives with Claude Code installed, so the day starts building — not troubleshooting.

---

**Subject:** Before Thursday: 10 minutes of setup so you can build on the day

**Preview text:** Install Claude Code before you arrive — we'll cover the rest.

---

Hi {{first_name}},

You're in for the AI Workshop on **Thursday, July 16**. You'll pick one of three real GTM challenges and **build a working fix with Claude** in a couple of hours — with us in the room to help.

Two quick things before the day: **get set up (10 min)** and **confirm you're coming**.

**1 — Install Claude Code (≈10 minutes)**

We're building with **Claude Code**, so please install it beforehand.

- **Node.js** (if you don't have it): download the "LTS" version from [nodejs.org](https://nodejs.org), install, then check in your terminal (Terminal on Mac, PowerShell on Windows):
  ```
  node --version
  ```
- **Claude Code:**
  ```
  npm install -g @anthropic-ai/claude-code
  ```
- **Confirm it launched:**
  ```
  claude --version
  ```
  A version number means you're set.

**2 — How you'll access Claude on the day**

**We sponsor one Claude account per team** — you'll log in together on the day, no cost to you. You don't need to arrange anything.
- **If you'd like to work on your own laptop too, bring your own Claude login as a backup.** Handy if you want to keep building after the event.
- No coding experience needed. If you can describe what you want in plain language, you can build with Claude. That's the whole point.

**3 — Please confirm you're coming**

Just reply to let us know you'll be there. **Try to arrive on time** — the kickoff sets up the whole afternoon, and it's hard to drop in once teams are building.

**Getting there:** come by **public transport or bike** — there's no parking at the venue. If you can, **bring a laptop dongle/adapter** (HDMI/USB-C) so your team can use a screen.

**Stuck on setup?** Reply and we'll help before Thursday, or come a few minutes early — we'll get everyone unblocked, and there's a browser fallback so nobody's left behind.

See you Thursday — bring your GTM problems, we'll bring the tools.

{{sender_name}}

---

*Internal notes (not part of the email):*
- *Access = one **Claude Max plan account per team** (~$100 each), created on a fresh Gmail + card the morning of, handed out at kickoff. One laptop per team drives the shared account; own-laptop users fall back to their own login. NOT company API keys (avoids the approval/credit-burn risk). Passwords reset after the event.*
- *Browser fallback = claude.ai on a personal login.*
- *Send owned by Sander/Unmuted; date + OV + dongle + attendance-confirm all requested in the Jul 14 catch-up.*
