# RD Stock US Analysis Project

## Project Overview

This SQL-based project quantifies **innovation investment** among leading U.S.-based firms by constructing a **stock of R&D capital** for each company using historical R&D expenditures (`xrd`). The approach follows a simplified method that applies a **15% annual depreciation rate** over a 7-year horizon and assumes missing R&D values are zero. The goal is to identify the **top R&D-intensive firms in 2023**, measured by their accumulated R&D capital stock.

---

## Key Questions Explored

1. **How is R&D capital stock (xrd_stock) calculated?**  
   - The stock is built from current and past R&D expenditures:  
     \[
     \text{xrd\_stock} = xrd + 0.85 \cdot xrd_{t-1} + 0.85^2 \cdot xrd_{t-2} + \dots + 0.85^6 \cdot xrd_{t-6}
     \]
   - Missing R&D (`xrd`) values are assumed to be zero.

2. **Which firms lead in innovation?**  
   - The top 5 U.S. firms in 2023 by R&D stock are ranked and listed.
   - Output includes ticker (`tic`), company name (`conm`), and physical capital (`ppent`) for context.

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf` (included in this repository)

---

## Repository Structure

RD Stock US Analysis Project/
│
├── README.md # Project description and context
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── rd_stock_analysis_us_2023.sql # SQL queries for R&D capital stock analysis


---

## Key Variables Used

| Variable    | Description                                            |
|-------------|--------------------------------------------------------|
| `gvkey`     | Unique firm identifier                                 |
| `fyear`     | Fiscal year                                            |
| `conm`      | Company name                                           |
| `tic`       | Stock ticker                                           |
| `xrd`       | R&D expense (in millions)                              |
| `ppent`     | Net physical capital (property, plant, equipment)      |
| `xrd_lagN`  | Lagged R&D spending from N years ago                   |
| `xrd_stock` | Estimated R&D capital stock using 15% depreciation     |

---

## Insights Summary

- A **depreciated R&D stock** provides a better long-term view of innovation than raw annual spending.
- The **top-ranked firms** represent the **most innovation-intensive companies** in the U.S. as of 2023.
- This metric can support broader analysis of intangible capital, firm valuation, and competitive advantage.

---

## Contact

For questions or collaboration inquiries, feel free to reach out:

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this project insightful, feel free to ⭐️ star the repository!


