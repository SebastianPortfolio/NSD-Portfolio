# Non-Linearity Project

This project investigates how to detect and model non-linear relationships in regression analysis. Using the `Boston.csv` dataset, it applies polynomial regression, regression splines, and cross-validation to evaluate model fit and complexity.

---

## Objective

To explore techniques for modeling non-linear patterns in data and compare model performance across different levels of flexibility and interpretability.

---

## Methods Used

- Polynomial regression (degrees 1–10)
- Regression splines with varying degrees of freedom
- Model comparison via residual sum of squares (RSS) and cross-validation
- Visual diagnostics to assess non-linear trends

---

## Project Files

- `Boston.csv` – Dataset used for modeling non-linear relationships.
- `Code Walkthrough Exploring Non-Linearity in Regression.Rmd` – Full R code with annotated examples and visualizations.
- `Project Overview Exploring Non-Linearity in Regression.pdf` – Summary of key findings and modeling approaches.
- `R_Non-Linearity.Rmd` – Final reproducible R Markdown script for the full analysis.
- `R_Non-Linearity.html` – Rendered interactive HTML output with plots and code.
- `README.md` – This file.

---

## Learning Outcome

After completing this project, you will:

- Understand when linear models are insufficient
- Apply polynomial and spline regression techniques
- Use cross-validation to select the optimal level of model complexity

---

## Tools

- R
- Libraries: `ggplot2`, `splines`, `boot`

