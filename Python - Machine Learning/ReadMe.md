# Python – Machine Learning Projects

This folder contains machine learning projects implemented in **Python**, using real-world datasets to solve classification and clustering problems. Each project includes a complete pipeline: **data preprocessing, modeling, evaluation, and documentation**.

---

## Projects

### [Decision Tree Classifier – eBay Auctions](./Decision-Tree-Classifier-eBay-Auctions)
**Goal:** Predict whether an item listed on eBay will sell based on listing features.

- Model: Decision Tree Classifier
- Dataset: `ebayAuctions.xlsx`
- Highlights:
  - Feature engineering and label encoding
  - Decision boundary analysis and model explainability
- Key Files:
  - `Code_Walkthrough_*.ipynb`: Step-by-step notebook
  - `Project Overview_*.pdf`: Project summary and results

---

### [Deep Neural Network – Income Level Prediction](./Deep_Neural_Network_Income_Levels_Prediction)
**Goal:** Classify individuals into income brackets using U.S. Census data.

- Model: Feedforward Neural Network (TensorFlow/Keras)
- Datasets: `USCensusTraining.csv`, `USCensusTest.csv`
- Highlights:
  - Input normalization and categorical encoding
  - Model architecture tuning and validation
- Key Files:
  - `Python_Code_*.ipynb`: Full implementation
  - `Final_predictions.txt`: Classification results

---

### [KMeans & BIRCH Clustering – Canadian Census](./KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction)
**Goal:** Explore clustering for income group prediction on Canadian census data.

- Models: K-Means and BIRCH
- Datasets: `CensusCanada2021Training.csv`, `CensusCanada2021Test.csv`
- Highlights:
  - Unsupervised learning to explore data structure
  - Cluster-label mapping to evaluate classification accuracy
- Key Files:
  - `Code_Walkthrough_*.ipynb`
  - `Final_predictions.txt`

---

### [K-Nearest Neighbors – COVID-19 Vaccination Status](./KNN_Covid19_Vaccination_Status_Prediction)
**Goal:** Predict vaccination status based on behavioral and demographic data.

- Model: KNN Classifier
- Dataset: `COVID-19BehaviorData_CAN2022.csv`
- Highlights:
  - Feature selection and scaling
  - Performance comparison across k values
- Key Files:
  - `Python_Code_*.ipynb`
  - `DataKeyCOVID-19BehaviorData_CAN2022.xlsx` for feature reference

---

## Tools & Libraries
- **Pandas, NumPy** for data handling  
- **Scikit-learn, TensorFlow/Keras** for modeling  
- **Matplotlib, Seaborn** for visualization  

---

## Structure of Each Project
- `README.md` – Project-specific summary
- `*.ipynb` – Clean and annotated code
- `*.pdf` – Written project overview
- Raw and processed datasets

---

## Usage
These projects demonstrate applied ML workflows and can serve as templates for real-world classification tasks. Ideal for showcasing:
- Model interpretation
- Feature engineering
- Evaluation metrics and deployment readiness

---

Feel free to explore each folder and run the notebooks for an in-depth look.

