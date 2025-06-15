# KMeans & BIRCH Clustering – Canadian Census Income Prediction

This project applies both **supervised and unsupervised learning** to Canadian census data to **predict median household income** and **cluster geographic regions** with similar socioeconomic traits. The goal is to support urban policy decisions such as housing planning and resource distribution.

---

## Objective
- Predict regional median income using engineered demographic and housing features.
- Segment census tracts using **K-Means** and **BIRCH** clustering to reveal distinct income-related patterns.

---

## Highlights
- **Advanced Feature Engineering**: Created ratios capturing rental/ownership trends, housing age, dwelling types, and household sizes.
- **Clustering**: Identified optimal cluster count with elbow and silhouette methods. Evaluated consistency using Adjusted Rand Index.
- **Modeling per Cluster**: Trained **Random Forest** and **Decision Tree** models per cluster to capture localized income drivers.

---

## Key Files
- `Python_Code_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.ipynb`: Full model training and prediction pipeline.
- `Code_Walkthrough_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.ipynb`: Annotated, step-by-step explanation.
- `Project_Overview_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.pdf`: Executive summary of approach, methods, and insights.
- `CensusCanada2021Training.csv`, `CensusCanada2021Test.csv`: Census tract-level data used for model training and testing.
- `Final_predictions.txt`: Predicted income values for test regions.

---

## Techniques Used
- Clustering: K-Means, BIRCH
- Supervised Learning: Random Forest, Decision Tree
- Evaluation: RMSE, MAE, Silhouette Score, ARI
- Libraries: `scikit-learn`, `pandas`, `matplotlib`, `seaborn`

---

## Insight
Older housing, lower ownership rates, and larger households correlate with lower incomes. Segment-specific modeling improves accuracy and interpretability across diverse regions.

