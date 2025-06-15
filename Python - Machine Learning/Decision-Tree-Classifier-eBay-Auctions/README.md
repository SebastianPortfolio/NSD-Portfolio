# Decision Tree Classifier – eBay Auctions

This project develops a classification model to predict whether an eBay auction will be **competitive**, based on listing attributes such as starting price, seller rating, category, and duration. The model uses a **Decision Tree Classifier** for its interpretability and ability to handle mixed data types.

---

## Objective

To build an interpretable machine learning model that predicts auction competitiveness — defined by strong bidder engagement — using features available at the time of listing.

---

## Key Highlights

- Preprocessing with **one-hot encoding** and log transformation of skewed features  
- Addressed **target leakage** by excluding `ClosePrice` in a second modeling iteration  
- Used **stratified train-test split** and **confusion matrix** analysis for evaluation  
- Delivered **transparent decision rules** through tree visualizations and textual paths  

---

## Dataset Overview

- File: `ebayAuctions.xlsx`  
- Contains both categorical and numeric variables, including:
  - `Category`, `Currency`, `Duration`, `EndDay`
  - `SellerRating`, `OpeningPrice`, `Competitive?` (target)

---

## Modeling

Two models were developed:

1. **Model 1** – includes all predictors including `ClosePrice`  
2. **Model 2** – excludes `ClosePrice` to prevent leakage and mimic real-world usage  

Both models used:
- `DecisionTreeClassifier` from `scikit-learn`
- Minimum leaf size of 50 to control overfitting

---

## Key Files

| File Name                                               | Description |
|----------------------------------------------------------|-------------|
| `Python_Code_Decision_Tree_Classifier_eBay_Auctions.ipynb` | Full implementation including preprocessing, training, and evaluation |
| `Code_Walkthrough_Decision_Tree_Classifier_eBay_Auctions.ipynb` | Annotated version of the code with step-by-step explanations and visuals |
| `Project Overview_Decision Tree Classifier_eBay_Auctions.pdf` | High-level summary of objectives, data, methodology, findings, and recommendations |
| `ebayAuctions.xlsx`                                      | Raw dataset used for analysis and modeling |

---

## Results

- **Key predictors**: `SellerRating`, `OpeningPrice`, `Category`, `EndDay`
- **Competitive auctions** tend to have **lower opening prices** and **higher seller ratings**
- **Model 2** (without `ClosePrice`) offered more realistic generalization for deployment

---

## Future Directions

- Integrate **ensemble methods** (e.g., Random Forest) for improved accuracy  
- Conduct **grid search** for hyperparameter tuning  
- Analyze **feature importance** across models  
- Explore **real-time deployment** in auction assistant tools

---

## Tools Used

- `pandas`, `numpy`, `matplotlib`, `seaborn`  
- `scikit-learn` for modeling and evaluation  

