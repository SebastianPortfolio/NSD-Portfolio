# Top 500 Sales ROA Analysis Project

## Project Overview

This SQL-based analysis tracks the **500 largest U.S.-headquartered nonfinancial firms by sales in 1990**, evaluating their financial performance over time. Specifically, it compares the **average Return on Assets (ROA)** in 1990 for this elite group with the **average ROA in 2023** for firms that still existed and were publicly traded.

---

## Key Questions Explored

1. What was the average ROA of the top 500 U.S. firms (by sales) in 1990?
2. How many of those firms were still publicly traded in 2023?
3. What was their average ROA in 2023, over 30 years later?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link 
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf` (included in this repository)

---

## Repository Structure

Top 500 Sales ROA Analysis Project/
│
├── README.md # Project description and findings
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── top500_us_firm_roa_tracking.sql # SQL queries for identifying and analyzing top firms


---

## Methodology Summary

- Firms from **1990** were ranked based on **sales** (descending).
- The **top 500** were isolated for performance analysis.
- **ROA** was computed as `net income / total assets` (`ni / at`).
- These same firms were then tracked to **2023**, identifying which still existed.
- The average ROA in 2023 was then calculated for the surviving subset.

---

## Key Findings

- In 1990, the top 500 firms had a healthy average ROA, indicative of strong operational efficiency.
- By 2023, **only a fraction of those firms remained publicly traded**.
- The **average ROA** of the surviving firms showed how this elite group evolved over time—highlighting either **enduring competitive advantage** or **market attrition**.

---

## Contact

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If this analysis was insightful, feel free to ⭐️ star the repo!

