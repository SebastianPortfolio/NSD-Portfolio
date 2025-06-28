# Amazon_ROA_Analysis Project

## Project Overview

This SQL-based analysis investigates **Return on Assets (ROA)** and employment data for Amazon (ticker: `AMZN`) from 1996 to 2023, using the **North American Stock Market 1990–2023** dataset (v1.0). It also compares Amazon’s performance to broader benchmarks for **U.S.-headquartered, nonfinancial firms** across different asset tiers.

---

## Key Questions Explored

1. **Amazon’s Average ROA (2014–2023)**  
   What was Amazon's average return on assets over the past decade?

2. **Amazon's Workforce Over Time**  
   How many employees did Amazon have in 1996 vs. 2023?

3. **Benchmarking Amazon**  
   What was the average ROA in 2023 for:
   - All nonfinancial U.S. firms?
   - Firms with ≥ $50 million in assets?
   - Firms with ≥ $1 billion in assets?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=sharing
- **Variable definitions**: See `Variable Definitions - Stock Market Database 1990-2023.pdf` in this repo

---

## Repository Structure

Amazon_ROA_Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── roa_analysis_amzn_us.sql # SQL queries used in analysis


---

## Key Variables Used

| Variable | Description |
|----------|-------------|
| `conm`   | Company name |
| `tic`    | Stock ticker symbol |
| `fyear`  | Fiscal year |
| `ni`     | Net income (in millions) |
| `at`     | Total assets (in millions) |
| `emp`    | Number of employees |
| `naicsh` | NAICS industry code |
| `loc`    | Headquarter country |

---

## Insights Summary

- Amazon's **average ROA from 2014 to 2023** offers insight into the company’s long-term profitability.
- Amazon’s **employee growth** reflects its transformation from a small-scale operation in 1996 to a massive global employer.
- Comparing Amazon’s ROA to **industry peers** at different asset levels highlights its relative performance in the U.S. corporate landscape.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

Thanks for checking out this project! If you find it useful, feel free to ⭐️ star the repository.


