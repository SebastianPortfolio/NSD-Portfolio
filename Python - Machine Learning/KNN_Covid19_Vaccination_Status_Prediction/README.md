# KNN – COVID-19 Vaccination Status Prediction (Canada)

This project applies a **K-Nearest Neighbors (KNN)** model to classify the COVID-19 vaccination status of Canadian residents based on behavioral, demographic, and attitudinal survey data from 2022.

---

## Objective

Predict whether an individual is **fully vaccinated** or **not fully vaccinated**, enabling insights into public health engagement across different population groups.

---

## Dataset

- `COVID-19BehaviorData_CAN2022.csv`: Raw survey responses  
- `ins.xlsx`: Categorical encoding reference guide  
- Target variable: `vac` (re-categorized into binary classes)  
- Features include opinions about vaccines, past behavior, demographics  

---

## Methodology

- **Preprocessing**:  
  - Dropped high-missing-value columns  
  - Cleaned and standardized missing value formats  
  - Custom categorical encoding using `ins.xlsx`  
  - Random sampling for imputation to preserve distributions  
  - Standardized input features using z-score normalization  

- **EDA**:  
  - Frequency plots, heatmaps, and crosstabs  
  - Re-labeled vaccination responses into 2 classes  
  - Feature selection based on correlation and domain relevance  

- **Modeling**:  
  - Used `KNeighborsClassifier` with grid search over `k=1–80`  
  - Best result at `k=42` using 10-fold cross-validation  
  - Evaluation metrics: Accuracy, F1-score, Confusion Matrix  

---

## Key Files

| File Name                                                  | Description |
|-------------------------------------------------------------|-------------|
| `Python_Code_KNN_Predicting COVID-19 Vaccination Status.ipynb` | Full model implementation, from preprocessing to evaluation |
| `Code_Walkthrough_KNN_Predicting COVID-19 Vaccination Status.ipynb` | Annotated walkthrough explaining logic and decisions |
| `Project Overview_KNN_Predicting COVID-19 Vaccination Status.pdf` | High-level summary of methodology, results, and future work |
| `COVID-19BehaviorData_CAN2022.csv` | Main dataset used for training and evaluation |
| `ins.xlsx` | Encoding and metadata reference for categorical responses |
| `Final_predictions.txt` | Model predictions on processed data (if available) |

---

## Key Insights

- Key predictors include behavioral responses (`vac7`, `r1_8`) and opinions on vaccines (`vac_man_*`)  
- Normalization and stratified sampling contributed to stability  
- Final model is interpretable and provides actionable public health insights  


---

## Tools Used

- `scikit-learn`, `pandas`, `matplotlib`, `seaborn`  
- `StandardScaler`, `KNeighborsClassifier`, `classification_report`

