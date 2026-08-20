# Health Journal Prose Style — Corpus-Derived Writing Conventions

Style reference for the prose this skill produces: research reports, evidence
syntheses, systematic-review write-ups, executive summaries and fact-check
briefs in health and digital health.

Two uses:

1. **Writing.** Research reports read best when they follow the conventions of
   the literature they summarize. The register measured below — hedging that
   names its reason, findings stated with denominators, sections that shift
   voice — is what makes a synthesis read as evidence rather than as commentary.
2. **Reading.** The same conventions are diagnostic. A source whose Results
   section hedges heavily, whose percentages have no recoverable denominators,
   or whose conclusions outrun its design, is telling you something about its
   reliability before you appraise its methods.

Conventions below are measured from published articles, not asserted from taste.
This file complements the general register guidance the report compiler already
applies; a target venue's author instructions always govern over both.
---

## 0. Where these conventions come from

Measured over a reference corpus of **69 full-text journal articles (≈755,000
words)** spanning the JAMA family, *BMJ* and *BMJ Open*, the *Lancet* family,
*Nature Medicine* / *npj Digital Medicine* / *Communications Medicine*, the JMIR
family, *International Journal of Medical Informatics*, *International Journal
of Nursing Studies*, BMC journals, *World Psychiatry*, *Annals of Internal
Medicine* and others — mostly systematic reviews, evaluation studies, reporting
guidelines and policy statements in health and digital health.

All frequencies below are computed on the corpus's **≈635,000-word running-prose
subset** — tables, figure captions and reference lists removed — and are given
per 1,000 words (`/1k`) or per 100,000 words. They describe what published
health-science prose actually does. They are calibration, not quotas: no
sentence should be edited to hit a number, and the target journal's own
instructions always govern.

---

## 1. Sentence rhythm

| Measure | Corpus value |
|---|---|
| Mean sentence length | **19.9 words** |
| Median | **17 words** |
| Standard deviation | 13.8 words |
| Under 15 words | **43%** of sentences |
| 15–24 words | 28% |
| 25–34 words | 17% |
| 35+ words | 12% |

The distribution is wide and **right-skewed**: nearly half of all sentences are
short, and the mean is pulled up by a long tail. Published health prose is not
uniformly dense — it alternates a compact declarative with a longer qualified
one.

**What this means when drafting:**

- Default to a **17–20 word** sentence. When a sentence passes ~35 words, check
  whether it is carrying two claims that should be split.
- A finding, a definition or a turn in the argument is usually a **short**
  sentence. Long sentences carry qualification, enumeration and conditions.
- Monotony in either direction is the failure. Five consecutive 25-word
  sentences reads as machine-generated; so does a run of clipped 8-word ones.

**Paragraphs:** mean **94 words**, median **75** (10th percentile 29, 90th
percentile 181) — roughly **3–6 sentences**, one claim per paragraph, with the
claim in the first sentence.

---

## 2. Register shifts by section

The same paper changes voice and stance section by section. This is the single
most reliable marker of authentic health-science prose, and the most common
thing a generic "academic tone" gets wrong by flattening.

| Section | first person (`we`/1k) | passive (`was/were …ed`/1k) | hedges (`may/might/could`/1k) | `However,`/1k |
|---|---|---|---|---|
| Abstract | 2.63 | 6.35 | 1.53 | 1.31 |
| Introduction | 2.29 | 2.20 | **3.47** | 1.25 |
| **Methods** | **6.21** | **13.32** | 1.59 | **0.11** |
| Results | **0.92** | 4.01 | **1.10** | 0.48 |
| Discussion | 2.81 | 2.23 | **5.74** | **1.59** |

How to read it:

- **Methods is the most procedural section and uses both voices heavily.** "We
  searched MEDLINE, Embase and Web of Science" and "Records were screened
  independently by two reviewers" sit in the same paragraph. Passive runs about
  2:1 over first person here. Methods almost never hedges and almost never says
  "However" — it reports what was done, in the past tense, without argument.
- **Results is the least first-person and least hedged section.** Findings are
  stated about the data, not about the investigators: "Accuracy ranged from 25%
  to 97.8%", not "we believe the model performed well". A hedge inside Results
  usually signals a claim that belongs in the Discussion.
- **Discussion carries the hedging** — over five times the rate of Results — and
  the contrastive turns. This is where `may`, `suggest` and `However` belong.
- **Introduction hedges about potential and importance**, not about findings.

---

## 3. Hedging: the workhorses and the clichés

