# Literate Programming with Quarto — DADM project

This project supports a 10–15 minute presentation and 3–5 page academic handout for Data Analysis for Decision-Making at Hochschule Fresenius. It explains how literate programming connects prose, executable code, and generated results, then demonstrates the workflow with an explicitly simulated customer-churn data set.

## Six deliverables

- `Tiago_Presentation.qmd` — presentation source
- `Tiago_Presentation.html` — HTML presentation
- `Tiago_Presentation.pdf` — PDF presentation
- `Handout_Quarto.qmd` — academic handout source
- `Handout_Quarto.html` — HTML handout
- `Handout_Quarto.pdf` — PDF handout

Appendix A also asks for a related classroom exercise using R where appropriate. Its source is `exercise/Churn_Exercise.qmd`; the instructor reference is separate.

The handout ends with an affidavit based on Stephan Huber's own template (`hubchev/temp_apa_en`, section "Affidavit (for empirical work)"), adapted for simulated data, the required GitHub publication and the use of generative AI. Its single source is `_declaration.qmd`; it is included in the handout and rendered separately as `Declaration.pdf`. Print, sign and date it before submission.

## Project map

The root `index.html` is a simple landing page for GitHub Pages. It links to the two required publications and the classroom exercise.


`_quarto.yml` configures rendering. `references.bib` and `apa.csl` generate APA 7 citations. `analysis/churn_analysis.qmd` is the worked R example. The `data` folder contains a deterministic generator and its output. The `exercise` folder contains student tasks and an instructor key.

## Rebuild in RStudio

Install R, RStudio, Quarto, and a LaTeX distribution such as TinyTeX. Install only the packages used by the analysis:

```r
install.packages(c("readr", "dplyr", "ggplot2", "scales", "knitr"))
```

Open this project folder in RStudio and render a `.qmd`. Or run from this folder:

`quarto render`

To regenerate the teaching CSV, run `source("data/generate_simulated_data.R")` from the project directory. It uses base R and a fixed random seed. The CSV is included so analysis works without regeneration.

## Citation workflow and data limitations

Documents use keys such as `[@knuth1984]`. `references.bib` stores source metadata and `apa.csl` is the APA 7 style downloaded from the Zotero Style Repository, as Appendix A instructs. Quarto generates citations and the reference list.

Every data row is synthetic. The generator deliberately links churn propensity to contract type, tenure, and support-contact count to make comparisons visible. The results are teaching examples, not telecom evidence and not causal estimates.

## GitHub and submission

Appendix A asks students to publish the presentation and handout on GitHub, share the URLs during the talk, and "submit all four files on ILIAS". It does not say which four files. The most likely reading is the presentation source and standalone HTML (`Tiago_Presentation.qmd`, `Tiago_Presentation.html`) plus the handout source and PDF (`Handout_Quarto.qmd`, `Handout_Quarto.pdf`). Until the lecturer confirms, upload all six deliverables plus the signed `Declaration.pdf`; extra files do no harm, a missing one does.

The assignment lives in the student's own repository `camti4251/quarto-presentation`. There is no central course repository for submissions, so no fork, pull request or access request is needed. Chapter 7's `hubchev/make_a_pull_request` is a separate practice exercise. Publish with GitHub Pages (Settings → Pages → branch `main`, folder `/root`); the root `index.html` links to all outputs.
