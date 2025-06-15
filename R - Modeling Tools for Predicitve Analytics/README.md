# R – Modeling Tools for Predictive Analytics

This directory contains R-based projects demonstrating key concepts in predictive modeling. Each project explores different supervised learning techniques, model selection strategies, and diagnostic tools. The focus is on interpretability, validation, and performance optimization, following a statistical learning framework.

---

## Projects

### [Bias-Variance Tradeoff Project](./Bias-Variance%20Tradeoff%20Project)
**Objective:** Illustrate the tradeoff between model complexity and prediction error using polynomial regression on the `Auto.data` dataset.

- Topics: Overfitting, underfitting, test/train error curves
- Techniques: Polynomial regression, train/test splits, visualization of error tradeoff
- Key Files:
  - `BiasVariance_Tradeoff.pdf`: Slide-style summary of findings
  - `Code_Walkthrough_Bias-Variance Trade-off.Rmd`: Annotated R Markdown code with plots
  - `Project Overview Bias-Variance Trade-off.docx`: Detailed explanation of the concept and its practical implications
  - `Auto.data`: Raw dataset used for the analysis

---

### [Classification Project](./Classification%20Project)
**Objective:** Apply classification techniques in R for binary prediction tasks.

- Techniques: Logistic regression, LDA, QDA, KNN
- File:
  - `R_Classification.pdf`: Explanation of model applications and performance comparison

---

### [Linear Regression](./Linear%20Regression)
**Objective:** Fit and evaluate linear models using continuous predictors.

- Topics: Residual diagnostics, R², multicollinearity
- File:
  - `R_Linear_Regression.pdf`: Practical application of linear regression models with real-world data

---

### [Model Selection](./Model%20Selection)
**Objective:** Identify the best model using stepwise selection, cross-validation, and information criteria (AIC/BIC).

- File:
  - `R_Model_Selection.pdf`: Documentation of model refinement using R functions like `step()` and validation techniques

---

### [Non-Linearity](./Non-Linearity)
**Objective:** Detect and address non-linear relationships using polynomial terms and splines.

- File:
  - `R_Non-Linearity.html`: Interactive HTML output demonstrating visual diagnostics and model improvements

---

### [Trees and SVM](./Trees%20and%20SVM)
**Objective:** Compare decision trees and support vector machines (SVM) on classification tasks.

- File:
  - `R_Trees_and_SVM.pdf`: Comparative analysis with performance evaluation on held-out test data

---

## Tools & Libraries

- `ISLR`, `MASS`, `caret`, `e1071`, `ggplot2`
- Modeling techniques include: Logistic Regression, LDA/QDA, Decision Trees, SVM, and KNN
- Emphasis on reproducibility using R Markdown (`.Rmd`)

---

## Learning Outcomes

- Understand the impact of bias vs. variance in model performance
- Apply both linear and non-linear models for prediction tasks
- Use validation and selection techniques to improve generalization
- Develop confidence in building interpretable and testable predictive models in R

