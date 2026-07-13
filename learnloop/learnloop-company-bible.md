# LearnLoop — Company Bible

Canon v2: 2026-07-13
**Status:** Fictional company for the GTM AI Workshop (Jul 16). Every challenge brief lives in this world. Nothing here is real.

> **Read this first.** All three data packs (account penetration, brand voice, signal room) reference the facts below. Teams get this bible at kickoff so their build is grounded in one coherent company. For exact numbers, `company-facts.json` is the machine-readable source of truth; the story in one page is `learnloop-story-onepager.md`. If any data pack contradicts these, canon wins.

---

## 1. The one-liner

**LearnLoop** is a B2B SaaS learning-enablement platform. It helps mid-market companies turn scattered training into measurable skill growth — "close the loop between learning and doing."

Think: a modern LMS + skills-tracking + content marketplace, sold to HR/L&D teams who are tired of tools nobody uses.

---

## 2. Firmographics (the company itself)

| Attribute | Value |
|-----------|-------|
| Founded | 2019, Amsterdam |
| Offices | Amsterdam (HQ), Berlin (opened Q3 2025) |
| Stage | Series C (raised €45M, 2025; €68M total) |
| Employees | ~280 |
| ARR | €30M |
| Growth | ~55% YoY (was 90% in 2024, 70% in 2025) |
| Customers | ~750 mid-market companies, avg ACV ~€40k (range €15k–120k) |
| Home market | Benelux (NL strongest) |
| Beachhead | DACH: Berlin office + 9 customers won via warm network |
| Next | Spain (next quarter, planning only) |
| Board plan | **€200M ARR by 2030** |

**The situation:** LearnLoop is winning. The product converts, customers renew (112% NRR), the pitch lands. But growth is decelerating for one structural reason: **every euro of new pipeline still scales with headcount.** One RevOps analyst reads four data sources. Six writers get hand-edited one draft at a time. Outreach personalisation is artisanal. The board's plan does not fund an army; it funds proof that the machine can scale without one. This is not a strategy problem — LearnLoop knows its market, its ICP, and its pitch. It is a documentation, data, and engineering problem.

**Why Germany matters this quarter:** the Berlin beachhead was won the artisanal way — founder intros, references, feet on the ground. That warm network has run dry, and the cold-template fallback produced a 0.4% reply rate on the 50-account target list. The board wants 5 enterprise logos from those 50 accounts this quarter, with the existing 3-person pod and zero new hires. Germany is where the old way ran out first; it is the proving ground, not the whole plan.

---

## 3. What LearnLoop sells

Three modules, sold together or standalone:
1. **Learn** — the LMS: courses, paths, mobile, compliance tracking
2. **Loop** — skills engine: maps who-can-do-what, flags gaps, recommends learning. **The moat.**
3. **Market** — content marketplace: 8,000+ off-the-shelf courses + partner content

**The pitch:** most learning tools track *completions*. LearnLoop tracks *capability* — did the skill actually land, and is it being used. That's "closing the loop."

---

## 4. ICP (who they sell to)

**Company profile:** 200–2,000 employees, mid-market, in transformation (scaling, reorg, compliance pressure, or skills shortage).

**Buying committee:**
| Persona | Title examples | What they want | What they fear |
|---------|---------------|----------------|----------------|
| **Economic buyer** | CHRO, VP People, L&D Director | Provable ROI, board-ready impact numbers | Buying another tool nobody uses |
| **Champion** | L&D Manager, People Ops Lead | Less manual admin, higher engagement | Being blamed for low adoption |
| **Blocker** | IT / Security, Procurement, works council (DE) | Integration, data security, no new risk | Shadow tools, SSO/compliance gaps, employee-monitoring concerns |
| **End user** | Employees, team leads | Relevant, short, mobile learning | Boring mandatory training |

**Primary target titles for outbound (Brief 01):** CHRO, VP People/HR, L&D Director, Head of Talent Development, People Ops Lead.

Deeper, in buyer language: `icp-snapshot.md`.

---

## 5. Competitors (all fictional)

