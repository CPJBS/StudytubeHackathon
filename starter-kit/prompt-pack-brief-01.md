# Prompt Pack — Brief 01: The Account Penetration Machine

Paste these into Claude Code to get moving. They escalate from "understand the data" to "build the machine." Adapt freely — these are starters, not a script.

---

**1. Understand what you're working with**
> Read `accounts.csv`, `contacts.csv`, and `burned-templates.md` in this folder. Give me a quick read: what's in the account list, who the contacts are, and why you think the current outbound is only getting a 0.4% reply rate.

**2. Find the accounts worth attacking first**
> From `accounts.csv`, rank the 50 accounts by how promising they are for LearnLoop right now. Use the tech signals and firmographics. Give me the top 10 with a one-line reason each, and flag which have a clear trigger to reach out about.

**3. Build the research → signal step**
> For the top 5 accounts, pull together what we know from the data (the account row + its contacts + any intent signal) into a short "account brief" for each — the angle, the person to hit first, and the reason-to-believe. Write it to a file I can open.

**4. Write outreach that beats the burned templates**
> For account [pick one], write a 3-touch outreach sequence to the champion and a separate one to the economic buyer. It has to be specific to their situation and it must NOT sound like `burned-templates.md`. Short, human, one clear reason to reply.

**5. Turn it into a repeatable machine**
> Now make this repeatable: given any account_id, produce the account brief + a personalised multi-thread sequence automatically. Show me it working on 3 different accounts so I can demo it.

---

**Stretch goals if you're flying:**
- Score every contact for who to approach first across the whole list
- Generate a one-page "war room" HTML view of your top 10 accounts
- A/B two different angles for the same account and argue which will land

**Demo target:** show the machine turning a raw account row into a personalised, credible multi-thread sequence — and explain why it beats the 0.4% baseline.
