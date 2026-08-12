# Public Health Writing Standards

Domain reference for the public-health-tuned writer. When the manuscript is
public health, epidemiology, health policy/services, global/community health,
environmental & occupational health, implementation science, or health
economics — or the domain is ambiguous — the writing agents consult this file
**in addition to** the general references (`academic_writing_style.md`,
`paper_structure_patterns.md`, `writing_quality_check.md`).

This is a writing aid: it shapes how the paper is *drafted* so it will pass a
public-health peer review. It never invents data, results, or methods the
author did not supply.

---

## 1. Structure is driven by the reporting guideline

For public-health empirical work, the applicable **EQUATOR reporting
guideline** dictates the section structure and the required content of each
section. Pick the guideline from the design and let its checklist drive the
outline:

| Design | Guideline | Drives |
|---|---|---|
| Observational (cohort/case-control/cross-sectional) | **STROBE** | Methods subsections + what Results must report |
| RCT | **CONSORT** | Flow diagram, Methods, primary/secondary outcome reporting |
| Systematic review / meta-analysis | **PRISMA 2020** | Flow diagram, search-strategy appendix, risk-of-bias + heterogeneity |
| Trial protocol | **SPIRIT** | Pre-specified outcomes + analysis plan |
| Diagnostic accuracy | **STARD** | 2×2 counts, reference standard |
| Prediction model | **TRIPOD (+AI)** | Development/validation, calibration + discrimination |
| Economic evaluation | **CHEERS** | Perspective, horizon, ICER, sensitivity analysis |
| Routinely-collected data | **RECORD** | Data provenance, code lists, linkage |
| Qualitative | **COREQ / SRQR** | Reflexivity, sampling, coding |
| Implementation / QI | **StaRI / SQUIRE** | Intervention vs strategy, fidelity, context |

The author supplies the study and its results; the writer's job is to present
them **against the checklist** so no required item is silently omitted. If the
author has not provided a checklist item (e.g. how missing data was handled),
flag the gap for the author rather than inventing content.

---

## 2. IMRaD, public-health flavor

- **Introduction** — burden/importance of the health problem (magnitude,
  populations affected, equity relevance), the gap, and a precisely scoped
  objective/hypothesis. Keep it short and funnel-shaped; do not over-claim
  novelty (bound novelty to what the search covered).
- **Methods** — the section reviewers scrutinize most. Order it the way STROBE/
  CONSORT expect: study **design**; **setting** and dates; **participants**
  (eligibility, sources, selection); **variables** (exposures, outcomes,
  confounders, effect modifiers — with definitions and, where relevant,
  validated instruments/codes); **data sources / measurement**; **bias**
  (how addressed); **study size** (justification/power); **statistical
  methods** (models, how confounders were handled, subgroup/sensitivity
  analyses, missing-data handling, software). Name the reporting guideline
  followed.
- **Results** — participant flow (a diagram for trials/reviews), descriptive
  table (Table 1), then main results with **both absolute and relative effect
  measures and 95% CIs**, not bare p-values. Report the pre-specified primary
  outcome first; label post-hoc/exploratory analyses as such. Do not interpret
  here.
- **Discussion** — key results tied to the objective; comparison with prior
  evidence; **mechanism/plausibility**; **limitations** (bias, confounding,
  generalizability — specific, not ritual); and a **calibrated** conclusion
  (see §3). Implications for practice/policy proportionate to the evidence.

---

## 3. Causal-language calibration (the load-bearing writing discipline)

Most public-health studies are observational; the writing must not upgrade the
claim beyond the design. Match verbs to evidence:

- Cross-sectional / single observational study → "was **associated with**",
  "**correlated with**", "**more likely**". Never "causes", "leads to",
  "reduces/increases" as bare causal verbs.
- Reserve causal language for randomized designs or a stated, defended causal
  framework (and even then, hedge appropriately).
- The **Abstract conclusion and the Discussion conclusion must not exceed the
  Results.** A policy recommendation needs evidence strength to match; a single
  observational finding rarely licenses a mandate — write "these findings
  suggest… and warrant confirmation in…" rather than "policymakers should…".
- Honor upstream-marked protected hedges (see
  `../shared/references/protected_hedging_phrases.md` and
  `../shared/references/claim_strength_ladder.md`): do not silently strengthen
  or weaken a claim across drafts/revisions without an authorizing reason.

---

## 4. Structured abstract

Most public-health journals require a **structured abstract**. Default to:
**Background / Objectives · Methods · Results · Conclusions** (some venues use
Introduction · Methods · Results · Discussion, or add Design/Setting/
Participants). Put the primary effect estimate **with its CI** in Results, and
a calibrated one-sentence Conclusion. Respect the venue word limit (often
250–300 words). The bilingual abstract agent should preserve this structure in
both languages.

---

## 5. Equity, ethics, and reporting integrity

- **Equity framing (PROGRESS-Plus).** Where the question implicates
  disparities, state which populations, disaggregate results as appropriate,
  and discuss whether findings/interventions could widen or narrow inequities.
  Frame determinants structurally where the data support it, not solely as
  individual behavior.
- **Ethics reporting.** Include the IRB/ethics-committee approval and consent
  statement; for secondary/routinely-collected data, state the data-use
  authorization and de-identification. Use terminology precisely — anonymized ≠
  de-identified ≠ confidential ≠ pseudonymized (do not overclaim "anonymous").
- **Reporting integrity.** Declare funding and role of funder, competing
  interests, data/code availability, and (for reviews/trials) the registration
  ID (PROSPERO / trial registry). These are expected, not optional, in most PH
  venues.

---

## 6. Terminology precision (write these correctly)

incidence vs prevalence · rate vs risk vs odds · risk ratio vs odds ratio
(OR overstates RR for common outcomes) · sensitivity/specificity vs PPV/NPV
(the latter depend on prevalence) · efficacy (ideal) vs effectiveness
(real-world) · screening vs diagnosis · absolute vs relative risk (report both;
relative-only overstates importance) · number needed to treat/harm where it
aids interpretation.

---

## 7. How the writing agents use this file

| Agent | Primary sections |
|---|---|
| `intake_agent` | Detect PH domain + applicable guideline (§1) |
| `literature_strategist_agent` | §2 Introduction burden/gap; evidence hierarchy for PH |
| `structure_architect_agent` | §1, §2, §4 (guideline-driven outline + structured abstract slots) |
| `draft_writer_agent` | §2 Methods/Results conventions, §3 causal calibration, §5 ethics/integrity |
| `abstract_bilingual_agent` | §4 structured abstract, §3 calibrated conclusion |
| `citation_compliance_agent` | §5 registration/ethics/reporting-integrity statements |

**Epistemic status:** curated writing aid, not an exhaustive registry.
Reporting guidelines are maintained by the EQUATOR Network and updated
periodically; when a newer version applies, it governs. The writer presents the
author's study against the checklist — it does not manufacture study content.
