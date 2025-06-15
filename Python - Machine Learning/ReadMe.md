# Python – Machine Learning Projects

This folder contains machine learning projects implemented in **Python**, using real-world datasets to solve classification and clustering problems. Each project demonstrates components of a machine learning pipeline such as **data preprocessing**, **modeling**, **evaluation**, and **documentation**, depending on project scope.

---

## Projects

### [Decision Tree Classifier – eBay Auctions](./Decision-Tree-Classifier-eBay-Auctions)
**Goal:** Predict whether an item listed on eBay will sell based on listing features.

- **Model:** Decision Tree Classifier  
- **Dataset:** `ebayAuctions.xlsx`

**Highlights:**
- Feature engineering and label encoding
- Decision boundary analysis and model interpretability

**Key Files:**
- `Python_Code_Decision_Tree_Classifier_eBay_Auctions.ipynb` – Main implementation of the decision tree model  
- `Code_Walkthrough_Decision_Tree_Classifier_eBay_Auctions.ipynb` – Step-by-step explanation of the modeling process  
- `Project Overview_Decision Tree Classifier_eBay_Auctions.pdf` – Summary of objectives, methodology, and results

---

### [Deep Neural Network – Income Level Prediction](./Deep_Neural_Network_Income_Levels_Prediction)
**Goal:** Classify individuals into income brackets using U.S. Census data.

- **Model:** Feedforward Neural Network (TensorFlow/Keras)  
- **Datasets:** `USCensusTraining.csv`, `USCensusTest.csv`

**Highlights:**
- Input normalization and categorical encoding
- Model architecture tuning and validation

**Key Files:**
- `Python_Code_Deep_Neural_Network_Income_Levels_Prediction.ipynb` – Full training and evaluation script for the neural network  
- `Code_Walkthrough_Deep_Neural_Network_Income_Levels_Prediction.ipynb` – Detailed walkthrough with explanations and commentary  
- `Project_Overview_Deep_Neural_Network_Income_Level_Prediction.pdf` – Overview of the model design, approach, and performance  
- `Final_predictions.txt` – Model predictions on the test dataset

---

### [KMeans & BIRCH Clustering – Canadian Census](./KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction)
**Goal:** Use unsupervised learning to explore and classify income groups from Canadian census data.

- **Models:** K-Means and BIRCH  
- **Datasets:** `CensusCanada2021Training.csv`, `CensusCanada2021Test.csv`

**Highlights:**
- Unsupervised clustering of high-dimensional census data
- Mapping clusters to labels for classification evaluation

**Key Files:**
- `Python_Code_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.ipynb` – Main clustering logic and cluster-to-label mapping  
- `Code_Walkthrough_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.ipynb` – Annotated explanation of data processing and results  
- `Project_Overview_KMeans_and_BIRCH_Clustering_Canadian_Census_Income_Prediction.pdf` – High-level summary of methodology and findings  
- `Final_predictions.txt` – Final classification output from the clustering models

---

### [K-Nearest Neighbors – COVID-19 Vaccination Status](./KNN_Covid19_Vaccination_Status_Prediction)
**Goal:** Predict vaccination status based on behavioral and demographic survey data.

- **Model:** KNN Classifier  
- **Dataset:** `COVID-19BehaviorData_CAN2022.csv`  
- **Reference File:** `DataKeyCOVID-19BehaviorData_CAN2022.xlsx`

**Highlights:**
- Feature selection and scaling
- Evaluation across different k-values

**Key Files:**
- `Python_Code_KNN_Predicting COVID-19 Vaccination Status.ipynb` – Model training and prediction logic for KNN  
- `Code_Walkthrough_KNN_Predicting COVID-19 Vaccination Status.ipynb` – Guided breakdown of each modeling step  
- `Project Overview_KNN_Predicting COVID-19 Vaccination Status.pdf` – Summary of approach, key metrics, and conclusions

---

## Tools & Libraries

- **Data Handling:** `pandas`, `numpy`  
- **Modeling:** `scikit-learn`, `tensorflow`, `keras`  
- **Visualization:** `matplotlib`, `seaborn`  

---

## Project Structure

Each project folder includes a combination of the following files depending on scope:

- `README.md` – Project-specific summary  
- `Python_Code_*.ipynb` – Primary model development and execution  
- `Code_Walkthrough_*.ipynb` – Detailed explanation with annotations  
- `Project_Overview_*.pdf` – Project summary and results  
- `*.csv` / `*.xlsx` – Input or reference data  
- `Final_predictions.txt` – Output predictions (if applicable)

---

## Usage

These projects can be used as templates for:
- Building and validating machine learning pipelines  
- Conducting feature engineering and preprocessing  
- Comparing algorithms and tuning models  
- Documenting and presenting analytical workflows

Feel free to explore, run, and adapt them for your own work or learning.


