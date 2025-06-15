## Decision Tree Classifier – eBay Auctions

This project develops a classification model to predict whether an eBay auction will be **competitive**, based on listing features such as starting price, seller rating, and listing duration. The model uses a **Decision Tree Classifier** for its interpretability and ability to handle mixed feature types.

---

### Objective

Predict auction competitiveness—defined by strong bidder engagement—using only features available before the auction begins. The model avoids target leakage and supports deployment-readiness.

---

### Dataset

| Dataset Name       | Description |
|--------------------|-------------|
| `ebayAuctions.xlsx`| Contains auction listing features and competitiveness labels. Includes fields like `Category`, `Currency`, `Duration`, `SellerRating`, `OpeningPrice`, and the target variable `Competitive?` |

---

### Methodology

#### Preprocessing:
- One-hot encoding for categorical variables
- Log transformation on skewed numerical features
- Excluded `ClosePrice` in Model 2 to simulate real-world usage

#### Modeling:
- Used `DecisionTreeClassifier` from scikit-learn
- Trained two versions:
  - **Model 1**: With `ClosePrice` (full feature set)
  - **Model 2**: Without `ClosePrice` (to prevent leakage)
- Controlled tree complexity via `min_samples_leaf=50`
- Evaluation via stratified train-test split and confusion matrix

---

### Key Files

| File Name                                                    | Description |
|---------------------------------------------------------------|-------------|
| `Python_Code_Decision_Tree_Classifier_eBay_Auctions.ipynb`   | Full implementation from preprocessing to model evaluation |
| `Code_Walkthrough_Decision_Tree_Classifier_eBay_Auctions.ipynb` | Annotated explanation of preprocessing, feature selection, and model logic |
| `Project Overview_Decision Tree Classifier_eBay_Auctions.pdf`| Executive summary with problem framing, methodology, insights, and takeaways |
| `ebayAuctions.xlsx`                                          | Original dataset used for training and analysis |

---

### Results & Insights

- **Top predictors**: `SellerRating`, `OpeningPrice`, `Category`, `EndDay`
- Competitive auctions typically had **lower starting prices** and **high seller ratings**
- **Model 2** (without `ClosePrice`) is more generalizable for real-world applications

---

### Future Enhancements

- Extend to **Random Forests** or **Gradient Boosted Trees**
- Use **GridSearchCV** for hyperparameter optimization
- Visualize **feature importance** to interpret model behavior
- Test integration with eBay listing tools for real-time guidance

---

### Tools & Libraries

- `pandas`, `numpy`, `matplotlib`, `seaborn`
- `scikit-learn` for modeling and evaluation

