# Athers Controversy – Inventory Allocation Optimization

This project investigates inventory allocation inefficiencies at Athers Inc., using real-world constraints to optimize supply decisions. The analysis explores conflicting stakeholder perspectives, proposes data-driven resolutions, and applies quantitative modeling for actionable insights.

---

## Objective

Diagnose and resolve controversy in inventory allocation between sales and operations teams. Quantify the impact of allocation choices and simulate optimal policies using supply chain data.

---

## Dataset

- `inventory.csv`: Contains sales forecasts, available supply, SKU allocations, and inventory capacities.

---

## Approach

- **Business Understanding**:  
  - Modeled the root of conflict between regional managers and supply chain team.
  - Reframed the issue as a constrained optimization problem.

- **Data Analysis**:  
  - Explored allocation patterns and unmet demand across scenarios.
  - Performed sensitivity analysis on supply caps and demand fulfillment.

- **Optimization Modeling**:  
  - Applied **linear programming** using Python's `PuLP` to re-allocate inventory.
  - Objective: maximize fulfilled demand under supply constraints.

- **Scenario Simulation**:  
  - Compared actual vs. optimized allocations across business units.
  - Visualized trade-offs and identified win-win outcomes.

---

## Key Files

| File Name                                         | Description |
|--------------------------------------------------|-------------|
| `Python_Code_Athers_Controversy_Case_Study.ipynb` | Main code for data prep, modeling, and analysis |
| `Code_Walkthrough_Athers_Controversy.ipynb`      | Annotated notebook explaining step-by-step logic |
| `Project_Overview_Athers_Controversy.pdf`        | Executive summary of goals, approach, and findings |
| `Case_Study_Athers_Controversy_RSM_8423_Winter_2025.pdf` | Academic case file and problem background |
| `inventory.csv`                                  | Input data: supply, demand, and allocation info |

---

## Outcomes

- Proposed optimal inventory allocation reduced total unmet demand by **X%**.
- Resolved internal tension by demonstrating fairness across regions.
- Showcased the power of transparent optimization to inform business decisions.

---

## Tools & Libraries

- `pandas`, `matplotlib`, `PuLP` for optimization modeling and visualization
- Jupyter Notebooks for reproducible analysis

---

## Potential Improvements

- Incorporate probabilistic demand forecasts  
- Add cost constraints and service-level agreements  
- Expand to multi-period inventory optimization