| Competitor | Position | LearnLoop's line against them |
|-----------|----------|-------------------------------|
| **SkillForge** | Enterprise incumbent, heavy, expensive | "Built for the org chart of 2010" |
| **Cognita** | Cheap, content-only marketplace | "A library, not a loop — no proof anything landed" |
| **Bloomwork** | Trendy, engagement-first, light on data | "Great streaks, no skills" |
| **Traida** | HR suite with a bolt-on LMS | "Learning as an afterthought" |

---

## 6. Brand voice — the CURRENT state (this is the problem in Brief 02)

LearnLoop's voice *should* be: direct, confident, a little contrarian, human. Short sentences. Proof over hype. Talks to L&D leaders as peers, not prospects.

**But it has drifted to beige.** Six people now publish under the brand and the writing has become generic SaaS mush: "empower," "unlock," "seamless," "in today's fast-paced world," "solutions that drive results." The voice that made early content stand out is gone. And next quarter it also has to work in German and Spanish — with no native editor on staff.

**Voice rules (the standard the check-loop should enforce):**
- DO: lead with a claim or a number; short sentences; name the real pain; talk like a peer
- DON'T: "empower / unlock / seamless / leverage / synergy / in today's world / drive results"
- DON'T: hedge ("can help you potentially improve...")
- Tone: confident, specific, warm. Never corporate-neutral.

*(Full voice guide + author samples live in the Brief 02 data pack.)*

---

## 7. The GTM team (the machine's operators)

- **Sales:** 12 AEs, 6 SDRs (home markets) + the 3-SDR Berlin pod (Lukas Brandt, Frieda Sommer, Joris van Dam). The pod's cold outbound: 0.4% reply — see Brief 01.
- **Marketing:** 10 people, 6 of whom publish (Marcus de Wit, Priya Sharma, Daniel Okafor, Sofia Marchetti, Tom Willems, Hannah Berg). Output 4x'd this year — the source of Brief 02's voice drift. Led by Nora Bakker (VP Marketing).
- **RevOps:** Mila Verhoeven, team of one; owns four data sources nobody agrees on (Brief 03).
- **Leadership:** Daan Vermeulen (CEO), Bram Hoekstra (CRO), Iris Chen (Head of Product). All under board pressure; each has their own theory of what's wrong (see Brief 03's `what-the-org-believes.md`).

Full roster with faces and quirks: `gtm-roster.md`.

---

## 8. The Machine — how the three briefs are one system

Watch any great marketer or SDR work. Three skills, running from their head:

```
   ┌─────────┐      ┌─────────┐      ┌─────────┐
   │  SENSE  │ ───▶ │  SPEAK  │ ───▶ │  REACH  │
   └─────────┘      └─────────┘      └─────────┘
        ▲                                  │
        └───────────── replies ◀───────────┘
```

- **SENSE** (Brief 03 · The Signal Room): who is worth it, what changed, why now, what actually works. Produces **the play** — consumed by REACH (targeting, channel, angles) and SPEAK (what content does the pulling).
- **SPEAK** (Brief 02 · The Brand Voice Machine): what to say, to which persona, in whose voice — in any language. Produces **the voice system** — consumed by REACH (every outbound piece passes the check) and the six authors.
- **REACH** (Brief 01 · The Account Penetration Machine): land it, thread the account, earn the reply. Produces **the outreach engine** — and its replies feed back into SENSE. That's the loop, closed.

All three skills live in people's heads today: artisanal, undocumented, linear. Heads don't multiply. Systems do. The workshop builds the three subsystems; the final half hour reconnects them.

---

## 9. Numbers teams can cite (shared canon)

Keep these consistent across all briefs so the world holds together (authoritative source: `company-facts.json`):
- ARR **€30M** · ~280 employees · **55%** YoY growth (down from 90%)
- ~**750** mid-market customers · avg ACV ~€40k (€15k–120k)
- Board plan: **€200M by 2030**
- DACH cold outbound reply rate: **0.4%** (3,200 emails, 13 replies — DACH list only; the home motion is warm and healthy)
- Goal this quarter: **5 enterprise logos from 50 DACH accounts**, 3-person pod, zero new hires
- Content output up **4x** this year, 6 publishers (Brief 02)
- ~2,100 free-trial signups/quarter (product-led, user-level; excluded from the 750 count) — trial→paid is the disputed metric (Brief 03)

---

*This bible + `company-facts.json` are the single source of truth for the workshop fiction. If a data pack contradicts them, canon wins.*
