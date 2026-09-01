# Writing Style Guide (house style)

Unified writing guidelines for drafting and revising manuscripts in this build.
Applied **by default** during drafting (`draft_writer_agent` self-review), in
`revision` mode, and as the sole task of `style-polish` mode. It governs *how*
the prose reads; it never changes what the science says.

**Prime directive.** Preserve the manuscript's scientific meaning, terminology,
numbers, distinctions, and level of precision. The aim is to make the argument
easier to understand without reducing its rigor. **If the original wording is
already clear and precise, leave it substantially unchanged** — do not rewrite
for its own sake.

**Audience & tone.** Write for an intelligent academic reader who is
approaching the topic for the first time. Use clear, formal, precise academic
language; prefer simple, direct wording over compressed or overly technical
phrasing. Keep the tone formal, restrained, readable, and confident without
overstating. Avoid conversational, journalistic, promotional, simplistic,
advocacy-driven, or overly polished "AI-style" prose.

---

## 1. Clarity and sentence structure

- Express **one main idea per sentence** where possible.
- Use **shorter sentences** when a sentence carries several separate claims;
  split it.
- Avoid unnecessary subordinate clauses, long strings of nouns, vague academic
  language, and overly compressed constructions.
- Prefer active or direct constructions when they improve clarity.

**Example — add the missing content rather than compress it:**

> Avoid: "Whether current evaluations comprehensively address patient safety is
> not well established."
>
> Prefer: "Whether evaluations of these chatbots capture the full range of
> patient safety concerns, rather than focusing mainly on answer accuracy, has
> not been well established."

**Five questions to ask when revising a sentence:**
1. What is this sentence actually trying to say?
2. Can the same meaning be expressed more directly?
3. Is any technical language necessary for precision?
4. Would a reader outside the project understand why this sentence matters?
5. Has any scientific nuance been lost?

---

## 2. Word choice and terminology

**Prefer familiar, concrete words when they carry the same meaning:**
- "help people decide when to seek medical care" rather than "advise on care
  seeking"
- "answer accuracy" rather than "accuracy-focused evaluation" where appropriate
- "patients were rarely involved in evaluating safety" rather than more abstract
  formulations

**Ban "looked at."** Never write "looked at" in the manuscript. Use
"evaluated," "assessed," "examined," or "reported," depending on the exact
meaning.

**Do NOT replace these established technical terms** — swapping them reduces
precision. Retain exactly:
`large language model` · `risk of bias` · `transparency and communication` ·
`accountability and oversight` · `harm avoidance` · `governance-aligned` ·
`sub-dimension` · `clinician panel` · `Firth-penalized logistic regression`.
(This is the standing protected-term list for this house style; extend it per
manuscript rather than paraphrasing a term away.)

**Avoid unnecessary intensifiers** unless necessary and supported by the
evidence: `very`, `highly`, `extremely`, `notably`, `importantly`,
`critically`.

**Avoid vague phrases when a more specific statement is possible:**
`it is unclear`, `there are concerns`, `this highlights`, `this suggests`,
`in this context`, `important`, `comprehensive`, `robust`, `adequate`. When one
is used, **specify exactly** what is unclear, important, limited, or being
suggested.

---

## 3. Central argument and reader orientation

Make the paper's main contrast **explicit** rather than leaving the reader to
infer it from the statistics. (Template, from the exemplar domain — adapt to the
manuscript's own contrast:)

> Evaluations of patient-facing LLM health chatbots focus heavily on whether
> answers are accurate, while broader aspects of patient safety are evaluated
> much less often.

Assume the reader does **not** already know the *why* behind the framing.
Briefly clarify the relevant relationships when needed, without adding
unnecessary explanation — for the exemplar domain that means: why accuracy
alone is insufficient for patient safety; why harm avoidance matters; why
transparency matters; why patient involvement matters; why the evaluation
sub-dimensions were developed. For any manuscript, surface the analogous
"why this matters" links the first-time reader needs.

---

## 4. Preserve methodological distinctions

Keep these distinctions **explicit** — they are methodologically important and
must not be blurred:

- what a study **evaluated** vs what it **reported**;
- **absence of reporting** vs **absence of conduct**;
- **evaluation of safety** vs **evidence that the system is safe**;
- **patient involvement in research** vs **patients acting directly as
  evaluators**;
- **dimension coverage** (breadth) vs **depth within a dimension**.

---

## 5. Section-specific guidance

### Results
- **Lead with the main pattern, then give the supporting numbers.** Make clear
  why each result matters before moving to the next.
- Keep denominators, percentages, confidence intervals, odds ratios, and
  P/q values **exactly as reported** unless explicitly asked to change them.
- **Do not add interpretation** that belongs in the Discussion.

### Discussion
- **Begin each paragraph with the substantive finding or argument**, not a
  generic phrase.
  > Prefer: "Patients were rarely involved in judging safety, while clinician
  > panels dominated evaluation."
  > Rather than: "Another important finding relates to patient involvement."
- After stating a finding, explain its practical or conceptual meaning.
- Do **not** overstate causality or imply that reporting gaps prove the system
  is unsafe.

### Abstract
Ensure the abstract can be understood **without reading the full paper.** For a
structured (e.g. IMPORTANCE / FINDINGS / CONCLUSIONS) abstract:

- **IMPORTANCE** — (1) briefly state what the systems/interventions can do;
  (2) identify the specific gap; (3) make clear the gap concerns the broader
  question (e.g. patient safety), not the narrow one (e.g. accuracy alone).
- **FINDINGS** — prioritise, in order: (1) the strong concentration on the
  dominant dimension (e.g. accuracy); (2) lower coverage of the other
  dimensions; (3) limited depth; (4) low patient involvement; (5) major
  secondary findings only if space allows. (Adapt the specific items to the
  manuscript.)
- **CONCLUSIONS** — state the **meaning** of the results in plain academic
  language, not a restatement of the findings.

---

## 6. Quick before/after reference

| Avoid | Prefer |
|---|---|
| "looked at whether chatbots were safe" | "evaluated whether chatbots were safe" |
| "advise on care seeking" | "help people decide when to seek medical care" |
| "accuracy-focused evaluation" | "answer accuracy" (where appropriate) |
| "this highlights the importance of transparency" | "few evaluations reported how the chatbot communicated uncertainty, which patients need to judge a recommendation" |
| "Whether current evaluations comprehensively address patient safety is not well established." | "Whether evaluations of these chatbots capture the full range of patient safety concerns, rather than focusing mainly on answer accuracy, has not been well established." |
| "Another important finding relates to patient involvement." | "Patients were rarely involved in judging safety, while clinician panels dominated evaluation." |

---

## 7. Style exemplars (optional)

Real papers in the target house style may be placed in `../examples/` (e.g.
`examples/style_exemplar_*.md`) and referenced here. When present, use them as
few-shot anchors for sentence rhythm, paragraph openings, and the level of
plain-language explanation — **not** as sources of content to import. Discipline
conventions and this guide take priority over any single exemplar.

> Status: no exemplar papers bundled in this build yet. Add them to
> `../examples/` and list them below.
>
> - _(none yet)_

**Epistemic status:** this is a house style guide, not a substitute for
journal-specific author instructions; where a target venue's guidelines
conflict, the venue governs. The guide changes wording, never the science —
numbers, terminology, and methodological distinctions are preserved exactly.
