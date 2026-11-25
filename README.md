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

The handout uses the apaquarto extension in APA 7 student-paper mode and is formatted for A4. It ends with an affidavit based on Stephan Huber's own template (`hubchev/temp_apa_en`, section "Affidavit (for empirical work)"), adapted for simulated data, the required GitHub publication and the use of generative AI. Its single source is `_declaration.qmd`; it is included in the handout and can be rendered on its own from `Declaration.qmd`. The repository copy leaves the signature blank. Sign the affidavit copy submitted via ILIAS; do not publish a signature here.

## Project map

The root `index.html` is a simple landing page for GitHub Pages. It links to the presentation, the handout, the worked analysis and the classroom exercise.

`_quarto.yml` configures rendering. The handout uses the `apaquarto` extension for APA 7 student-paper formatting; the presentation and handout use `references.bib` with APA 7 citation styling. `analysis/churn_analysis.qmd` is the worked R example. The `data` folder contains a deterministic generator and its output. The `exercise` folder contains student tasks and an instructor key.

## Rebuild in RStudio

Install R, RStudio, Quarto 1.9 or later, and a LaTeX distribution such as TinyTeX. Install the APA extension once from the project folder with `quarto add wjschne/apaquarto`. Install the R packages used by the analysis:

```r
install.packages(c("readr", "dplyr", "ggplot2", "scales", "knitr"))
```

Open this project folder in RStudio and render a `.qmd`. Or run from this folder:

`quarto render`

To regenerate the teaching CSV, run `source("data/generate_simulated_data.R")` from the project directory. It uses base R and a fixed random seed. The CSV is included so analysis works without regeneration.

## Citation workflow and data limitations

Documents use keys such as `[@knuth1984]`. `references.bib` stores source metadata. The `apaquarto` extension supplies APA 7 student-paper formatting and citation style for the handout; Quarto resolves citation keys and generates the reference list.

Every data row is synthetic. The generator deliberately links churn propensity to contract type, tenure, and support-contact count to make comparisons visible. The results are teaching examples, not telecom evidence and not causal estimates.

## Publication

The project is published with GitHub Pages from the `main` branch:

- Landing page: <https://camti4251.github.io/quarto-presentation/>
- Presentation: <https://camti4251.github.io/quarto-presentation/Tiago_Presentation.html>
- Handout: <https://camti4251.github.io/quarto-presentation/Handout_Quarto.pdf>
- Worked analysis: <https://camti4251.github.io/quarto-presentation/analysis/churn_analysis.html>
- Class exercise: <https://camti4251.github.io/quarto-presentation/exercise/Churn_Exercise.html>

As required by the course guidelines (Appendix A), the presentation and handout files are also submitted via ILIAS.
