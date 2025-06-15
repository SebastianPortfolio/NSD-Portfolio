## Deep Neural Network – Income Level Prediction (U.S. Census)

This project builds and evaluates a deep learning model to classify whether an individual's income exceeds $50K annually using U.S. Census demographic and employment data. It showcases a full machine learning workflow, from preprocessing through model tuning and deployment.

---

### Objective

Classify income level (`>50K` or `<=50K`) using a feedforward neural network built with TensorFlow/Keras, leveraging features like age, education, occupation, and more.

---

### Dataset

| Dataset Name           | Description |
|------------------------|-------------|
| `USCensusTraining.csv` | Training dataset with demographic and work-related features |
| `USCensusTest.csv`     | Test dataset for final prediction |
| `Final_predictions.txt`| Predicted income labels from the trained model |

**Target Variable**: `income`  
**Feature Types**: Mixed numerical and categorical attributes (e.g., age, education, workclass)

---

### Methodology

#### Preprocessing & Feature Engineering:
- Cleaned missing values and grouped rare categories
- Applied one-hot encoding to categorical variables
- Scaled numerical inputs using Min-Max normalization

#### Handling Imbalance:
- Used **SMOTE** to address class imbalance in training data

#### Neural Network Architecture:
- 2 hidden layers: 64 and 32 units with ReLU
- Output layer: Sigmoid activation for binary classification
- Optimizer: RMSprop
- Loss Function: Binary crossentropy

#### Evaluation & Tuning:
- Metrics: Accuracy, F1-score, confusion matrix
- Performed hyperparameter tuning with `GridSearchCV`
- Deployed model on unseen test data

---

### Key Files

| File Name                                                                 | Description |
|---------------------------------------------------------------------------|-------------|
| `Python_Code_Deep_Neural_Network_Income_Levels_Prediction.ipynb`         | Complete model training, evaluation, and deployment code |
| `Code_Walkthrough_Deep_Neural_Network_Income_Levels_Prediction.ipynb`    | Annotated notebook explaining key modeling decisions |
| `Project_Overview_Deep_Neural_Network_Income_Level_Prediction.pdf`       | Executive summary of objectives, methods, and results |
| `Final_predictions.txt`                                                  | Predicted income classifications for test dataset |

---

### Highlights

- Leveraged real-world census data for deep learning classification
- Balanced imbalanced classes using SMOTE
- Demonstrated clear model evaluation and explainability
- Built a deployable income classification model from scratch

---

### Tools & Libraries

- **TensorFlow / Keras**
- **Scikit-learn / Imbalanced-learn**
- **Pandas / NumPy**
- **Matplotlib / Seaborn**



