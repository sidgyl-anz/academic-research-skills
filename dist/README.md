# Public Health Skills — bundle for Claude.ai

These are **three standalone, public-health-tuned Claude Skills**, each as its
own ready-to-upload `.zip`:

> **Note on "install all at once":** Claude.ai's skill uploader takes **one
> skill per `.zip`** and **rejects a zip that contains other zips** ("Zip cannot
> contain nested zip files"). So there is no single-archive install — upload the
> three zips below individually. Each is already in the correct format (the skill
> folder with its `SKILL.md` at the root).

| Order | Zip | Skill | Use it to |
|---|---|---|---|
| 1 | `public-health-deep-research.zip` | `public-health-deep-research` | Investigate: PICO/PECO questions, systematic search, PRISMA/meta-analysis, source verification, fact-check |
| 2 | `public-health-paper-writer.zip` | `public-health-paper-writer` | Draft & revise: guideline-driven structure (STROBE/CONSORT/PRISMA…), calibrated causal language, structured abstracts |
| 3 | `public-health-paper-reviewer.zip` | `public-health-paper-reviewer` | Critique: 5-reviewer panel + editorial decision, causal-over-reach & equity checks |

## Install (one skill per upload)

1. In Claude.ai go to **Settings → Capabilities → Skills** (Skills must be
   enabled; on Team/Enterprise an admin may need to turn them on).
2. **Upload skill** → select `public-health-deep-research.zip`.
3. Repeat **Upload skill** for `public-health-paper-writer.zip` and
   `public-health-paper-reviewer.zip`. All three coexist.

Upload each `.zip` as-is — do not unzip it and do not combine them into one
archive (the uploader rejects nested zips).

## Activating them (no slash commands on the web app)

Claude auto-selects the skill whose description matches how you phrase the task:

- *"Research the evidence on [health question]" / "systematic review on…" /
  "fact-check this health claim"* → **deep-research**
- *"Write / draft / revise this public health paper"* → **writer**
- *"Review / peer-review this manuscript"* → **reviewer**

To be certain which fires, name it: *"Use the public-health-paper-reviewer skill
to…"*. Attach your materials (data, sources, draft, manuscript) in the same
message. The three chain as a pipeline: **research → write → review → revise**.

## Notes

- **These run on Claude.ai, not Claude Code.** Hooks, gate scripts, CI, `ARS_*`
  env vars, and the cross-model verifier degrade to advisory prose — the
  reasoning is driven by each skill's instructions. See the "Running on
  Claude.ai" section at the top of each skill's `SKILL.md`.
- **For live citation lookups in deep-research**, enable **web search or the
  PubMed connector** in Claude.ai; otherwise it reasons from sources you provide
  and flags anything it can't verify against a real record.
- **Skills are not fine-tuned on uploaded data.** Nothing to "train" — attach
  your materials per task. Each skill's `INSTALL.md` explains the optional
  Style-Calibration / exemplar / calibration-test-set paths.

## Provenance & license

Derived from **Academic Research Skills** by Cheng-I Wu
(https://github.com/Imbad0202/academic-research-skills). License:
**CC-BY-NC 4.0** — attribution required, non-commercial.
