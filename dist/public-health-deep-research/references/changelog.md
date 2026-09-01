## [2.12.0-ph1] - 2026-08-20

### Added

- **Health-journal prose style reference** (`references/health_journal_prose_style.md`) — writing conventions measured over a 69-paper, ~755,000-word corpus of published health and digital-health journal articles (JAMA/BMJ/Lancet/Nature Medicine/npj/JMIR/BMC families). Covers sentence and paragraph rhythm, how voice and hedging shift section by section, hedging that names its reason rather than boilerplate, numbers reported with recoverable denominators and intervals, connective frequencies, a calibration layer for the AI-term flag list, title and abstract conventions, the Discussion skeleton, the limitations paragraph and the conclusion's concession pivot.
- **Reporting-style appraisal signals** (§13 of the same file) — the conventions read backwards as prompts for closer reading of a source. Explicitly bounded: evidence about reporting, never about study conduct, and never a scoring instrument.

### Changed

- `report_compiler_agent` — Writing Quality Check extended with the corpus-derived checks; Writing Style Guidelines gain a numbers-in-prose subsection and a pointer to the appraisal signals.
- `synthesis_agent` — Step 5 Synthesis Narrative gains prose conventions (carry denominators and intervals through the synthesis; hedge with a named reason; `However` carries the contrast; claim-first paragraphs).
- `source_verification_agent` — new Step 3a Reporting-Style Signals checklist, bounded to reporting quality.
- `SKILL.md` — reference table and v2.4 feature list updated.

---

## [2.9.1] - 2026-04-22

### Added

- **Opt-in reading-check probe** in Socratic Mentor. Gated by `ARS_SOCRATIC_READING_PROBE=1`. See `agents/socratic_mentor_agent.md` §"Optional Reading Probe Layer" and `SKILL.md` §"Opt-in Reading Probe (v3.5.1)".

### Version

- 2.9.0 → 2.9.1 (patch; opt-in, default OFF).

---

# Version History

| Version | Date | Changes |
|---------|------|---------|
| 2.4 | 2026-03-27 | Report compiler now consumes optional Style Profile (from academic-paper intake) and runs Writing Quality Check checklist before finalizing reports. Style Profile applied as soft guide for Executive Summary and Synthesis sections; discipline conventions take priority. Writing Quality Check catches overused AI-typical terms, em dash overuse, throat-clearing openers, and monotonous sentence rhythm. See `academic-paper/references/writing_quality_check.md` and `shared/style_calibration_protocol.md` |
| 2.3 | 2026-03-08 | Added systematic-review mode (7th mode): PRISMA 2020 compliant pipeline with risk_of_bias_agent (RoB 2 + ROBINS-I), meta_analysis_agent (effect sizes, heterogeneity, GRADE, narrative synthesis), 2 new templates (PRISMA protocol + report), systematic_review_toolkit reference. Added monitoring_agent (post-pipeline literature monitoring with digests, retraction alerts, author tracking) + literature_monitoring_strategies reference. Enhanced socratic_mentor_agent with 4 convergence signals, 4-type question taxonomy, and auto-end triggers. Added Quick Mode Selection Guide to SKILL.md |
| 2.2 | 2026-03-05 | Added synthesis anti-patterns, Socratic quantified thresholds & auto-end conditions, reference existence verification (DOI + WebSearch), enhanced ethics reference integrity check (50% + Retraction Watch), mode transition matrix, cross-agent quality alignment definitions |
| 2.1 | 2026-03 | Added IRB decision tree, EQUATOR reporting guidelines, preregistration guide + template; enhanced ethics_review_agent with human subjects dimension; enhanced research_architect_agent with ethics/EQUATOR/preregistration integration; enhanced methodology_patterns with EQUATOR cross-references |
| 2.0 | 2026-02 | Added socratic mode (10th agent), failure paths, mode selection guide, handoff protocol, 2 new examples, 3 new references |
| 1.0 | 2026-02 | Initial release: 9 agents, 5 modes, 6-phase pipeline |
