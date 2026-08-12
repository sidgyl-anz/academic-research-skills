# Public Health Deep Research — install on Claude.ai

A self-contained, public-health-tuned build of the `deep-research` skill.
**No symlinks; all dependencies are nested under `./shared/`**, so the folder
works as a standalone Claude Skill.

## What this is

A 13-agent research team — question framing → methodology → systematic literature
search → source verification → synthesis → risk-of-bias → meta-analysis →
editorial/devil's-advocate/ethics review → report — with **public health baked
in as the default domain**: PICO/PECO question framing, design-to-question
matching, the public-health evidence hierarchy, PROSPERO/PRISMA systematic
reviews with the right risk-of-bias tool and GRADE certainty, causal-vs-
association calibration, equity/ethics, and health-claim fact-checking. Still
field-capable — a clearly non-PH topic uses the general references.

This is the **upstream** skill of the trio:
`public-health-deep-research` (investigate) → `public-health-paper-writer`
(draft) → `public-health-paper-reviewer` (critique).

## Install (Claude.ai — web/desktop)

1. Have a `.zip` of **this folder** (top level `public-health-deep-research/`
   containing `SKILL.md`). If you were handed `public-health-deep-research.zip`,
   you already have it.
2. Claude.ai → **Settings → Capabilities → Skills** (Skills must be enabled; on
   Team/Enterprise an admin may need to turn them on).
3. **Upload skill** → select the `.zip`.
4. In a chat, describe the task, e.g. *"Do a deep-research review of [health
   question]"*, *"Run a systematic review on [PICO]"*, or *"Fact-check this
   health claim."*

> Rebuild the zip from this folder:
> `cd .. && zip -r public-health-deep-research.zip public-health-deep-research -x '*.DS_Store'`

## Important: this runs on Claude.ai, not Claude Code

Originally built for Claude Code (hooks, Python gate scripts, CI, `ARS_*` env
vars, live bibliographic-API lookups, cross-model verifier). **None of that runs
by default on Claude.ai** — those layers degrade to advisory prose. See the
*"Running on Claude.ai"* section at the top of `SKILL.md`. The most important
consequence: **real citation lookups happen only if web search or a connector
(e.g. PubMed) is enabled** in your Claude.ai; otherwise the team reasons from the
sources you provide and flags anything it cannot verify against a real record,
rather than asserting it. Enable web search / the PubMed connector for live
verification.

## "Should I upload papers to tune it?"

**No — skills are not trained or fine-tuned on uploaded data.** A skill is
instructions the model reads at runtime. What helps:

- **The public-health research standards are already bundled** (see
  `references/public_health_research_standards.md`, plus the shipped EQUATOR,
  PRISMA, ethics, and IRB references). Nothing to upload for it to work.
- **Per-task, attach or point to your materials** — a corpus of papers to
  synthesize, a dataset, a claim to check, target databases. That is the
  research input, not tuning.
- **For live literature search**, enable web search or the PubMed connector in
  Claude.ai (Settings → Capabilities / Connectors) so the verification agents can
  resolve citations against real records.

## Customizing the public-health lens

- Edit `references/public_health_research_standards.md` for sub-field specifics.
- The per-agent *"Public Health Default (this build)"* blocks in
  `agents/research_question_agent.md`, `bibliography_agent.md`,
  `synthesis_agent.md`, and `devils_advocate_agent.md` control emphasis.
- To make it *only* public health, remove the "clearly not public health"
  fallback in `agents/research_question_agent.md` and the SKILL.md Public Health
  Default section.

## Provenance & license

Derived from **Academic Research Skills** by Cheng-I Wu
(https://github.com/Imbad0202/academic-research-skills), skill `deep-research`
v2.11.0. License: **CC-BY-NC 4.0** — attribution required, non-commercial. This
build tags itself `2.11.0-ph1`. See the upstream `references/changelog.md` for
the full engine history.
