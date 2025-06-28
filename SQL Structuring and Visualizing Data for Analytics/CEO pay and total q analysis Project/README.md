# CEO Pay and Total q Analysis Project

## Project Overview

This SQL-based project explores the relationship between **CEO compensation**, **firm performance (measured by modified ROA)**, and **valuation (measured by Total q)** for U.S.-based nonfinancial firms in 2023. Using a combination of **Execucomp**, **Fundamentals_Annual**, and **Total_q** data, the analysis quantifies how top-executive pay correlates with firm-specific outcomes.

---

## Key Questions Explored

1. **Screening Firms for Analysis**  
   How many U.S.-based, nonfinancial firms in 2023 had:
   - At least $1 billion in assets
   - Non-missing values for net income, employment, Total q, off-balance-sheet intangibles, and total CEO compensation?

2. **Modified ROA for the Full Sample**  
   What is the average **modified return on assets**, defined as:  
   \[
   \text{Modified ROA} = \frac{\text{Net Income}}{\text{Assets} + \text{Off-Balance-Sheet Intangibles}}
   \]

3. **CEO Pay Quartiles vs. Performance**  
   What is the average modified ROA for:
   - Firms in the **top quartile** of CEO compensation?
   - Firms in the **bottom quartile** of CEO compensation?

4. **Valuation Check**  
   What is the average **Total q** (based on Peters & Taylor) across the sample?

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

CEO Pay and Total q Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── ceo_pay_and_qtot_study.sql # SQL queries analyzing CEO compensation and firm performance
├── ceo, executives, new Variable Definitions - Stock Market Database 1990-2023 v3.pptx


---

## Key Variables Used

| Variable       | Description                                       |
|----------------|---------------------------------------------------|
| `gvkey`        | Unique firm identifier                            |
| `fyear`        | Fiscal year                                       |
| `conm`         | Company name                                      |
| `ni`           | Net income (in millions)                          |
| `at`           | Total assets (in millions)                        |
| `K_int_offBS`  | Estimated intangibles not on the balance sheet    |
| `tdc1`         | Total CEO compensation                            |
| `ceoann`       | Indicator if executive is CEO                     |
| `execdir`      | Indicator if executive is also a director         |
| `q_tot`        | Total q (market-to-capital ratio with intangibles)|
| `naicsh`       | Industry code                                     |

---

## Insights Summary

- Firms with the **highest CEO pay** had, on average, **higher modified ROA** than firms in the bottom quartile.
- The **average Total q** for this cohort provides insight into investor valuation relative to asset base.
- This analysis helps illustrate how **executive compensation aligns (or not)** with firm-level economic performance.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

Thanks for exploring this project! ⭐️ Star the repo if you found it useful or insightful.



