# Public Health Review Standards

Domain reference for the public-health-tuned reviewer panel. This file is the
default domain lens: when the manuscript is public health, epidemiology,
health policy, health services, global/community health, environmental or
occupational health, health economics, or implementation science, every
reviewer consults the relevant section below **in addition to** the
field-general criteria in `review_criteria_framework.md` and
`statistical_reporting_standards.md`.

It is a reviewer's checklist, not a rewriting instruction. Reviewers assess
whether the manuscript *meets* these standards and cite the specific gap; they
never edit the manuscript to conform.

---

## 1. Reporting guidelines by study design (the EQUATOR core)

The first methodology question for any public-health manuscript: **which
reporting guideline applies, and does the paper follow it?** A missing or
ignored guideline is a concrete, citable methodology finding.

| Study design | Guideline | Reviewer checks for |
|---|---|---|
| Observational (cohort, case-control, cross-sectional) | **STROBE** | Eligibility criteria, sources/methods of participant selection, bias sources, how confounders were handled, sample-size rationale, handling of missing data, sensitivity analyses |
| Randomized controlled trial | **CONSORT** | CONSORT flow diagram, randomization + allocation concealment, blinding, pre-registered primary/secondary outcomes, intention-to-treat, harms reporting |
| Trial protocol | **SPIRIT** | Pre-specified outcomes, sample-size justification, analysis plan registered before data collection |
| Systematic review / meta-analysis | **PRISMA (2020)** | PRISMA flow diagram, pre-registered protocol (PROSPERO ID), search strategy reproducibility, risk-of-bias tool named, heterogeneity (I²) reported and interpreted, publication-bias assessment |
| Diagnostic accuracy | **STARD** | Reference standard, blinding of index vs reference, 2×2 counts, sensitivity/specificity with CIs |
| Prediction model (dev/validation) | **TRIPOD** | Outcome + predictor definitions, handling of missing predictors, calibration + discrimination (C-statistic), internal/external validation, overfitting/optimism correction |
| Qualitative | **COREQ / SRQR** | Reflexivity, sampling to saturation, coding framework, analyst triangulation |
| Economic evaluation | **CHEERS** | Perspective, time horizon, discounting, incremental cost-effectiveness ratio (ICER), sensitivity analysis, model assumptions |
| Implementation / QI | **StaRI / SQUIRE** | Implementation strategy vs intervention distinction, fidelity, context, RE-AIM-style outcomes |
| Routinely-collected health data | **RECORD** (STROBE extension) | Database provenance, code lists / phenotype definitions, linkage validity, data-cleaning steps |
| AI/ML in health | **TRIPOD+AI / CONSORT-AI / SPIRIT-AI** | Training/validation/test split, external validation, label provenance, subgroup performance, intended use + failure modes |

**Finding template:** "The study is an observational cohort but does not
report against STROBE; specifically, [item] is absent — e.g., no accounting of
how [confounder] was controlled (STROBE item 16). This limits [internal
validity claim]."

---

## 2. Causal inference & confounding (the recurring public-health failure mode)

Most public-health claims are causal in ambition but observational in
evidence. Reviewers scrutinize the gap.

- **Confounding.** Are confounders identified a priori (ideally via a stated
  causal framework / DAG)? Is adjustment principled, or a "throw everything in
  the regression" model that risks over-adjustment and collider bias?
- **Collider / mediator mis-adjustment.** Adjusting for a variable on the
  causal pathway (mediator) or a common effect (collider) biases estimates.
  Flag when a controlled covariate is plausibly downstream of the exposure.
- **Reverse causation & temporality.** Especially in cross-sectional designs —
  can the outcome cause the exposure? Cross-sectional data cannot establish
  temporality; a causal-language conclusion on cross-sectional data is a
  standard over-claim.
- **Selection bias.** Who was excluded, lost to follow-up, or non-responding,
  and could that distort the estimate (e.g., healthy-worker effect,
  survivorship, ascertainment)?
- **Residual & unmeasured confounding.** Is there an E-value or equivalent
  sensitivity analysis quantifying how strong an unmeasured confounder would
  need to be to explain away the result?
- **Causal-strength calibration.** "Associated with," "predicts," and "causes"
  are different claims. The Abstract/Discussion must not upgrade an association
  to a cause. Bradford Hill considerations may be invoked but are not proof.

---

## 3. Measurement, populations, and generalizability

- **Case / exposure / outcome definitions.** Are they standard and validated
  (e.g., ICD codes, validated instruments, biomarker cutoffs), or ad hoc?
  Misclassification direction (differential vs non-differential) and its likely
  effect should be discussed.
- **Denominators and rates.** Are rates, prevalence, and incidence computed on
  the correct at-risk denominator? Are person-time and age-standardization
  handled where needed?
- **Sampling frame & representativeness.** To what population does the estimate
  generalize? Convenience or single-site samples constrain external validity —
  the Discussion must not silently generalize to a national or global
  population.
- **Subgroup / equity reporting.** Public-health relevance often lives in
  subgroups. Are results disaggregated where the question demands it (see §4)?
  Are subgroup analyses pre-specified or post hoc (multiple-comparison risk)?

---

## 4. Health equity, ethics, and community dimensions

These are substantive review dimensions in public health, not boilerplate.

