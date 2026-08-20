# Public Health Skills — bundle for Claude.ai

This bundle contains **three standalone, public-health-tuned Claude Skills**,
each as its own ready-to-upload `.zip`:

| Order | Zip | Skill | Use it to |
|---|---|---|---|
| 1 | `public-health-deep-research.zip` | `public-health-deep-research` | Investigate: PICO/PECO questions, systematic search, PRISMA/meta-analysis, source verification, fact-check |
| 2 | `public-health-paper-writer.zip` | `public-health-paper-writer` | Draft & revise: guideline-driven structure (STROBE/CONSORT/PRISMA…), calibrated causal language, structured abstracts |
| 3 | `public-health-paper-reviewer.zip` | `public-health-paper-reviewer` | Critique: 5-reviewer panel + editorial decision, causal-over-reach & equity checks |

## Rebuilding these zips

From the repository root:

```bash
./build-skills.sh                 # all three skills + the bundle
./build-skills.sh writer          # just one (deep-research | writer | reviewer)
./build-skills.sh --no-bundle     # skip the combined bundle
```

Edit the skill folders under `dist/`, then re-run it — the script validates that
each folder has a `SKILL.md`, excludes `.DS_Store` / `__pycache__` junk, and
prints the version and size of each zip it wrote. It uses `zip` when available
and falls back to Python's `zipfile`, so it works on minimal images and Git Bash
without extra tooling.

## Install (one skill per upload)

Claude.ai's skill uploader takes **one skill per `.zip`**, so you upload the
three inner zips individually — this bundle just packages them into a single
download. You do **not** need to unzip the inner zips; upload each `.zip` as-is.

1. Unzip this bundle → you get the three `.zip` files above + this README.
2. In Claude.ai go to **Settings → Capabilities → Skills** (Skills must be
   enabled; on Team/Enterprise an admin may need to turn them on).
3. **Upload skill** → select `public-health-deep-research.zip`. Repeat for the
   writer and reviewer zips. All three coexist.

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
