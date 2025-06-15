# Hot Delivery Optimization – Last-Mile Routing Strategy

This project develops a scalable optimization framework for a last-mile food delivery service, addressing single- and multi-driver routing challenges while incorporating constraints such as food preparation time, route distance, and customer wait time.

---

## Objective

Optimize the assignment and routing of food delivery orders to drivers to minimize total delivery distance and customer wait time, while meeting real-world delivery and readiness constraints.

---

### Datasets

| Dataset Name              | Description |
|---------------------------|-------------|
| `part1_ordersB.csv`       | Base order request data for single-driver optimization |
| `part2_ordersA.csv`       | Enhanced order dataset with service and prep times |
| `part3_drivers.csv`       | Driver info for multi-driver optimization phase |
| `regions.csv`             | Region-to-order mapping and delivery zones |
| `distances-1.csv`         | Distance matrix between pickup/drop-off locations |
| `part3_small.csv`         | Simplified test set for validation/debugging |

---

## Approach

- **Phase 1: Single-Driver Routing**  
  - Modeled a **Mixed-Integer Linear Program (MILP)** to find the shortest route for a single driver.  
  - Enforced precedence constraints (pickup before drop-off) and eliminated subtours using MTZ constraints.  
  - Result: Shortest distance route of **33.88 km**.

- **Phase 2: Time-Constrained Routing**  
  - Integrated time-related parameters:
    - Food prep time
    - Driving speed
    - Stop service time
    - Wait time limit (≤ 30 mins)  
  - Result: Distance increased to **43.32 km**, but reduced average wait time to **17.32 minutes**.

- **Phase 3: Multi-Driver Optimization**  
  - Extended model to assign multiple drivers based on region, capacity, and time efficiency.  
  - Custom start locations and delivery zones factored in.  
  - Result:
    - Total distance: **49.71 km** across 3 drivers  
    - Average wait time: **21.51 minutes**, within target window

---

## Key Files

| File Name                                     | Description |
|----------------------------------------------|-------------|
| `Python_Code_Hot_Delivery_Case_Study.ipynb`  | Full optimization pipeline covering all three phases |
| `Code_Walkthrough_Hot_Delivery.ipynb`        | Annotated walkthrough explaining logic, structure, and results |
| `Project_Overview_Hot_Delivery.pdf`          | Executive summary of the problem, methods, and outcomes |
| `Case_Study_Hot_Delivery_RSM_8423_Winter_2025-1 (1).pdf` | Official case scenario and requirements |

---

## Tools & Libraries

- **Python**: `pandas`, `numpy`, `PuLP`
- **Optimization Techniques**: MILP, precedence constraints, vehicle routing
- **Use Cases**: Logistics planning, last-mile delivery, operational analytics

---

## Outcome

- Built a three-phase optimization pipeline adaptable to growing delivery networks.  
- Balanced service-level targets with route efficiency.  
- Demonstrated applicability to real-world platforms like Uber Eats or DoorDash.
