# Total Decile to ROA Predictive Power Analysis Project

## Project Overview

This SQL-based project investigates the **relationship between firm valuation (measured by Total q)** and subsequent performance using a modified Return on Assets (ROA) metric. Specifically, it assesses whether **Total q deciles from 2014 can predict firm-level profitability in 2023**.

---

## Key Questions Explored

1. What is the average modified ROA in 2023 for firms in the **top vs. bottom decile** of Total q?
2. How does modified ROA compare between firms in the **top and bottom ROA deciles** in 2023?
3. Does Total q in 2014 **predict firm performance** in 2023?
4. Which 2014 q_tot deciles **outperformed** in 2023, based on average modified ROA?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v2.0  
- **Available at**: https://drive.google.com/file/d/1KnI-oYOr8CKMtke8oy_yYqcs_M7-8SKx/view?usp=drive_link
- **Variable definitions**:  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf`  
  - `new Variable Definitions - Stock Market Database 1990-2023 v2.pptx`

---

## Repository Structure

Total decile to ROA predictive power analysis Project/
│
├── README.md # Project description and insights
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── new Variable Definitions - Stock Market Database 1990-2023 v2.pptx
├── qtot_predictive_power_study.sql # SQL analysis and queries


---

## Methodology Summary

- Constructed a **modified ROA**:  
  `ROA = net income / (total assets + off-balance-sheet intangible assets)`
  
- Grouped US-based, nonfinancial firms from **2023** into:
  - **Deciles by modified ROA**
  - **Deciles by Total q (q_tot)**

- Tracked firms originally in **2014 q_tot deciles** and analyzed their **performance in 2023**.

- Identified the **top 3 performing 2014 decile cohorts** by their 2023 average modified ROA.

---

## Key Insights

- Firms in the **top Total q decile** generally showed stronger profitability in 2023.
- There is a **notable predictive signal** from Total q measured a decade earlier.
- The findings support the use of Total q as a forward-looking valuation metric in investment analysis.

---

## Contact

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this study insightful, please ⭐️ star the repository!

