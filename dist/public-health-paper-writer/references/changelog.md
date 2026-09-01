## [3.3.0-ph1] - 2026-08-20

### Added

- **Health-journal prose style reference** (`references/health_journal_prose_style.md`) — writing conventions measured over a 69-paper, ~755,000-word corpus of published health and digital-health journal articles. Governs over the general style guide for health-science manuscripts; the target journal's author instructions govern over both.

### Changed

- `draft_writer_agent` — Writing Style Guidelines gain a **register-shifts-by-section** table (Methods procedural and unhedged; Results states findings about the data; Discussion carries the hedging at over 5× the Results rate) and a hedging-discipline subsection. Holding one flat "academic tone" across a paper is now named as the primary failure mode. Claim-strength boundary made explicit.
- `structure_architect_agent` — new Step 2a: the Discussion skeleton (Principal Findings → Comparison With Prior Work → Limitations → Future Directions → Conclusions) with word counts allocated to those slots.
- `abstract_bilingual_agent` — venue-specific abstract header sets (JMIR/BMC · JAMA · BMJ · Lancet · Nature/npj) with corpus length figures; abstract conclusion may not exceed the Discussion's.
- `references/writing_quality_check.md` — new **calibration** layer: measured corpus rates per flagged term, banding them from absent to ordinary. `comprehensive` (45/100k), `robust` (27/100k) and `crucial` (12/100k) are ordinary usage in health writing and are no longer flagged on sight; clustering, not any single word, is the tell. Em-dash and burstiness rules gain measured baselines.
- `references/abstract_writing_guide.md` — venue header-set table and corpus length/density figures.
- `references/academic_writing_style.md` — Medicine/Health register block corrected: voice shifts by section rather than "passive for methods, active for findings".
- `references/public_health_writing_standards.md` — new §5a Prose conventions of the target literature.
- `SKILL.md` — feature list, reference pointer, and three new anti-patterns (flat voice across the paper; boilerplate hedging; percentages without denominators).

---

# Version History

| Version | Date | Changes |
|---------|------|---------|
| 2.5 | 2026-03-27 | Style Calibration (intake Step 10: learn author's writing voice from 3+ past papers, produce Style Profile with 6 dimensions, consumed by draft_writer as soft guide with discipline-convention priority). Writing Quality Check (`references/writing_quality_check.md`: 25-term AI high-frequency word warnings, em dash limits, throat-clearing detection, structural pattern warnings, burstiness checks — applied in draft_writer self-review). Style Profile carried through academic-pipeline Material Passport (Schema 10 in `shared/handoff_schemas.md`). deep-research report_compiler also consumes both features optionally |
| 2.4 | 2026-03-08 | LaTeX output formatting hardening: mandatory `apa7` document class for APA 7.0 output; text justification fix (`ragged2e` + `etoolbox` to override apa7 man mode `\raggedright`); table column width formula (`(\linewidth - N\tabcolsep) * \real{proportion}` — prevents overflow); bilingual abstract centering (`\begin{center}\textbf{...}\end{center}`); font stack standardized (Times New Roman + Source Han Serif TC VF + Courier New); `xurl` for URL line breaking; `fancyvrb` Verbatim with `fontsize` for wide content; PDF must compile from LaTeX via tectonic (no HTML-to-PDF) |
| 2.3 | 2026-03-08 | NEW visualization_agent (11th: publication-quality figures with matplotlib/ggplot2, APA 7.0, colorblind-safe); NEW revision_coach_agent (12th: standalone reviewer comment parser → Revision Roadmap); Socratic convergence criteria (4 signals: thesis clarity, chapter coherence, evidence mapping, limitation honesty) + question taxonomy (clarifying, probing, structuring, challenging); revision tracking template (4 status types); citation format conversion in formatter_agent (APA 7 ↔ Chicago ↔ MLA ↔ IEEE ↔ Vancouver); Quick Mode Selection Guide; 9th mode: revision-coach |
| 2.2 | 2026-03-05 | 4-level argument strength scoring with quantified thresholds; plagiarism & retraction screening protocol; F11 Desk-Reject Recovery + F12 Conference-to-Journal Conversion failure paths; Plan -> Full mode conversion protocol; cross-skill reference to `shared/handoff_schemas.md` |
| 2.1 | 2026-03 | Added CRediT authorship guide, funding statement guide, 2 new templates (credit_statement_template, funding_statement_template); enhanced intake_agent with co-author + funding questions (Step 9-10); enhanced formatter_agent with CRediT + funding quality checks |
| 2.0 | 2026-02 | NEW plan mode (Socratic guided chapter-by-chapter planning), deep-research handoff protocol, Chinese APA 7.0 citation guide, failure path handling, mode selection guide |
| 1.0 | 2026-01 | Initial release: 9-agent pipeline, 6 paper types, 5 citation formats, bilingual abstracts, multi-format output |
