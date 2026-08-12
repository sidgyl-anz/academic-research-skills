# Public Health Research Standards

Domain reference for the public-health-tuned research team. When the topic is
public health, epidemiology, health policy/services, global/community health,
environmental & occupational health, implementation science, or health
economics — or the domain is ambiguous — the research agents consult this file
**in addition to** the general references. It complements, and points into, the
guideline material this skill already ships:
`references/equator_reporting_guidelines.md`,
`references/systematic_review_protocol.md`,
`references/systematic_review_toolkit.md`, the PRISMA templates in
`templates/`, `references/ethics_checklist.md`, and
`references/irb_decision_tree.md`.

This is a research aid: it shapes how questions are framed, how evidence is
found and weighed, and how claims are verified. It never fabricates findings or
sources.

---

## 1. Framing the research question (PICO / PECO / PICOTS)

Public-health questions are sharpest in structured form:

- **PICO** (interventions): Population · Intervention · Comparator · Outcome.
- **PECO** (exposures / observational): Population · Exposure · Comparator ·
  Outcome. The default for etiologic/epidemiologic questions.
- **PICOTS** adds Timeframe and Setting — often decisive in public health
  (which population, which setting, over what horizon).

Name the **unit** (individual vs population/ecological), the **outcome type**
(incidence, prevalence, mortality, DALYs, behavior, policy adoption), and
whether the question is **descriptive, etiologic, interventional, or
predictive** — this determines the design and the evidence that can answer it.
Flag equity dimensions up front (which populations, which disparities).

## 2. Matching design to question

| Question type | Strongest feasible design |
|---|---|
| Does an intervention work? | RCT / cluster-RCT; else quasi-experimental (difference-in-differences, interrupted time series, regression discontinuity) |
| What is the risk/causal relationship? | Cohort > case-control > cross-sectional; triangulate with natural experiments / Mendelian randomization where available |
| How common / how distributed? | Surveillance, cross-sectional prevalence surveys |
| Does a test/model predict? | Diagnostic-accuracy or prediction-model study with external validation |
| What is the total evidence? | Systematic review ± meta-analysis |
| Why / how (mechanism, context) | Qualitative or mixed-methods, implementation study |

State the design's inherent limits when framing (observational designs support
association, not causation, without a defended causal framework).

## 3. Evidence hierarchy & source quality (public health)

Weigh evidence roughly: **systematic reviews / meta-analyses of well-conducted
studies > individual RCTs > cohort > case-control > cross-sectional > case
series / expert opinion**, always adjusted for study quality and directness to
the question. Additional PH-specific source guidance (read with
`references/source_quality_hierarchy.md`):

- **Primary indexed literature first** — PubMed/MEDLINE, Embase, Cochrane
  Library, CINAHL, PsycINFO; for this skill's programmatic lookups, the arXiv /
  OpenAlex / Crossref / Semantic Scholar protocols in `references/` apply.
- **Authoritative grey literature** matters in public health — WHO, CDC, ECDC,
  national health agencies, Cochrane, GBD/IHME, Guttmacher, and peak
  professional bodies. Treat as high-quality for surveillance/policy data;
  still date- and provenance-check.
- **Guard against contaminated/hallucinated citations** — every reference must
  resolve to a real, locatable record (this skill's verification agents apply);
  be especially wary of too-perfect preprint citations.
- **Currency** — health evidence and guidelines change; prefer current guideline
  versions and note the search date.

## 4. Systematic reviews & meta-analysis (PH conduct)

When the deliverable is a systematic review / meta-analysis, follow the skill's
`references/systematic_review_protocol.md` and toolkit, with these PH anchors:

- **Register the protocol** (PROSPERO) before screening; report against
  **PRISMA 2020** (flow diagram + checklist — templates shipped in `templates/`).
- **Risk of bias with the right tool:** **RoB 2** (RCTs), **ROBINS-I**
  (non-randomized interventions), **Newcastle-Ottawa** (observational),
  **QUADAS-2** (diagnostic accuracy), **AMSTAR-2** (appraising existing reviews).
  The `risk_of_bias_agent` selects by design.
- **Heterogeneity & synthesis:** report I², choose fixed vs random effects with
  justification, pre-specify subgroup/sensitivity analyses, assess **publication
  bias** (funnel plot / Egger where k is adequate).
- **Certainty of evidence:** grade with **GRADE** (per outcome), not just the
  pooled estimate.

## 5. Causal inference & confounding (the recurring PH trap)

Most PH evidence is observational but the questions are causal. In synthesis and
in the devil's-advocate pass, scrutinize: confounding (identified a priori,
ideally via a DAG), collider/mediator mis-adjustment, reverse causation and
temporality (fatal for cross-sectional causal claims), selection bias
(healthy-worker, survivorship, loss to follow-up), and unmeasured confounding
(is an E-value / sensitivity analysis offered?). Bradford Hill considerations
can *organize* a causal argument but do not *prove* it. **The most common valid
challenge to a PH claim is "this is association presented as causation."**

## 6. Equity & ethics in the research itself

- **Equity lens (PROGRESS-Plus)** — frame who is affected and whether findings
  or interventions could widen or narrow disparities; disaggregate where the
  question demands it; treat race/ethnicity as a social construct with a stated
  rationale, not a biological cause.
- **Human-subjects / secondary-data ethics** — IRB/ethics approval, consent,
  and for secondary or routinely-collected data the data-use authorization and
  de-identification. Use `references/irb_decision_tree.md` and
  `references/ethics_checklist.md`; keep terminology precise (anonymized ≠
  de-identified ≠ confidential ≠ pseudonymized — see the IRB glossary bundled
  under `shared/references/irb_terminology_glossary.md`).

## 7. Fact-checking health claims (fact-check mode)

For a health claim, locate the **primary source**, check the study design and
whether the claim matches what the design can support, check effect size and
uncertainty (not just "significant"), check population/generalizability, and
check whether it has been superseded or retracted. Distinguish **relative vs
absolute** risk (headlines inflate relative), **efficacy vs effectiveness**, and
**association vs causation**. Flag single-study or preprint claims as
provisional.

## 8. How the research agents use this file

| Agent | Primary sections |
|---|---|
| `research_question_agent` | §1 (PICO/PECO), §2 (design match), §6 (equity up front) |
| `socratic_mentor_agent` | §1, §5 (surface causal ambition vs design) |
| `bibliography_agent` | §3 (sources, indexing, contamination guard) |
| `synthesis_agent` | §3, §5 (causal calibration in synthesis), §6 |
| `risk_of_bias_agent` | §4 (tool selection by design) |
| `meta_analysis_agent` | §4 (heterogeneity, publication bias, GRADE) |
| `devils_advocate_agent` | §5 (causal over-reach is the strongest challenge) |
| `ethics_review_agent` | §6 |
| `report_compiler_agent` | §7 currency/claim calibration; equity framing |

**Epistemic status:** curated research aid, not an exhaustive registry.
Reporting guidelines and appraisal tools are maintained by their bodies
(EQUATOR, Cochrane, GRADE working group) and updated periodically; when a newer
version applies, it governs. The team finds and weighs real evidence — it never
manufactures sources or findings.
