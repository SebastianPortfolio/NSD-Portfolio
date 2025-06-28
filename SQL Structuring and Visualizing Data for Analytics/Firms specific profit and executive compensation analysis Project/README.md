# Firm-Specific Profit and Executive Compensation Analysis Project

## Project Overview

This SQL-based project investigates the link between **firm-specific profitability (FSP)** and **executive leadership stability**, focusing on U.S.-based nonfinancial firms in 2023. The analysis examines whether firms led by the **same CEO who also served as Executive Director** for five consecutive years (2019–2023) tend to have **higher firm-specific profits** relative to their industry peers.

---

## Key Questions Explored

1. **Screening High-Quality Firms in 2023**  
   - U.S. firms with:
     - At least **$1 billion in assets**
     - Non-missing values for **net income**, **employment**, **Total q**, and **off-balance-sheet intangible assets**
     - Valid 6-digit **NAICSH** codes
     - Industry-year groups with **≥ 3 firms**

2. **Calculating Firm-Specific Profit (FSP)**  
   - FSP = Modified ROA – Industry-Average Modified ROA  
   - Modified ROA = `net income / (assets + off-balance-sheet intangibles)`

3. **Execucomp Integration**  
   - How many firms from the screened dataset appear in the **Execucomp** database?

4. **CEO Leadership Stability (2019–2023)**  
   - How many firms had the **same individual** serving as both CEO and Executive Director for **five consecutive years**?

5. **Leadership vs. Profitability**  
   - What is the **average firm-specific profit** for firms with sustained CEO leadership vs. the broader sample?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v3.0  
- **Available at**: https://drive.google.com/file/d/1rjsHWUXtM7rGXwdqcXDny-o2BeLokCvG/view?usp=drive_link
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf`  
  - `ceo, executives, new Variable Definitions - Stock Market Database 1990-2023 v3.pptx`  
    (both included in this repository)

---

## Repository Structure

Firm-Specific Profit and Executive Compensation Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── ceo, executives, new Variable Definitions - Stock Market Database 1990-2023 v3.pptx
├── fsp_and_exec_consistency.sql # SQL queries used in leadership and profitability study


---

## Key Variables Used

| Variable         | Description                                                        |
|------------------|--------------------------------------------------------------------|
| `gvkey`          | Unique firm identifier                                             |
| `fyear`          | Fiscal year                                                       |
| `conm`           | Company name                                                      |
| `ni`             | Net income                                                        |
| `at`             | Total assets                                                      |
| `K_int_offBS`    | Off-balance-sheet intangible capital                              |
| `q_tot`          | Total q (market valuation including intangible capital)           |
| `fsp`            | Firm-specific profit: modified ROA minus industry average         |
| `exec_fullname`  | Executive’s full name (from Execucomp)                            |
| `ceoann`         | CEO designation flag                                              |
| `execdir`        | Executive Director designation flag                               |
| `co_per_rol`     | Execucomp’s executive role-person unique key                      |

---

## Insights Summary

- A well-defined sample of U.S. firms was used to calculate **industry-adjusted profitability** (FSP).
- A subset of firms led by **stable CEOs** (same individual, same role, 2019–2023) was identified.
- These consistently led firms exhibited **higher average FSP**, suggesting a possible link between **executive continuity and sustained performance**.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this project valuable or interesting, feel free to ⭐️ star the repository!
