# US Firm Analysis Project

## Project Overview

This project conducts a longitudinal SQL analysis of US-based firms using the **North American Stock Market 1990–2023** dataset. It explores how firms evolved over time based on size, employment, sales per employee, and return on assets (ROA).

---

## Key Questions Explored

1. Which year had the **highest sales per employee** for US firms?
2. How many firms ever reached **$100 million+ in assets**?
3. In which years did **average employment exceed 14,000 per firm**?
4. What was the **100th largest US firm by employment in 2023**?
5. How many firms have **complete data across all 34 years**?
6. Among long-standing large firms, which one had the **highest average ROA** from 1990–2023?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link  
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf`

---

## Repository Structure

US Firm Analysis Project/
│
├── README.md # Project overview and methodology
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── us_firm_analysis.sql # SQL queries for analysis


---

## Methods

- Filtered for US-headquartered firms using `loc = 'USA'`
- Computed metrics like:
  - Sales per employee
  - Average firm-level employment
  - Average ROA for qualifying firms
- Used ranking, grouping, and filtering operations to evaluate:
  - Largest employers
  - Firm longevity
  - Industry and asset-based constraints

---

## Insights

- 📊 **Sales per employee** peaked in the years when tech and logistics boomed.
- 🏢 Thousands of firms surpassed **$100 million in assets** at some point, though few sustained it over time.
- ⏳ Only a small group of firms maintained **data coverage for all 34 years**.
- 💡 One standout firm held the **highest long-term ROA** among consistently large, nonfinancial companies.

---

## Contact

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this project helpful, consider ⭐️ starring the repo!

