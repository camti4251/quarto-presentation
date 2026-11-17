# Literate Programming with Quarto

**Combining text, code and results in one reproducible document.**

This repository contains a presentation and an accompanying academic 
handout introducing the concept of **Literate Programming** and its 
practical application with **Quarto** and **R**.

The project explores how programming code, written explanations and 
computational results can be brought together in a single document. The 
aim is to demonstrate how this approach improves transparency, 
documentation and reproducibility in data analysis.

## Project Overview

The project was developed for the course **Data Analysis for 
Decision-Making** at Hochschule Fresenius.

It introduces the fundamental principles of Literate Programming, explains 
the structure of Quarto documents and demonstrates how executable R code 
can be integrated into written explanations.

Rather than presenting programming as a purely technical process, the 
project focuses on making analytical work understandable, traceable and 
accessible to others.

## Repository Contents

| File | Description |
|---|---|
| `Tiago_Presentation.qmd` | Source file of the Quarto presentation |
| `Tiago_Presentation.html` | Interactive HTML presentation |
| `Tiago_Presentation.pdf` | PDF version of the presentation |
| `Handout_Quarto.qmd` | Source file of the accompanying handout |
| `Handout_Quarto.html` | HTML version of the handout |
| `Handout_Quarto.pdf` | PDF version of the handout |

The `.qmd` files contain the original source material, including text, 
formatting and executable code. The HTML and PDF files are the rendered 
outputs.

## Key Topics

The presentation and handout cover the following topics:

- **Literate Programming:** Combining programming code with human-readable 
explanations.
- **Reproducibility:** Making analytical processes transparent and 
verifiable.
- **Introduction to Quarto:** Understanding its role as an open-source 
publishing system.
- **Quarto Document Structure:** Working with YAML, Markdown and 
executable code chunks.
- **R Integration:** Using R directly within Quarto documents.
- **Code Execution:** Understanding how code chunks are executed and how 
results are generated.
- **Practical Application:** Calculating and interpreting average study 
hours using R.
- **Advantages and Limitations:** Evaluating the benefits and technical 
requirements of this approach.

## Practical Example

One of the examples demonstrates how Quarto can integrate a simple 
statistical calculation into a written document.

```r
study_hours <- c(4, 6, 8, 5, 7)

average_hours <- mean(study_hours)

average_hours
```

**Output:**

```text
[1] 6
```

The example illustrates how code and its corresponding result can be 
presented together. When the underlying values change, the calculation can 
be executed again during rendering.

## Technologies Used

- **Quarto** – Document creation and publishing.
- **R** – Statistical calculations and code execution.
- **RStudio** – Development environment.
- **Markdown** – Structuring and formatting written content.
- **Reveal.js** – HTML presentation format.
- **LaTeX** – PDF document generation.

## Getting Started

To work with the source files, the following software is recommended:

1. Install [R](https://cran.r-project.org/).
2. Install [RStudio](https://posit.co/download/rstudio-desktop/).
3. Install [Quarto](https://quarto.org/docs/get-started/).

Clone the repository:

```bash
git clone https://github.com/camti4251/quarto-presentation.git
```

Open the project directory in RStudio and select the desired `.qmd` file.

To generate the output, use the **Render** button in RStudio or run:

```bash
quarto render Tiago_Presentation.qmd
```

For the handout:

```bash
quarto render Handout_Quarto.qmd
```

Quarto processes the document, executes the relevant code chunks and 
generates the configured output.

For PDF rendering, a compatible LaTeX distribution is also required.

## Academic Context

**Course:** Data Analysis for Decision-Making  
**Institution:** Hochschule Fresenius  
**Presentation Date:** 18 November 2026

**Author:** Tiago José Camelo Moura

## References

The project draws on established literature and educational resources, 
including:

- Knuth, D. E. (1984). *Literate Programming*. The Computer Journal, 
27(2), 97–111.
- Rodrigues, B. (2023). *Building Reproducible Analytical Pipelines with 
R*.
- The Carpentries (2025). *Reproducible Publications with Quarto*.
- Quarto Development Team. *Quarto Documentation*.

---

*The central idea of this project is simple: analytical results should not 
only be presented, but also explained, understood and reproducible.*
