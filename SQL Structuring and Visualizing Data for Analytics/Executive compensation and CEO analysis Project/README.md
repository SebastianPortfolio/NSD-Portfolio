# Executive Compensation and CEO Analysis Project

## Project Overview

This SQL project analyzes characteristics of **Chief Executive Officers (CEOs)** in U.S. public firms, using data from the **Execucomp** and **Fundamentals_Annual** tables for fiscal year 2023. It examines CEO roles, industry categorization, compensation, and firm identifiers to better understand corporate leadership trends across sectors.

---

## Key Questions Explored

1. **Who Qualifies as a CEO and Director in 2023?**  
   - How many individuals were listed as both **CEO** and **Executive Director**?
   - What industries are they concentrated in?

2. **CEO Industry Categorization**  
   - Firms are grouped into broad industry categories using the NAICS code:  
     - `51%` → **Information**
     - `52%` → **Finance**
     - Others → **Other Industries**

3. **EIN Transformation for Numeric Analysis**  
   - Employer Identification Numbers (EINs), originally stored as text, are numerically transformed by removing dashes.  
   - The average numeric value of EINs is then calculated after removing formatting inconsistencies.

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

Executive Compensation and CEO Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── ceo, executives, new Variable Definitions - Stock Market Database 1990-2023 v3.pptx
├── execucomp_ceo_analysis.sql # SQL queries used in analysis


---

## Key Variables Used

| Variable      | Description                                          |
|---------------|------------------------------------------------------|
| `execid`      | Executive identifier                                 |
| `coname`      | Company name                                         |
| `exec_fullname` | Executive’s full name                             |
| `ceoann`      | CEO status indicator                                 |
| `execdir`     | Executive Director status indicator                  |
| `tdc1`        | Total CEO compensation                               |
| `naics`       | NAICS industry classification                        |
| `naicsdesc`   | Industry description                                 |
| `age`         | Executive’s age                                      |
| `ein`         | Employer Identification Number (text)                |
| `ein_num`     | EIN transformed into numeric format for analysis     |

---

## Insights Summary

- A filtered group of 2023 executives shows who holds **dual leadership roles** (CEO & Director).
- NAICS codes are recoded to **industry categories** for broader comparison.
- **EIN normalization** supports potential future linkage or numerical modeling across firms.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

Thanks for visiting this project! If you find it interesting or helpful, feel free to ⭐️ star the repository.


