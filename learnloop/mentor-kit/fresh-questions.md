# Fresh Questions — Brief 01 (The Signal Room)

> **MENTOR-ONLY.** Fire these at a team's "living read" tool live during demos. They're designed to be un-Googleable from the tool's own output — they force the tool (and the team) to reason on the spot rather than replay a canned insight. Cross-reference `contradictions-and-redherrings.md` for full detail on each trap.

---

## Core interrogation questions

**1. "You grouped by channel — walk me through how you handled the fact that LinkedIn shows up three different ways in this file."**
What a good answer includes: names all three spellings (`LinkedIn`, `linkedin`, `LI-organic`), states they were merged before any ranking happened, and shows that skipping this step would bury LinkedIn as three mediocre channels instead of one strong one.

**2. "Talk me through March. What's actually going on with Organic Search that month?"**
What a good answer includes: flags 2026-03 as an anomaly (sessions/signups roughly double every other month) and notes the tell — `activated` stays flat at ~203 while trial→paid collapses to 3.1% — as evidence of a tracking bug or bot spike, not real demand; says the month was quarantined before computing any trend.

**3. "One dashboard says LinkedIn is your best channel, another says it's barely worth the effort. Which is right?"**
What a good answer includes: reconciles both — LinkedIn is genuinely low-volume/high-quality in the funnel data, but within LinkedIn itself the contrarian/opinion posts drive the clicks and signups while product-announcement posts rack up impressions and do almost nothing downstream. Both readings are true for different slices of the same channel.

**4. "Forget the funnel numbers for a second — what's the product actually doing to people, according to the reviews?"**
What a good answer includes: a pattern read across the ~21 reviews (Loop praised in roughly 13 of 21, onboarding pain in roughly 9, mobile weakness in roughly 7, slow post-sale support in roughly 6), not a single dramatic 1-star or 5-star treated as "the finding."

**5. "Referral and Email are missing churn numbers for a lot of months. What did you do with those cells?"**
What a good answer includes: an explicit statement that blank was not treated as zero, and that averages/rankings involving churn exclude or flag those channels rather than silently pulling them toward zero churn.

**6. "Finance says trial-to-paid has been stuck at 6% all year. Do you believe that number?"**
What a good answer includes: identifies the two things poisoning the blended figure — the March anomaly dragging the average down, and mixing channels with wildly different conversion (LinkedIn ~14-16% vs Paid Search ~4.7%) into one number — and states the real picture is segmented and healthy, not stuck.

---

## Curveballs — correct answer is "the data can't tell us that"

**7. "This specific DACH product-launch post pulled 14,000+ impressions. How many of that month's signups came directly from it?"**
Correct answer: the data can't say. There's no UTM or shared join key between the LinkedIn engagement file and the funnel CSV, so no individual post can be tied to a specific signup — only channel-level and post-type patterns are visible. A team that invents an attribution number here should lose points; a team that names the missing join key should gain them.

**8. "Was the March traffic spike bots, a paid promo, or a genuine organic surge?"**
Correct answer: the data can't say. The CSV shows the symptom (sessions/signups doubling while activation stays flat) but not the cause — that requires raw source/referrer logs or ad platform data that isn't in this pack. The `notes` field literally says "source unclear." Good teams name this as the one thing they'd instrument next, rather than guessing a cause.

---

## Addendum v3 (Jul 13) — triage questions (the new core)

Fire these first; the original questions above remain valid as calibration-depth probes.

1. **"Why is ACC-X ranked above ACC-Y?"** — good: cites specific signals + fit reasoning for both. Bad: vibes, or signal *count*.
2. **"Which feed item almost fooled you?"** — good: names a noise decoy (capex-earmarked funding, call-center hiring spree) and the tell that gave it away.
3. **"What would move [pick a cold account] to hot?"** — good: a concrete signal type and why it matters for a learning platform specifically.
4. **"Who should Frieda call first tomorrow morning, and what does she say in sentence one?"** — good: one name, one signal, one angle. (This bridges straight into REACH's demo.)
