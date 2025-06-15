# Ninja Crush Saga – Player Segmentation & Engagement Strategy

This project explores behavioral segmentation of mobile game players using clustering techniques. The goal is to identify distinct user groups and provide actionable insights to enhance player retention and engagement in a competitive mobile gaming environment.

---

## Objective

Leverage in-game behavior data to cluster players into distinct segments and recommend strategies to improve retention, conversion, and in-app monetization.

---

### Dataset

| Dataset Name        | Description |
|---------------------|-------------|
| `player_sample.csv` | Sample of anonymized user-level gameplay data |

---

## Approach

- **Data Exploration**  
  - Analyzed key behavioral metrics such as session frequency, duration, level progression, and purchase activity.
  - Performed outlier detection and feature scaling to ensure clustering robustness.

- **Feature Engineering**  
  - Derived engagement features including average session length, time between logins, and purchase-to-session ratio.

- **Clustering & Segmentation**  
  - Applied both **K-Means** and **Hierarchical Clustering** to segment users.
  - Used silhouette score and elbow method to select optimal cluster count.
  - Interpreted cluster profiles (e.g., casual players, potential spenders, churn risks).

- **Strategy Formulation**  
  - Developed targeted recommendations per player type:
    - Retarget potential churners with rewards
    - Upsell to high-engagement players
    - Customize campaigns based on session patterns

---

## Key Files

| File Name                                    | Description |
|---------------------------------------------|-------------|
| `Python_Code_Ninja_Crush_Saga_Case_Study.ipynb` | Main implementation of clustering models and segmentation logic |
| `Code_Walkthrough_Ninja_Crush_Saga.ipynb`      | Step-by-step explanation with annotated visuals |
| `Project_Overview_Ninja_Crush_Saga.pdf`        | Executive summary of the business problem and findings |
| `Case_Study_Ninja_Crush_Saga_RSM_8423_Winter_2025.pdf` | Original case file describing the game and business objectives |

---

## Tools & Techniques

- **Python**: `pandas`, `scikit-learn`, `matplotlib`, `seaborn`
- **Clustering Algorithms**: K-Means, Agglomerative
- **Evaluation Metrics**: Silhouette score, cluster profiling

---

## Outcome

- Identified clear player segments with distinct behavior patterns.
- Mapped clusters to business strategies to improve monetization and retention.
- Demonstrated the power of unsupervised learning for user behavior modeling in mobile gaming.
