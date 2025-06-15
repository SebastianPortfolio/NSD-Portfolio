# R – Modeling Tools for Predictive Analytics

This repository showcases R-based projects focused on predictive modeling. Each project demonstrates supervised learning techniques with emphasis on interpretability, model validation, and performance optimization. Projects follow a statistical learning framework using real datasets.

---

## Project Overview

### [Bias-Variance Tradeoff Project](./Bias-Variance%20Tradeoff%20Project)
**Objective:** Demonstrate how model complexity affects prediction error using polynomial regression on `Auto.data`.

- **Topics:** Overfitting vs. underfitting, test/train error tradeoff
- **Files:**
  - `BiasVariance_Tradeoff.pdf` – Slide-style summary of the bias-variance tradeoff concept
  - `Code_Walkthrough_Bias-Variance Trade-off.Rmd` – Annotated R code showing polynomial model fitting and error curves
  - `Project Overview Bias-Variance Trade-off.pdf` – Narrative explanation of the problem, approach, and findings
  - `Auto.data` – Raw dataset used in modeling

---

### [Classification Project](./Classification%20Project)
**Objective:** Compare multiple classification techniques on a binary outcome problem.

- **Techniques:** Logistic regression, LDA, QDA, KNN
- **Files:**
  - `Code Walkthrough Classification Methods in Statistical Learning.Rmd` – Full R code with commentary and results
  - `Project Overview Classification Methods in Statistical Learning.pdf` – Summarizes classifier performance and insights
  - `R_Classification.pdf` – Visual report with key comparisons and accuracy results
  - `Auto.data` – Dataset used across all models

---

### [Linear Regression Project](./Linear%20Regression%20Project)
**Objective:** Build and assess linear regression models using numerical and categorical predictors.

- **Topics:** Residual analysis, goodness-of-fit, multicollinearity diagnostics
- **Files:**
  - `Code Walkthrough Linear Regression and Model Diagnostics.Rmd` – Step-by-step modeling and diagnostics in R
  - `Project Overview Linear Regression and Model Diagnostics.pdf` – Overview of modeling process and findings
  - `R_Linear_Regression.pdf` – Report including visuals, coefficient interpretation, and assumptions check
  - `Auto.data` – Input dataset

---

### [Model Selection Project](./Model%20Selection%20Project)
**Objective:** Identify the most appropriate model using automated selection techniques and regularization.

- **Methods:** Best subset, forward/backward stepwise selection, AIC/BIC, and cross-validation
- **Files:**
  - `Code Walkthrough Project Overview Model Selection and Regularization Techniques.Rmd` – Code for model comparison
  - `Project Overview Model Selection and Regularization Techniques.pdf` – Describes modeling strategies and outcomes
  - `R_Model_Selection.pdf` – Summarizes performance metrics and selected models

---

### [Non-Linearity Project](./Non-Linearity%20Project)
**Objective:** Detect and model non-linear relationships in data using polynomial terms and regression splines.

- **Highlights:** Polynomial fits (degrees 1–10), spline fitting, CV-based tuning
- **Files:**
  - `Code Walkthrough Exploring Non-Linearity in Regression.Rmd` – Full code with visualization and modeling
  - `Project Overview Exploring Non-Linearity in Regression.pdf` – High-level explanation of results and interpretation
  - `R_Non-Linearity.Rmd` – R script with embedded explanations
  - `R_Non-Linearity.html` – Interactive HTML output of the R Markdown
  - `Boston.csv` – Dataset used for modeling NOX as a function of DIS

---

### [Trees and SVM Project](./Trees%20and%20SVM%20Project)
**Objective:** Apply and compare decision trees, bagging, random forests, and SVMs for classification tasks.

- **Datasets:** `Carseats.csv`, `OJ.csv`
- **Highlights:** Tree pruning, random forest tuning, SVM kernel comparison
- **Files:**
  - `Code Walkthrough Decision Trees, Bagging, Random Forest, and SVM Classification.Rmd` – Implementation and evaluation in R
  - `Project Overview Decision Trees, Bagging, Random Forest, and SVM Classification.pdf` – Analysis summary
  - `R_Trees_and_SVM.pdf` – Final report comparing model test error rates and interpretability

---

## Tools & Libraries

- **Core R Packages:** `ISLR`, `MASS`, `caret`, `e1071`, `ggplot2`, `randomForest`, `tree`, `splines`, `boot`
- **Modeling Techniques Covered:**  
  - Linear/Polynomial Regression  
  - Classification (Logistic, LDA, QDA, KNN, SVM)  
  - Tree-based models (CART, Bagging, Random Forest)  
  - Model selection via stepwise procedures and regularization  
  - Non-linear modeling via splines and basis functions

---

## Learning Outcomes

- Visualize and explain the bias-variance tradeoff  
- Apply linear and non-linear models to real-world datasets  
- Evaluate models using cross-validation, AIC/BIC, and prediction error  
- Understand model interpretability vs. complexity  
- Build reproducible workflows using R and R Markdown
