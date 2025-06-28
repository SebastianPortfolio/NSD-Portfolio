# ROA US Firms Employee Analysis Project

## Project Overview

This SQL-based analysis investigates the relationship between **firm profitability** and **employment levels** among U.S.-based public companies in the North American Stock Market from 1990 to 2023. The focus is on calculating **firm-level average Return on Assets (ROA)** and **average employment**, and then exploring trends through a set of structured queries that filter, aggregate, and join data across time.

---

## Key Questions Explored

1. What are the **primary keys** when filtering by fiscal year, sales, and assets?
2. How many firm-year observations qualify under various financial and temporal constraints?
3. How do we aggregate **average ROA** per firm over time?
4. How many firms report non-missing employment data, and what is their **average employee count**?
5. When combining ROA and employment averages, how many matched firms exist?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link 
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf` (included in this repository)

---

## Repository Structure

ROA US Firms Employee Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── roa_emp_study_us_firms.sql # SQL queries for analyzing ROA and employment trends


---

## Key Variables Used

| Variable | Description                                |
|----------|--------------------------------------------|
| `gvkey`  | Unique firm identifier                     |
| `fyear`  | Fiscal year                                |
| `at`     | Total assets (in millions)                 |
| `sale`   | Total sales (in millions)                  |
| `ni`     | Net income                                 |
| `emp`    | Number of employees                        |
| `roa_avg`| Firm-level average Return on Assets        |
| `emp_avg`| Firm-level average employee count          |

---

## Insights Summary

- ROA and employment averages were derived across multiple fiscal years using firm-level aggregation.
- INNER JOINs on `gvkey` enabled identification of firms with both complete profitability and employment data.
- This approach supports further exploration of the correlation between **labor scale and financial performance** across industries and time.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this project helpful, feel free to ⭐️ star the repository!


