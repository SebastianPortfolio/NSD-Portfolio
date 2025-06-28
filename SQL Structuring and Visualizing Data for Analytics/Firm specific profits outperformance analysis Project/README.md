# Firm-Specific Profits Outperformance Analysis Project

## Project Overview

This SQL-based project investigates the concept of **firm-specific profit (FSP)**—defined as a firm's **return on assets (ROA)** minus its **industry-average ROA**—and measures which firms consistently outperform their industry peers. Focusing on U.S.-headquartered firms from **2014 to 2023**, the analysis highlights **persistent overperformers** and identifies firms that maintained above-average profitability for **ten consecutive years**.

---

## Key Questions Explored

1. **Firm-Specific Profit Calculation**  
   - How many U.S.-based firms had **positive FSP** (outperformed their industry) in a given year?
   - Industry defined at the **6-digit NAICSH level**
   - Industry-year groups must have **at least 3 firms** to be included

2. **Consistent Outperformance**  
   - Which firms outperformed their industry peers for **ten straight years (2014–2023)**?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link  
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf` (included in this repository)

---

## Repository Structure

Firm Specific Profits Outperformance Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── fsp_outperformance_study.sql # SQL queries for identifying consistent overperformers


---

## Key Variables Used

| Variable       | Description                                                  |
|----------------|--------------------------------------------------------------|
| `gvkey`        | Unique firm identifier                                       |
| `fyear`        | Fiscal year                                                  |
| `conm`         | Company name                                                 |
| `naicsh`       | 6-digit NAICS industry code                                  |
| `ni`           | Net income (in millions)                                     |
| `at`           | Total assets (in millions)                                   |
| `roa`          | Return on assets = net income / total assets                 |
| `roa_ind`      | Industry-average ROA for the firm’s NAICS code and year      |
| `fsp`          | Firm-Specific Profit = ROA – ROA_ind                         |

---

## Insights Summary

- Thousands of firms recorded **positive firm-specific profits** in at least one year.
- A select group of firms achieved **10 consecutive years** of outperformance from 2014–2023.
- These firms likely possess **persistent competitive advantages** in their respective industries.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this analysis useful, feel free to ⭐️ star the repository!