- **Equity lens (PROGRESS-Plus).** Where relevant, are results considered
  across Place, Race/ethnicity, Occupation, Gender/sex, Religion, Education,
  Socioeconomic status, Social capital, and other vulnerability axes? Is an
  intervention likely to widen or narrow disparities?
- **Race/ethnicity as a variable.** Is race treated as a social construct with
  a stated rationale for its inclusion, rather than as a biological cause? Are
  categories justified and not conflated with genetic ancestry without basis?
- **Ethics & governance.** IRB / ethics approval and consent statement present?
  For secondary or routinely-collected data, is the data-use authorization and
  de-identification adequate? (See the IRB terminology note in §7.)
- **Community & stakeholder engagement.** For community-based or
  implementation work, was the affected community involved in design, and are
  findings reported back? Absence is a legitimate limitation to name.
- **Stigmatizing framing.** Person-first, non-stigmatizing language; the
  manuscript should not attribute health outcomes to individual behavior while
  ignoring structural determinants when the data implicate the latter.

---

## 5. Statistics — public-health-specific red flags

Read alongside `statistical_reporting_standards.md`. Additional PH-specific
checks:

- **Effect measures.** Absolute AND relative measures where decisions depend on
  them (relative risk without absolute risk difference / NNT can overstate
  importance). Risk ratio vs odds ratio used correctly for the design (OR
  over-states RR for common outcomes).
- **Time-to-event.** Kaplan-Meier / Cox assumptions (proportional hazards)
  checked? Competing risks handled where death is a competing event?
- **Clustering & multilevel structure.** Are clustered/repeated observations
  (patients within clinics, students within schools) modeled with
  mixed/GEE methods, or wrongly treated as independent?
- **Multiplicity.** Many outcomes/subgroups without correction inflate false
  positives; pre-registration vs exploratory status must be transparent.
- **Missing data.** Complete-case only vs multiple imputation; is
  missing-at-random plausible or is missingness informative?
- **Model diagnostics & overfitting.** Events-per-variable adequate?
  Calibration reported for prediction models, not just discrimination?
- **p-values vs estimation.** Confidence intervals and effect sizes preferred
  over bare "significant/not significant"; a non-significant result in an
  underpowered study is not evidence of no effect.

---

## 6. Public-health journal fit & significance (Journal-Fit Reviewer lens)

Public-health venues weight **population relevance, policy/practice
actionability, and equity impact** alongside novelty. The Journal-Fit Reviewer
considers:

- Does the paper answer a question that matters at a population/policy level,
  or is it a clinical/mechanistic study mis-aimed at a public-health readership?
- Is the "so what for practice or policy?" made explicit and proportionate to
  the evidence strength (a single observational study rarely warrants a policy
  mandate)?
- Representative public-health venues by sub-area (for tier calibration, not
  prescription): general/flagship (e.g., *The Lancet Public Health*, *AJPH*,
  *BMJ*), epidemiology (*International Journal of Epidemiology*, *Epidemiology*,
  *American Journal of Epidemiology*), global health (*The Lancet Global
  Health*, *BMJ Global Health*), health policy/services (*Health Affairs*,
  *Milbank Quarterly*, *Health Services Research*), environmental/occupational
  (*Environmental Health Perspectives*, *Occupational and Environmental
  Medicine*). Match the manuscript's scope and rigor to the tier; do not
  fabricate a specific editor's preferences.

---

## 7. Terminology precision (common review errors)

- **Anonymity ≠ confidentiality ≠ de-identification ≠ pseudonymization.** Do
  not conflate. Anonymized data cannot be re-linked; de-identified data has
  direct identifiers removed but may be re-identifiable; confidentiality is a
  handling promise. Flag when a manuscript claims "anonymous" for data that is
  merely de-identified.
- **Incidence vs prevalence**, **rate vs risk vs odds**, **sensitivity vs
  PPV** (the latter depends on prevalence) — precision matters and is a common
  source of over-claim.
- **Efficacy (ideal conditions) vs effectiveness (real-world)** — a trial shows
  efficacy; population impact is an effectiveness question.
- **Screening vs diagnosis** — different thresholds, different harms (lead-time
  and length-time bias in screening evaluations).

---

## 8. How this reference is used by each reviewer

| Reviewer | Primary sections |
|---|---|
| `field_analyst_agent` | §1 (pick the applicable guideline for the panel brief), §6 (venue tier) |
| `eic_agent` (Journal-Fit) | §6, §4 (equity significance), §2 (over-claim vs evidence) |
| `methodology_reviewer_agent` | §1, §2, §3, §5, §7 |
| `domain_reviewer_agent` | §1 (guideline adherence in context), §3 (measurement validity vs literature), §4 |
| `perspective_reviewer_agent` | §4 (equity, community, structural determinants), §6 (policy translation) |
| `devils_advocate_reviewer_agent` | §2 (causal over-reach — the strongest counter-argument is usually "this is association dressed as causation"), §3 (generalizability), §5 (multiplicity/underpowering) |
| `editorial_synthesizer_agent` | Weighs guideline-adherence and causal-calibration findings as core, not cosmetic |

**Epistemic status:** This is a curated reviewer aid, not an exhaustive or
authoritative registry. Reporting guidelines are updated by their maintaining
bodies (EQUATOR Network); when a reviewer knows a newer version applies, that
governs. The reviewer cites the specific unmet item, never "it doesn't follow
the guideline" as a bare assertion.
