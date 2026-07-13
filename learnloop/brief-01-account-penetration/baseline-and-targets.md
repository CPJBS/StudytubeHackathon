# Baseline & Targets — Brief 01

> **Fictional.** All numbers below belong to the LearnLoop workshop world and are consistent with the company bible (outbound reply rate **0.4%**; goal **5 enterprise logos from 50 DACH accounts** this quarter; DACH + Spain expansion under board pressure).

---

## The current funnel (last quarter, DACH outbound)

The 3 SDRs ran the burned templates (see `burned-templates.md`) across the DACH list. Here's what came back.

| Stage | Volume | Rate | Notes |
|-------|--------|------|-------|
| Contacts targeted | ~130 | — | ~2.6 contacts per account across 50 accounts |
| Emails sent (incl. follow-ups) | 3,200 | — | ~4-touch sequences, mostly generic |
| Delivered | 3,040 | 95% | 5% bounce — some stale data |
| Opened | 790 | 26% | Opens look fine; the problem is downstream |
| **Replied** | **13** | **0.4%** | ← the headline problem |
| Positive replies | 4 | 0.12% | Most replies were "not now" / "wrong person" |
| Meetings booked | 2 | 0.06% | From ~3,000 sends |
| Opportunities created | 1 | — | Not yet closed |
| Enterprise logos won | 0 | — | Target this quarter: **5** |

**Read:** deliverability and opens are healthy. The collapse is at **reply** — the emails give buyers no reason to respond. This is a *relevance and messaging* problem, not a volume or list-hygiene problem. Sending more of the same makes the list more burned, not more productive.

---

## What "good" looks like (the target)

The goal is not "a nicer template." It's a fundamentally different motion: **research → signal → personalised, multi-threaded outreach that earns replies.**

| Metric | Baseline | Target | Why |
|--------|----------|--------|-----|
| Reply rate | 0.4% | **3–5%** | 8–12x lift; achievable when every email is account-specific and signal-driven |
| Positive reply rate | 0.12% | **1.5%+** | Replies that move toward a conversation, not "wrong person" |
| Meetings booked (quarter) | 2 | **20–25** | Enough top-of-funnel to yield 5 closes |
| Accounts multi-threaded | ~0 | **≥3 personas** on every Tier-A account | Enterprise deals need buyer + champion + blocker aligned |
| **Enterprise logos won** | 0 | **5 of 50** | The board-level goal for DACH this quarter |

**A "good" email, concretely:**
1. **Proves you looked** — references a real, account-specific signal (a reorg, a hire, a competitor tool, a LinkedIn post you can actually quote).
2. **Names a pain the buyer already feels** — mapped to their persona (economic buyer wants ROI; champion wants less admin; blocker wants security/integration proof).
3. **Earns the reply** — one clear, low-friction ask; no feature dump; no banned words (`empower / unlock / seamless / leverage / drive results / in today's world`).
4. **Multi-threads the account** — different, coordinated angle per persona, not the same email to three people.

**A "good" workflow** turns the raw pack (`accounts.csv` + `contacts.csv` + the signals below) into that, at scale, for the 50 accounts — and shows its work (why this account, why this signal, why this angle).

---

## Optional: intent signals table

Fictional trigger events per account teams can weave into outreach. Each account already carries a `tech_signals` field in `accounts.csv`; this table adds richer, dated signal types. Use them to prioritise and to prove relevance. **Not every account needs to appear here** — part of the challenge is deciding which signals actually matter for a first touch.