Hedging in this corpus is **frequent but lexically narrow**. `may` alone
accounts for most of it (1.66/1k overall); `might` (0.24), `could` (0.60),
`suggest*` (0.49), `indicate*` (0.42), `potential*` (1.20) follow.

What is strikingly **rare** — the boilerplate that reads as filler to editors in
this field:

| Formula | Occurrences in ≈635,000 words of running prose |
|---|---|
| "further research is needed" (and variants) | **7** |
| "should be interpreted with caution" | **6** |
| "taken together" | **4** |
| "remains to be determined" | **1** |
| "cannot be excluded / ruled out" | **0** |
| "more research is needed" | 7 |

These phrases are not forbidden, but at roughly **one occurrence per 100,000
words** they are not how this literature hedges. The corpus hedges by **naming
the specific reason** instead:

- Weak: "These results should be interpreted with caution."
- Corpus-style: "Because the questions were drawn from a single specialty board
  examination, the accuracy estimate may not transfer to open-ended clinical
  queries."

A hedge that could be pasted into any paper is not doing work. Attach it to the
feature of *this* study that creates the uncertainty, and state the direction of
the likely bias where it is knowable.

**Strength ladder actually observed:** `may / might / could` → `suggest,
indicate, appear` → `show, demonstrate, found`. Reserve the last tier for what
the data directly established.

**Association versus causation** shows up in the vocabulary: `associat*` occurs
at 0.52/1k against `caus*` at 0.20/1k — roughly **2.6 associational statements
for every causal one**, in a corpus dominated by observational and evaluative
designs. Causal verbs are used sparingly and deliberately.

---

## 4. Reporting numbers inside prose

Numbers are woven into sentences, not left to tables alone. The dominant
convention is **count with denominator, then percentage in parentheses**:

- `137 (99.3%)` — the `n (%)` form, by far the most common (459 instances).
- `4/23, 17%` or `911 (97%) of 935` — explicit denominators when the base
  changes between statements.
- Estimates travel with their uncertainty: `34% (95% CI 31% to 37%)`.

Rules that follow:

- **Never state a bare percentage whose denominator the reader cannot recover.**
  "97% of cases" is incomplete; "911 (97%) of 935 cases" is the house style.
- **Attach the interval to the estimate**, in the same parentheses, at first
  mention.
- **P-value formatting is venue-specific and must be internally consistent.**
  The corpus splits: `P<.001` (no leading zero, capital italic P — JAMA and JMIR
  families, 169 instances), `p<0.001` (lowercase, leading zero, 95), `P<0.05`
  (32). Pick the target journal's form and apply it throughout; do not mix.
- **CI formatting likewise splits** — `95% CI 31% to 37%` (BMJ-style spacing,
  110) versus `95% CI, 31%-37%` (JAMA comma style). One form per manuscript.
- Report the statistic that was actually computed. Inter-rater agreement appears
  as κ with its percent agreement; heterogeneity as I²; spread as SD or IQR
  matched to whether the summary is a mean or a median.

---

## 5. Connectives

Sentence-initial `However,` is the workhorse contrastive at **0.72/1k** — about
**3.3×** `Furthermore,` (0.22) and **4.5×** `Moreover,` (0.16). The emphatic
adverbs that generic academic prose over-uses are close to absent: `Notably,`
0.08/1k (52 occurrences), `Importantly,` **0.01/1k** — 9 occurrences in 635,000
words.

- Use `However,` for genuine contrast, and let it do most of the contrastive
  work. Reaching for `Nevertheless,` / `Conversely,` / `In contrast,` on every
  turn is a tell.
- Cut `Importantly,` and `Notably,` almost entirely. If a point is important,
  its position and its content say so.
- **`First, / Second, / Third,` is a real pattern but a reserved one** (0.10 /
  0.08 / 0.04 per 1k): it is used mainly to enumerate limitations, and
  occasionally to structure a methods rationale. Do not impose it on every
  paragraph — the "rule of three" applied everywhere is a stronger AI tell than
  any single word.

---

## 6. Vocabulary calibration

The house `writing_quality_check.md` flags terms that appear disproportionately
in AI-generated text. This corpus lets the flag list be **calibrated instead of
absolute** — some flagged words are genuinely near-absent from published health
prose, while others are ordinary usage in this field.

