# ⚠️ MENTOR-ONLY — Answer Key for Brief 03 (The Signal Room)

> **DO NOT SHARE WITH PARTICIPANTS.** This is the answer key. It lists every deliberate contradiction and red herring planted in the data, plus the real insights buried underneath — so you can tell whether a team *found signal* or *pattern-matched noise*.
>
> Fictional data · GTM AI Workshop. There is intentionally no pre-cleaned "correct" dataset; the mess is the exercise.

---

## How to judge a team in 30 seconds

Ask: **did they catch the traps, or did they narrate them as findings?**

- A team that says *"LinkedIn is our best channel, onboarding is great, March was a breakout month"* has been fooled by all three big traps. Low score.
- A team that says *"three of the obvious readings are artifacts — here's why — and here's what's actually true"* has found signal. High score.
- The strongest tell: **honesty about confidence.** Good teams flag what the data *can't* answer and name one thing they'd instrument.

---

## The deliberate contradictions & red herrings

### 1. Channel-name chaos (funnel-analytics.csv) — the #1 trap
LinkedIn appears under **three spellings**: `LinkedIn`, `linkedin`, `LI-organic`. A naive `GROUP BY channel` splits one channel into three, so LinkedIn looks like three small mediocre channels instead of one strong one.
- **Trap:** team ranks channels without normalizing → LinkedIn buried, wrong channel called "best."
- **Signal:** once merged, LinkedIn has the **lowest volume but by far the highest trial→paid (~14–16%)** and the **lowest churn (~1.5–2.2%)** of any channel. Organic Search converts ~8%, Paid Search only ~4.7%.
- **Good teams:** normalize the names first, then discover LinkedIn is the *quality* channel, not the volume channel.

### 2. The March outlier (2026-03, Organic Search)
March Organic Search shows **41,220 sessions / 894 signups** — roughly double every other month — with trial→paid **collapsing to 3.1%** (vs ~8% normal) and `activated` staying flat at 203.
- **Trap:** team calls March a "breakout month" or "organic is scaling."
- **Signal:** this is almost certainly a **tracking/attribution bug or bot/spike traffic** — sessions and signups exploded but *activated* did **not** move (still ~200, in line with every other month), and conversion cratered. Real qualified demand doesn't behave that way. The `notes` column literally says "source unclear."
- **Good teams:** quarantine March before computing any trend; note that including it drags down the org's overall conversion average and *manufactures* the "conversion is stuck" panic.

### 3. Cross-source contradiction: funnel CSV vs LinkedIn CSV
Both files describe LinkedIn. They tell different stories depending on which metric you read.
- The **funnel CSV** shows LinkedIn as low-traffic but high-converting (few signups, great trial→paid).
- The **LinkedIn CSV** shows contrarian/opinion posts pulling **huge engagement + clicks**, while **product-announcement posts get high impressions but almost no clicks or signups**.
- **The reconciliation (the real story):** LinkedIn *drives quality signups*, but **the posts doing the driving are the opinion/contrarian ones, not the product posts.** The product posts inflate impression counts (making a vanity dashboard say "LinkedIn reach is up!") while contributing almost nothing downstream. So "LinkedIn is working" and "LinkedIn posts aren't working" are *both* true — for different post types.
- **Trap:** team treats LinkedIn as one monolithic thing → either over-credits product posts (high impressions) or dismisses the channel (low total volume).

### 4. The LinkedIn content pattern (linkedin-engagement.csv)
Bucket by `format`/topic:
- **contrarian + opinion posts:** ~330–470 reactions, ~80–130 comments, **~310–450 clicks** each.
- **product posts:** ~60–120 reactions, **~25–75 clicks** each — despite often the *highest* impressions (the DACH/partner announcements hit 14k–15.6k impressions and still under 75 clicks).
- **Click ratio:** contrarian/opinion posts out-click product posts roughly **6–8x** (report "~5x+" as the discoverable pattern; anything in that range is correct).
- **Trap:** team ranks posts by impressions → concludes the big product announcements are the "top posts." They're the *loudest* and the *deadest*.
- **Signal:** LearnLoop's LinkedIn engine runs on **point-of-view content**, not product news. Note this rhymes with Brief 02's "voice has gone beige" problem — the contrarian voice is exactly what's working and exactly what's being diluted.

