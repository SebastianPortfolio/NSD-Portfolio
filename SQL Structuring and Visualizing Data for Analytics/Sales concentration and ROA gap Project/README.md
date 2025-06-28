# Sales Concentration and ROA Gap Project

## Project Overview

This SQL-based analysis explores the **concentration of sales** among U.S. firms over time and investigates how **profitability gaps** between the most and least profitable firms have evolved from 1990 to 2023. The project focuses on identifying market dominance patterns and rising performance disparities using Return on Assets (ROA) quartiles.

---

## Key Questions Explored

1. How concentrated were total sales among the top 25% of U.S. firms in 1990 vs. 2023?
2. Has the performance gap (ROA) between the most and least profitable firms widened over time?
3. What was the average ROA for the top quartile in specific years?
4. What are the long-term trends in profitability inequality from 1990–1994 vs. 2019–2023?

---

## Data Source

- **Dataset**: North American Stock Market 1990–2023  
- **Version**: v1.0  
- **Available at**: https://drive.google.com/file/d/1bcICkKdPWD6ZMN0h6AxpmNkJAXkNHrNe/view?usp=drive_link
- **Variable definitions**: See  
  - `Variable Definitions - Stock Market Database 1990-2023.pdf` (included in this repository)

---

## Repository Structure

Sales Concentration and ROA Gap Project/
│
├── README.md # Project description and methodology
├── Variable Definitions - Stock Market Database 1990-2023.pdf
├── sales_concentration_and_roa_gap.sql # Full SQL analysis for sales concentration and profitability gap


---

## Methodology Summary

- **Sales Concentration**:
  - Firms from 1990 and 2023 were grouped into quartiles based on sales.
  - Total sales were aggregated by quartile to compute the percentage held by the top quartile.

- **ROA Gap Analysis**:
  - U.S. nonfinancial firms with ≥$100M in assets were sorted into profitability quartiles.
  - The ROA difference between the top and bottom quartiles was computed for each year.
  - Averages of these differences were compared for 1990–1994 vs. 2019–2023 to reveal trends.

---

## Key Findings

- In **both 1990 and 2023**, ~94% of total U.S. firm sales were concentrated in the **top 25% of firms**.
- The **ROA gap between the most and least profitable quartiles** has widened over time, indicating rising disparity in corporate performance.
- This may reflect increasing **competitive advantage persistence** or **market consolidation** over time.

---

## Contact

**Email**: doka.nimrod.lfgeb@gmail.com  
**LinkedIn**: [linkedin.com/in/sebastiandoka](https://www.linkedin.com/in/sebastiandoka)

---

If you found this project insightful, ⭐️ star the repo to support it!

