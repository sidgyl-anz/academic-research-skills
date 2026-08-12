# Public Health Paper Reviewer — install on Claude.ai

A self-contained, public-health-tuned build of the `academic-paper-reviewer`
skill. **No symlinks; all dependencies are nested under `./shared/`**, so the
folder works as a standalone Claude Skill.

## What this is

A 5-reviewer simulated peer-review panel (Journal-Fit + methodology + domain +
cross-disciplinary + Devil's Advocate) plus an editorial synthesizer, with
**public health baked in as the default domain**: it checks EQUATOR
reporting-guideline adherence (STROBE, CONSORT, PRISMA, SPIRIT, STARD, TRIPOD,
CHEERS, RECORD…), causal-inference validity, and health-equity dimensions, then
produces an Editorial Decision Letter + Revision Roadmap. It is still
field-capable — a clearly non-PH paper is reviewed on the general criteria.

## Install (Claude.ai — web/desktop)

1. Make sure you have a `.zip` of **this folder** (the archive's top level
   should be `public-health-paper-reviewer/` containing `SKILL.md`). If you were
   handed `public-health-paper-reviewer.zip`, you already have it.
2. In Claude.ai go to **Settings → Capabilities → Skills** (Skills must be
   enabled; on Team/Enterprise an admin may need to turn them on).
3. Click **Upload skill** and select the `.zip`.
4. Start a chat and paste or attach a manuscript with, e.g.,
   *"Review this public health paper."* The skill triggers on review/peer-review
   language (see the `description` in `SKILL.md`).

> To rebuild the zip yourself from this folder:
> `cd .. && zip -r public-health-paper-reviewer.zip public-health-paper-reviewer -x '*.DS_Store'`

## Important: this runs on Claude.ai, not Claude Code

This skill was originally built for Claude Code, which wraps it in hooks, Python
gate scripts, CI linters, `ARS_*` environment variables, and an optional
cross-model verifier. **None of that runs on Claude.ai.** Those layers degrade
gracefully to advisory prose — the review is driven entirely by the
instructions in this skill. See the *"Running on Claude.ai"* section at the top
of `SKILL.md` for specifics. In short: the panel, the public-health standards,
editorial synthesis, decision letter, revision roadmap, re-review, and guided
mode all work; the automated/enforced gates and cross-model second opinion do
not.

## "Should I upload papers to tune it?"

**No — skills are not trained or fine-tuned on uploaded data.** A skill is
instructions the model reads at runtime; uploading papers won't change its
weights. What actually helps:

- **It already carries the public-health standards it needs** (see
  `references/public_health_review_standards.md`). You don't need to upload
  anything for it to review PH papers well.
- **Optional — add 1–3 exemplar reviews.** If you have a referee report you
  consider excellent in your subfield, drop it into `examples/` and add a row to
  the Examples table in `SKILL.md`. That anchors tone/format as a few-shot
  example (still not "tuning", just a better reference).
- **Papers are best used as a *test set*, not training data.** If you have
  papers with known outcomes (accepted/rejected, or known flaws), use the
  built-in **`calibration` mode** to measure how the reviewer scores them and
  check its error profile. See `references/calibration_mode_protocol.md`. (Note:
  calibration's cross-model option is a Claude Code feature and is inert on
  Claude.ai.)
- **When you review, attach the paper in the chat** — that is the per-review
  input, not a tuning step.

## Customizing the public-health lens

- Edit `references/public_health_review_standards.md` to add sub-field
  standards (e.g. your institution's IRB conventions, a specialty reporting
  guideline).
- The per-agent *"Public Health Default (this build)"* blocks in `agents/*.md`
  control what each reviewer emphasizes — tune those to shift focus.
- To make it *only* public health (never review other fields), remove the
  "if the paper is clearly NOT public health" fallback in
  `agents/field_analyst_agent.md` and the SKILL.md Public Health Default
  section.

## Provenance & license

Derived from **Academic Research Skills** by Cheng-I Wu
(https://github.com/Imbad0202/academic-research-skills), skill
`academic-paper-reviewer` v1.10.0. License: **CC-BY-NC 4.0** — attribution
required, non-commercial. This build tags itself `1.10.0-ph1`. See the upstream
`references/changelog.md` for the full engine history.
