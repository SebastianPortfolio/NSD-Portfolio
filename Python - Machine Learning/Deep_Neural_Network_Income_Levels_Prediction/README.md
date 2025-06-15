# Deep Neural Network – Income Level Prediction

This project builds and evaluates a deep learning model to predict whether an individual's income exceeds $50K annually using U.S. Census data. It demonstrates a complete pipeline of data preprocessing, neural network training, evaluation, and final prediction deployment.

---

## Objective
Use demographic and employment features to classify income levels using a feedforward neural network (TensorFlow/Keras).

---

## Dataset
- **Source:** U.S. Census Bureau
- **Files:** `USCensusTraining.csv`, `USCensusTest.csv`
- **Target Variable:** `income` (binary: `<=50K` or `>50K`)
- **Features:** Mix of numerical and categorical attributes (e.g., age, education, occupation, native-country)

---

## Key Steps
- **Data Cleaning:** Handle missing values and consolidate rare categories
- **Feature Engineering:** One-hot encoding of categorical variables
- **Scaling:** Min-Max normalization of numeric features
- **Balancing:** SMOTE used to address class imbalance
- **Model Architecture:**
  - 2 hidden layers (64 and 32 units)
  - Sigmoid/ReLU activations
  - Binary crossentropy loss
  - RMSprop optimizer
- **Evaluation:** Accuracy, confusion matrix, F1-score
- **Tuning:** GridSearchCV for hyperparameter optimization
- **Deployment:** Final predictions made on processed test data

---

## Key Files
- `Python_Code_Deep_Neural_Network_Income_Levels_Prediction.ipynb`: Full implementation pipeline from preprocessing to model deployment
- `Code_Walkthrough_Deep_Neural_Network_Income_Levels_Prediction.ipynb`: Annotated explanation of model decisions and logic
- `Project_Overview_Deep_Neural_Network_Income_Level_Prediction.pdf`: High-level summary of methodology, results, and future recommendations
- `Final_predictions.txt`: Model output predictions for the test dataset

---

## Tools & Libraries
- **TensorFlow / Keras**
- **Pandas / NumPy**
- **Scikit-learn / Imbalanced-learn**
- **Matplotlib / Seaborn**

---

## Highlights
- Applied neural networks to real census data
- Demonstrated model explainability through feature importance
- Addressed data imbalance with SMOTE
- Implemented robust tuning and evaluation pipeline

---


