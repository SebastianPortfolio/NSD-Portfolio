# Firm Industry Analysis Project

## Project Overview

This SQL project explores the **industry classification dynamics of U.S.-based firms** from 1990 to 2023, focusing on **changes in primary industry (NAICSH)** and the structure of industry participation over time. It assesses both firm-level **NAICS reclassification events** and broader **industry comparability standards** used in empirical finance and economics research.

---

## Key Questions Explored

1. **Industry Code Coverage**  
   - How many firm-year observations have a **valid six-digit NAICS code**?

2. **Industry Reclassification Events**  
   - How many firms **ever changed their primary industry code** during the sample period?

3. **Clean Dataset for Industry Analysis**  
   - After applying the following filters:
     - U.S.-headquartered
     - At least $100M in **sales** and **assets**
     - Non-missing values for **net income** and **employment**
     - Valid six-digit **NAICSH**
     - Industry-year combinations with **≥ 3 firms**
   - How many firm-year observations remain?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link 
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf` (included in this repository)

---

## Repository Structure

Firm Industry Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── industry_shift_us_firms_case.sql # SQL queries to analyze NAICS classification changes


---

## Key Variables Used

| Variable      | Description                                         |
|---------------|-----------------------------------------------------|
| `gvkey`       | Unique firm identifier                              |
| `conm`        | Company name                                        |
| `fyear`       | Fiscal year                                         |
| `naicsh`      | 6-digit NAICS industry classification               |
| `at`          | Total assets (in millions)                          |
| `sale`        | Net sales (in millions)                             |
| `emp`         | Number of employees                                 |
| `ni`          | Net income (in millions)                            |
| `industry_size` | Count of firms in same NAICS-year group          |

---

## Insights Summary

- Thousands of firm-year observations have valid 6-digit NAICS codes, enabling robust industry-level analysis.
- A non-trivial number of firms **changed industries** over the 1990–2023 period, suggesting evolution in business models or reclassification.
- Final sample construction ensures each industry-year pair is **empirically comparable**, with at least **three firms per group**.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this analysis useful or insightful, feel free to ⭐️ star the repository!




