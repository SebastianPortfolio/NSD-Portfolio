## KMeans & BIRCH Clustering – Canadian Census Income Prediction

This project applies both supervised and unsupervised learning techniques to Canadian census data to predict median household income and cluster census tracts based on shared socioeconomic patterns. The goal is to support data-driven urban planning, housing strategy, and equitable resource distribution.

---

### Objective

- Predict regional median income using engineered demographic and housing-related features.
- Use clustering (K-Means and BIRCH) to group census regions with similar economic and demographic traits for targeted analysis.

---

### Dataset

- `CensusCanada2021Training.csv`: Training dataset containing socioeconomic and housing features by region.  
- `CensusCanada2021Test.csv`: Test dataset with similar structure, used for predictions.  
- `Final_predictions.txt`: Model-generated median income predictions for test regions.

**Target Variable**: Median household income (numeric)  
**Features include**:  
- Dwelling types, ownership rates, household sizes  
- Housing age, population counts, family composition  

---

### Methodology

#### Preprocessing & Feature Engineering:
- Created ratio-based features (e.g., percent renters, average household size, dwellings per capita).
- Handled missing values and standardized feature scales.

#### Clustering:
- Applied **K-Means** and **BIRCH** clustering to segment census tracts.
- Optimal cluster count selected using **Elbow Method** and **Silhouette Score**.
- Cluster validity verified using **Adjusted Rand Index (ARI)** for consistency.

#### Modeling:
- Trained separate **Random Forest** and **Decision Tree** regressors for each cluster to capture localized income predictors.
- Evaluated models using **Root Mean Squared Error (RMSE)** and **Mean Absolute Error (MAE)**.

---

### Key Files

| File Name                                                                 | Description |
|---------------------------------------------------------------------------|-------------|
| `Python_Code_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.ipynb` | Full model training and prediction pipeline |
| `Code_Walkthrough_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.ipynb` | Annotated walkthrough explaining logic and modeling steps |
| `Project_Overview_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.pdf` | Summary of project goals, methodology, and results |
| `CensusCanada2021Training.csv`| Training dataset with census region features |
| `CensusCanada2021Test.csv`| Test dataset used for prediction |
| `Final_predictions.txt` | Predicted income values for unseen census regions |

---

### Key Insights

- Cluster-specific models outperformed a one-size-fits-all approach by capturing regional variations in income drivers.
- Older housing stock, lower ownership rates, and higher household density correlated with lower median incomes.
- Unsupervised clustering revealed geographic groupings with policy relevance for targeted planning.

---

### 🛠Tools & Libraries

- **Clustering**: K-Means, BIRCH  
- **Modeling**: Random Forest, Decision Tree  
- **Evaluation**: RMSE, MAE, Silhouette Score, Adjusted Rand Index  
- **Libraries**: `scikit-learn`, `pandas`, `numpy`, `matplotlib`, `seaborn`