| account_id | company | signal_type | signal (fictional) | freshness | so-what for outreach |
|-----------|---------|-------------|--------------------|-----------|----------------------|
| ACC-002 | Hanseatic Assekuranz | leadership_hire | New CHRO (Thorsten Lindqvist) started Q1 with a mandate to modernise learning | 8 weeks | New buyer + explicit mandate = rare open window; lead with the mandate |
| ACC-002 | Hanseatic Assekuranz | tech_change | Legacy LMS goes end-of-life 2026 | ongoing | Forced evaluation; be in the consideration set before the RFP |
| ACC-003 | Alpspitz Logistik | job_post | Hiring "Head of Talent Development" (open) | 2 weeks | Priority hire signals L&D is now a board topic; onboarding-post-M&A pain |
| ACC-003 | Alpspitz Logistik | m_and_a | 3 acquisitions in 18 months | recent | Integration pain — no shared learning system across merged entities |
| ACC-004 | Nordlicht Retail | announcement | Public frontline-upskilling initiative for 2026 | 4 weeks | Named priority from the CPO; tie the pitch to the announced initiative |
| ACC-004 | Nordlicht Retail | competitor | Uses Cognita (content-only) | ongoing | "A library, not a loop" — champion frustrated it proves nothing |
| ACC-005 | Vitalpharm | job_post | Hiring 5 L&D roles simultaneously | 3 weeks | L&D team scaling under GxP pressure; automation angle for the champion |
| ACC-012 | Talwind Aerospace | compliance | Safety-cert training with ITAR data-residency constraints | ongoing | Lead the blocker (CISO) with data-residency proof, not features |
| ACC-013 | Eschenbach Chemie | job_post | L&D Director role open 60+ days | 9 weeks | VP People covering the gap and overwhelmed — sell relief, not software |
| ACC-013 | Eschenbach Chemie | reorg | Company-wide reorg underway | recent | Skills-mapping need spikes during reorg; time it now |
| ACC-015 | Meridian Software | competitor | Uses Bloomwork; internal complaints about low adoption | ongoing | "Great streaks, no skills" — champion + new RevOps hire want data |
| ACC-019 | Lindenhof Versicherung | tech_signal | L&D KPIs tied to NPS; SkillForge reporting too slow | ongoing | Champion needs faster reporting cadence — that's the wedge |
| ACC-022 | Goldregen Handelsgruppe | leadership_hire | New Chief People Officer; omnichannel reskilling is her flagship | 6 weeks | New CPO building a legacy program — align to her flagship |
| ACC-026 | Donaustahl Industrie | reorg | Reorg into business units; SkillForge not keeping up | recent | Multi-BU skills view is the story; SkillForge displacement angle |
| ACC-027 | Bergkristall Pharma | expansion | Announced expansion into Spain | 5 weeks | Mirrors LearnLoop's own DACH+Spain push — scalable multi-market learning |
| ACC-032 | Habsburg Versicherung | rfp | Running an agent-training platform RFP; Traida bolt-on failing | 3 weeks | Get into the RFP now; "learning as an afterthought" line lands here |
| ACC-035 | Matterhorn Präzision | tech_signal | Needs DE/FR/IT multilingual training; SkillForge English-only pain | ongoing | Multilingual capability is a concrete SkillForge gap to attack |
| ACC-036 | Helvetia Assurance | job_post | L&D Director role open; FINMA compliance + 3-language workforce | 7 weeks | Buyer gap + hard compliance = urgency; lead the blocker (CISO) on FINMA |
| ACC-037 | Rhône Biotech | funding_expansion | Scaling into DACH; hiring L&D Manager | 4 weeks | Growth + new champion role = greenfield; GxP + Swissmedic proof needed |
| ACC-042 | Zürisee Detailhandel | leadership_hire | New CPO; frontline reskilling flagship; omnichannel push | 6 weeks | Same play as ACC-022 — align to the new CPO's flagship program |
| ACC-044 | Basilisk Chemie | reorg | Reorg + REACH/Swiss compliance; SkillForge legacy struggling | recent | Post-reorg skills mapping + audit-ready compliance; displace SkillForge |
| ACC-049 | Säntis MedTech | job_post | L&D Director role open 90 days; MDR compliance | 13 weeks | Long-vacant role = acute pain; MDR traceability is the blocker's hook |

**Signal-type legend:** `leadership_hire`, `job_post`, `m_and_a`, `reorg`, `tech_change`, `competitor`, `compliance`, `announcement`, `expansion`, `rfp`, `funding_expansion`.

---

## How teams will be judged (suggested)

- **Relevance** — could this email *only* have been sent to this account? (If it could go to any of the 50 unchanged, it fails.)
- **Signal use** — is the outreach grounded in a real, cited signal?
- **Multi-threading** — is the account worked as a committee (buyer + champion + blocker), with coordinated, persona-specific angles?
- **Voice** — direct, specific, human; zero banned words (per the bible).
- **Believable lift** — is the reply-rate story credible (3–5%), or hand-wavy?