### 5. Reviews: the pattern is not the extremes (reviews.md)
18 reviews, mixed ratings. Individual 5-stars and 1-stars are noise; the **recurring themes** are the signal. Frequency across the 18:
- **Praise for the Loop skills engine** — the consistent *reason people stay/buy* (~11 of 18 mention it positively). This is the differentiator.
- **Onboarding/setup is painful** — DIY, no wizard, underdocumented, "almost churned in month one" (~9 of 18). Named cause of at least 2 actual churns.
- **Mobile app is weak** — read-only, buggy offline, logs out (~7 of 18). Hurts the "mobile learning" pitch specifically for frontline/field workforces.
- **Support response time is slow post-sale** — days to answer, "sales responsive then evaporates" (~6 of 18).
- **Trap:** team quotes the most dramatic single review (the 1-star "we churned" or a glowing 5-star) as "the finding." That's an anecdote, not a pattern.
- **Signal:** the product is *loved for Loop and lost at onboarding/mobile/support*. The strength and the leak are both structural and repeat across roles and company sizes.

### 6. Smaller planted noise (catch-if-thorough, not required)
- **Missing data, don't zero-fill:** `2025-09 Email` has blank `sessions`; `2026-02 Referral` is a fully empty row logged by the ETL; several `churn_pct` cells are blank for Referral/Email months. Teams that silently treat blank as 0 will mis-average. Good teams flag "missing ≠ zero."
- **December holiday dip** is *real seasonality*, not a problem — a trap in the opposite direction (teams may over-interpret the Dec drop as churn/decline when notes say "holiday dip" and Jan rebounds).
- **Paid Search churn (~4.6–5.1%) is the worst of any channel** and rising, while it's also the 2nd-highest volume and *worst* converter (~4.7%). A sharp team notices LearnLoop is spending to acquire its lowest-quality, highest-churn users. (Secondary insight — bonus, not required.)
- **Referral converts well (~10–11%)** but is tiny and under-invested — a quiet opportunity, easy to miss.

---

## The real insights (the "signal") — what a great briefing should surface

A strong output lands **2–4 of these**, each with evidence and a confidence level:

1. **Trial→paid isn't "stuck" — the number is being poisoned by the March bug and by channel-mix blending.** Strip March and normalize channels and the picture is healthy and *segmented*: some channels convert 3x others. (High confidence.)
2. **LinkedIn is the highest-quality acquisition channel** (best trial→paid, lowest churn) but it's small and its name is fragmented across the data — so it's invisible in naive reporting. Recommendation: invest more, fix the tracking taxonomy. (High confidence.)
3. **On LinkedIn, point-of-view/contrarian content does the work; product announcements are vanity impressions.** Recommendation: shift the content mix toward opinion posts. (High confidence — ~6–8x click gap.)
4. **The product is loved for Loop and leaking at onboarding + mobile + support.** These aren't acquisition problems, they're *retention/activation* problems — which also explains any real (non-March) conversion softness better than "bad leads." Recommendation: fix guided onboarding first (named cause of churn). (High-to-medium confidence — review pattern, not instrumented.)

**Bonus signals:** Paid Search is expensive, low-quality, and high-churn (reallocate budget); Referral is a small high-converting channel worth nurturing.

**The honest limits a great team names:** the data can't attribute a signup to a *specific* LinkedIn post (no UTM/join key between the two CSVs), and can't confirm whether March was bots vs a real campaign without the raw source data. Saying so is a strength.

---

*Mentor-only · fictional data · GTM AI Workshop.*
