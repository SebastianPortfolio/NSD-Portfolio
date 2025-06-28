# Firm-Specific Profit Volatility (US Firms) Project

## Project Overview

This SQL-based project analyzes the **persistence and volatility of firm-specific profits (FSP)** across U.S.-based firms from **1990 to 2023**. The analysis evaluates how stable competitive advantages are over time by looking at firm ROA relative to their industry peers. It further investigates how firms move across **FSP quartiles**, offering insight into the **durability of performance leadership** in the U.S. economy.

---

## Key Questions Explored

1. **Which firms outperform their industry peers in profitability?**  
   - ROA is adjusted for industry averages to compute **firm-specific profit (FSP)**.
   - Only firms with valid financial data and 6-digit NAICS codes are included.
   - Observations are restricted to industries with **at least three firms per year**.

2. **FSP Persistence from 2022 to 2023**  
   - How many firms reported an FSP in both years?
   - What share of firms stayed in the **top quartile** of FSP both years?

3. **Quartile Transitions Over Time**  
   - What **percentage of firms changed FSP quartiles** from 2022 to 2023?
   - Measures **volatility of relative performance** across firms.

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link 
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf` (included in this repository)

---

## Repository Structure

Firm Specific Profit Volatility US Firms Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── fsp_volatility_us_firms.sql # SQL queries and logic for FSP volatility analysis


---

## Key Variables Used

| Variable     | Description                                              |
|--------------|----------------------------------------------------------|
| `gvkey`      | Unique firm identifier                                   |
| `fyear`      | Fiscal year                                              |
| `conm`       | Company name                                             |
| `at`         | Total assets (in millions)                               |
| `ni`         | Net income (in millions)                                 |
| `sale`       | Sales (in millions)                                      |
| `emp`        | Number of employees                                      |
| `naicsh`     | 6-digit NAICS industry code                              |
| `roa_ind`    | Industry-average return on assets                        |
| `fsp`        | Firm-specific profit = ROA – industry-average ROA        |
| `fsp_quartile` | FSP quartile assignment within a year                 |
| `fsp_lead1`  | FSP quartile for the same firm in the following year     |

---

## Insights Summary

- **FSP captures relative performance**, offering a normalized view of profitability.
- In 2022–2023, **only a small fraction of firms remained in the top quartile** of FSP both years.
- **38.1% of firms** changed their FSP quartile over that one-year period, showing notable **volatility** in competitive positioning.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

Thanks for checking out this project! ⭐️ Star the repo if you found it helpful or insightful.
