# Changelog

## [1.11.0-ph1] - 2026-08-20

### Added

- **Health-journal prose style reference** (`references/health_journal_prose_style.md`) — prose conventions measured over a 69-paper, ~755,000-word corpus of published health and digital-health journal articles, plus a **substantive-vs-stylistic sorting rule** for presentation findings and a section on the register of the review report itself.

### Changed

- `methodology_reviewer_agent` — Step 4a gains a **recoverability of reported numbers** check (bare percentages, shifting denominators, missing intervals, inconsistent P-value/CI formatting, statistic mismatched to summary, hedging displaced into Results) with an explicit severity boundary. Step 5 Results Integrity now checks abstract-to-body number agreement, abstract-vs-Discussion claim calibration, and whether limitations name the direction of bias.
- `eic_agent` — Step 5 Journal Fit gains title and abstract conventions as venue signals (median 12-word titles, design named after the colon, family-specific abstract header sets), with the abstract-outruns-Discussion pattern made concrete.
- `editorial_synthesizer_agent` — new forbidden operation: presentation and style observations may not inflate a decision tier.
- `references/review_criteria_framework.md` — Dimension 5 Writing Quality gains the substantive / stylistic / not-a-finding split.
- `references/quality_rubrics.md` — Dimension 5 anchored on interpretability rather than fluency.
- `references/public_health_review_standards.md` — companion-reference pointer added to §8.
- `SKILL.md` — reference table updated.

---

| Version | Date | Changes |
|---------|------|---------|
| 1.4 | 2026-03-08 | Quality rubrics reference (0-100 scoring with 5 descriptors per dimension, weighted aggregation formula, decision mapping); Quick Mode Selection Guide; Dimension Scores upgraded from optional 1-5 to required 0-100 with rubric descriptors |
| 1.3 | 2026-03-05 | DA vs R3 role boundaries with explicit responsibility tables; CRITICAL finding criteria with concrete examples; Consensus classification (CONSENSUS-4/3/SPLIT/DA-CRITICAL); Confidence Score weighting rules; Asian & Regional Journals reference (TSSCI + Asia-Pacific + OA options) |
| 1.2 | 2026-03 | Added statistical reporting standards reference; enhanced methodology_reviewer_agent with statistical reporting adequacy sub-step |
| 1.1 | 2026-02 | Added Devil's Advocate Reviewer (7th agent), added re-review mode, expanded review team from 4 to 5 |
| 1.0 | 2026-02 | Initial version: 6 agents, 4 modes, 3-phase workflow |