| Term | Corpus rate (per 100k words) | Reading |
|---|---|---|
| tapestry, testament, embark | **0.0** | Absent. Never appropriate here. |
| groundbreaking, synergy, showcase | 0.5–0.6 | Effectively absent. |
| intricate, cornerstone | 0.8–0.9 | Effectively absent. |
| delve, realm | 1.1 | Effectively absent. |
| pivotal, cutting-edge | 1.3 | Rare; each instance should be justified. |
| streamline, navigate | 1.9 | Rare. |
| multifaceted | 2.4 | Rare. |
| foster, leverage | 3.8–4.4 | Occasional; usually a plainer verb is better. |
| nuanced | 4.7 | Occasional. |
| holistic, paradigm | 5.2 | Occasional; standard in specific subfields. |
| underscore | 9.6 | In genuine use — but "highlight"/"emphasize" is more common. |
| landscape | 11.8 | In genuine use, mostly literal or field-descriptive. |
| **crucial** | 13.4 | **Ordinary usage in this literature.** Not a tell on its own. |
| **robust** | 29.7 | **Ordinary usage** — often the statistical sense. Not a tell. |
| **comprehensive** | 50.2 | **Ordinary and frequent** (comprehensive search, comprehensive review). Not a tell. |

**Rule:** treat the top block as effectively banned, the middle as
justify-each-use, and the bottom three as unremarkable — flagging `comprehensive`
in "we performed a comprehensive search" is a false positive against the
published record. What marks AI prose is not any single word but **clustering**:
several mid-list terms in one paragraph, or the same intensifier recurring
across sections.

**Em dashes** appear at **0.53/1k — roughly one per 1,900 words**, i.e. one or
two in a typical Results section and often none. Semicolons and parentheses do
most of the work an em dash would otherwise do.

---

## 7. Titles

- Median **12 words** (mean 11.7); very few under 8 or over 20.
- **38%** carry a colon, and the segment after it names the **study design**:
  *"Conversational Agents Supporting Self-Management in People With a Chronic
  Disease: Systematic Review"*; *"Comparing Diagnostic Accuracy of Clinical
  Professionals and Large Language Models: Systematic Review and Meta-Analysis"*.
- The title states the population, the object of study and the design. It does
  not state the finding, and it is not a question or a slogan.

---

## 8. Abstracts

- Structured abstracts run **≈350–400 words** (corpus median 389; range
  143–566), and the header set is fixed by the journal family:

| Family | Header set |
|---|---|
| JMIR / BMC | Background · Objective · Methods · Results · Conclusions |
| JAMA family | Importance · Objective · Design, Setting, and Participants · Main Outcomes and Measures · Results · Conclusions and Relevance |
| BMJ | Objective · Design · Setting · Participants · Main outcome measures · Results · Conclusions |
| Lancet family | Background · Methods · Findings · Interpretation · Funding |
| Nature / npj | Unstructured single paragraph |

- The abstract is **denser than the body** (mean sentence 26 words) and carries
  the highest passive rate of any section — it is compressed reporting, not
  argument.
- Every number in the abstract reappears in the body. The abstract's Conclusions
  sentence must not be stronger than the Discussion's.
