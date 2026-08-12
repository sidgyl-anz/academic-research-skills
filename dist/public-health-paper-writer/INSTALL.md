# Public Health Paper Writer — install on Claude.ai

A self-contained, public-health-tuned build of the `academic-paper` writing
skill. **No symlinks; all dependencies are nested under `./shared/`**, so the
folder works as a standalone Claude Skill.

## What this is

A 12-agent academic-writing pipeline (intake → literature → structure → argument
→ draft → abstract → citations → format) with **public health baked in as the
default domain**: it structures the paper against the applicable EQUATOR
reporting guideline (STROBE, CONSORT, PRISMA, SPIRIT, TRIPOD, CHEERS, RECORD…),
keeps causal language calibrated to the study design, defaults to a structured
abstract, and includes equity/ethics/reporting-integrity statements. It is still
field-capable — a clearly non-PH topic is written on the general references
(higher education is the fallback default).

Companion skill: **public-health-paper-reviewer** (review side). Use the writer
to draft/revise, the reviewer to critique.

## Install (Claude.ai — web/desktop)

1. Have a `.zip` of **this folder** (top level `public-health-paper-writer/`
   containing `SKILL.md`). If you were handed `public-health-paper-writer.zip`,
   you already have it.
2. Claude.ai → **Settings → Capabilities → Skills** (Skills must be enabled; on
   Team/Enterprise an admin may need to turn them on).
3. **Upload skill** → select the `.zip`.
4. In a chat, describe the task, e.g. *"Write a public health paper on [topic]
   using our study data"* or *"Draft the Methods and Results for this cohort
   study."* The skill triggers on writing/drafting language.

> Rebuild the zip from this folder:
> `cd .. && zip -r public-health-paper-writer.zip public-health-paper-writer -x '*.DS_Store'`

## Important: this runs on Claude.ai, not Claude Code

Originally built for Claude Code (hooks, Python gate scripts, CI, `ARS_*` env
vars, cross-model verifier). **None of that runs on Claude.ai** — those layers
degrade to advisory prose; the writing is driven by the instructions here. See
the *"Running on Claude.ai"* section at the top of `SKILL.md`. Notably:
`format-convert` to DOCX/PDF needs Pandoc/LaTeX — on Claude.ai prefer Markdown or
LaTeX source unless code execution with Pandoc is available.

## "Should I upload papers to tune it?"

**No — skills are not trained or fine-tuned on uploaded data.** A skill is
instructions the model reads at runtime. What helps:

- **The public-health writing standards are already bundled** (see
  `references/public_health_writing_standards.md`). Nothing to upload for it to
  write PH papers well.
- **Per-manuscript, attach your materials in the chat** — your data, results,
  prior drafts, target-journal author guidelines. That is the writing input, not
  a tuning step, and it is what makes the output specific to your study.
- **Optional — Style Calibration.** The pipeline can learn your writing voice
  from 3+ of your past papers provided at intake (Step 10). This is a soft
  style guide applied during drafting, not model training; discipline
  conventions always take priority. See `shared/style_calibration_protocol.md`.
- **Optional — exemplars.** Drop a model paper for your target venue into
  `examples/` and reference it, to anchor structure/tone.

## Customizing the public-health lens

- Edit `references/public_health_writing_standards.md` to add sub-field or
  venue-specific conventions (e.g. a journal's structured-abstract headers, a
  specialty reporting guideline).
- The per-agent *"Public Health Default (this build)"* blocks in
  `agents/intake_agent.md`, `structure_architect_agent.md`,
  `draft_writer_agent.md`, `abstract_bilingual_agent.md`, and
  `literature_strategist_agent.md` control emphasis — tune those.
- To make it *only* public health, remove the "clearly NOT public health"
  fallback in `agents/intake_agent.md` and the SKILL.md Public Health Default
  section.

## Provenance & license

Derived from **Academic Research Skills** by Cheng-I Wu
(https://github.com/Imbad0202/academic-research-skills), skill `academic-paper`
v3.2.0. License: **CC-BY-NC 4.0** — attribution required, non-commercial. This
build tags itself `3.2.0-ph1`. See the upstream `references/changelog.md` for
the full engine history.
