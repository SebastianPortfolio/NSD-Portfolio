# Comfort Health – Medical Supply Distribution Optimization

This project focuses on optimizing the allocation of medical supplies to healthcare centers based on demand and distance. The analysis supports strategic decisions around facility utilization and transportation planning to minimize total distribution cost.

---

## Objective

Determine an optimal distribution plan for Comfort Health that allocates supplies from medical centers to demand sites efficiently while minimizing total transportation distance.

---

## Datasets

- `centers.csv`: Supply availability at distribution centers  
- `demands.csv`: Required demand at various healthcare facilities  
- `distances.csv`: Distance matrix between centers and demand points  

---

## Approach

- **Problem Definition**  
  - Formulated as a **transportation optimization problem** to reduce delivery distances between supply centers and customer locations.

- **Data Preparation**  
  - Cleaned and loaded data
  - Transformed data into long format suitable for modeling.
  - Validated feasibility (total supply ≥ total demand).

- **Model Development**  
  - Built a **Linear Programming (LP)** model using the `PuLP` library:
    - **Decision Variables**: Quantities shipped between each center-location pair.
    - **Objective**: Minimize total shipping distance (volume × distance).
    - **Constraints**:
      - Demand at all locations must be fully met.
      - No center exceeds its available supply.

- **Solution & Analysis**  
  - Solved the LP problem to determine the optimal distribution plan.
  - Extracted shipping quantities and analyzed route efficiency and resource allocation.

---

## Key Files

| File Name                                      | Description |
|-----------------------------------------------|-------------|
| `Python_Code_Comfort_Health_Case_Study.ipynb` | Core implementation of data handling and optimization logic |
| `Code_Walkthrough_ComfortHealth.ipynb`        | Annotated walkthrough explaining model setup and results |
| `Project_Overview_Comfort_Health.pdf`         | Summary of business case, methodology, and key findings |
| `Case_Study_Comfort_Health_RSM_8423_Winter_2025.pdf` | Full case description and problem context |
| `centers.csv`, `demands.csv`, `distances.csv` | Cleaned data files for supply, demand, and logistics mapping |

---

## Outcome

- Developed an efficient distribution strategy that satisfies all medical facility demands  
- Demonstrated how linear optimization can support data-driven logistics planning  
- Identified potential bottlenecks and resource limitations through scenario analysis  

---

## 🛠Tools & Libraries

- Python, `pandas`, `numpy`, `PuLP`, `matplotlib`

---

## Notes

This project showcases practical application of linear programming for real-world supply chain challenges. It can serve as a reference for logistics, operations research, and analytics-driven resource allocation problems.