- Where the venue provides one (JAMA "Key Points"; BMJ "What is already known /
  What this study adds"; Lancet "Research in context"), it is a separate, tighter
  restatement — not a copy of the abstract.

---

## 9. Discussion architecture

The JMIR-family subheadings recur across the corpus and are a reliable skeleton
even when the target journal does not print the headings:

1. **Principal Findings** — restate the design and the sample, then the headline
   result. Observed openers: *"In this systematic review, we examined 31 studies
   that evaluated the effectiveness and usability of conversational agents in
   health care."* · *"Our meta-analysis suggests that … overall accuracy of 0.61
   (CI 0.58–0.64)."* The first sentence names the study type and *n*, not the
   topic in general.
2. **Comparison With Prior Work** — situate against named prior studies,
   agreements first, then divergences with a proposed reason.
3. **Limitations** (or **Strengths and Limitations**) — see §10.
4. **Future Directions** — specific and derived from the limitations; *"future
   research should"* appears 47 times, *"more research is needed"* only 7.
5. **Conclusions** — see §11.

---

## 10. The limitations paragraph

A standard, recognisable shape. Observed openers are plain and first-person:

- *"Our study has several limitations."*
- *"There are limitations to this study."*
- *"Despite these strengths, several limitations must be acknowledged."*

Then enumerate with `First, / Second, / Third,` — this is the one place the
enumeration pattern is expected. Each item should do three things: **name the
limitation, say what it affects, and where possible give the direction of the
bias.** "The sample was drawn from a single centre, so the estimate may not
generalise to community settings, and case-mix there is likely less severe" is a
limitation; "the sample size was small" alone is not.

Do not close the paragraph with a generic reassurance ("nevertheless, our
findings remain robust"). The corpus moves straight from the limitations to
what can still be concluded, specifically.

---

## 11. Conclusions

The dominant shape is a **concession pivot**: state the capability or finding,
turn on `However`, name the constraint, then say what follows.

> *"LLMs offer promise to remediate health care demand and staffing challenges by
> providing accurate and efficient context-specific information to critical
> decision makers. However, progress is obstructed by inconsistent …"*

> *"Mental health chatbots have rapidly evolved from deterministic rule-based
> systems to sophisticated LLMs, signalling a transformative shift in digital
> psychiatry. Despite this promising advancement, our systematic review …"*

Rules:

- The conclusion restates what **this** study supports, at the strength the
  results carry — never a new claim, never a stronger one.
- Priority claims are bounded and rare: *"to (the best of) our knowledge"*
  appears 23 times against only 6 bare *"this is the first"*. If novelty is
  claimed, bound it to the search performed and its date.
- No exhortation, no closing flourish, no restatement of the abstract.

---

## 12. Quick self-check before handing off a draft

- [ ] Sentence lengths vary; no run of five in the same 5-word band; mean near 20.
- [ ] Paragraphs are 3–6 sentences with the claim first.
- [ ] Methods reads procedurally (past tense, no hedges, no "However").
- [ ] Results states findings without first-person interpretation or hedging.
- [ ] Discussion carries the hedges — and each hedge names its specific reason.
- [ ] Every percentage has a recoverable denominator; every estimate has its CI.
- [ ] P-value and CI formatting matches the target journal and is consistent.
- [ ] `However` does the contrastive work; `Importantly,` / `Notably,` cut.
- [ ] `First, / Second, / Third,` used only where enumeration is real.
- [ ] Em dashes ≤ ~1 per 2,000 words.
- [ ] No term from the top block of §6; mid-block terms justified, not clustered.
- [ ] Title names population, object and design; ~12 words.
- [ ] Abstract ≈350–400 words on the venue's header set; no claim stronger than
      the Discussion's.
- [ ] Limitations name direction of bias, not just existence.
- [ ] Conclusion adds no claim the Results do not carry.

---

## 13. Reading the corpus conventions as appraisal signals

The same measurements support source appraisal. None is decisive alone; each is
a prompt to look closer.

| Observation in a source | What to check |
|---|---|
| Hedging concentrated in Results rather than Discussion | Findings may be weaker than the abstract implies — read the actual estimates |
| Percentages without recoverable denominators | Selective reporting, or a very small base |
| Estimates reported without intervals | Precision may be poor enough that the point estimate misleads |
| Conclusions stronger than the Discussion, or than the design supports | Over-claim; record the calibrated version, not the abstract's |
| Unbounded priority claims ("the first study to…") | In this literature, priority is normally bounded to the search and its date |
| Generic limitations only ("sample size was small") | The specific threats to validity may not have been considered |
| Mixed P-value / CI formatting within one paper | Weak internal editing; check the numbers themselves more carefully |

---

## 14. How this reference is used by each agent

| Agent | Primary sections |
|---|---|
| `report_compiler_agent` | §1 rhythm, §2 register by section, §3 hedging, §4 numbers in prose, §5 connectives, §9–§11 for report Discussion/Conclusions, §12 self-check |
| `synthesis_agent` | §3 (hedge with a named reason), §4 (carry denominators and intervals through the synthesis), §13 |
| `source_verification_agent` / `bibliography_agent` | §13 appraisal signals; §4 (does the source report what it claims to report?) |
| `risk_of_bias_agent` | §13 (reporting-quality signals feed, but never substitute for, the instrument's domains) |
| `meta_analysis_agent` | §4 (statistic matched to summary: κ, I², SD vs IQR) |
| `devils_advocate_agent` | §11 (conclusions that outrun results), §3 (hedges doing no work) |
| `research_question_agent` / `socratic_mentor_agent` | §7 (a well-formed title names population, object and design — a useful test of whether a question is specified) |

**Boundary:** §13 is a set of prompts for closer reading, not a scoring
instrument and not a risk-of-bias tool. Reporting style is evidence about
reporting, not about study conduct; the risk-of-bias instruments remain the
authority on conduct.

**Epistemic status:** descriptive conventions measured over one defined corpus of
health and digital-health journals, not a universal rule set. Sub-fields differ,
journals differ, and author instructions always govern. The frequencies are
calibration for judgment, never targets to hit.
