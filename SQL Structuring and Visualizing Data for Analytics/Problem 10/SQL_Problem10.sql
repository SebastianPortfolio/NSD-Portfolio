/* Suppose you are interested in examining the concentration of sales in the largest 25% of all US-based firms (by sales) in 1990.
So first, you retain all observations from 1990, with loc = 'USA' and where sales (sale) is not equal to NULL.
What fraction of sales of all US-based firms in 1990 were concentrated in this leading group in 1990?*/

WITH q1_cte AS (
SELECT
    gvkey,
    fyear,
    conm,
    sale,
    NTILE(4) OVER(PARTITION BY fyear ORDER BY sale DESC) as sales_quartile
FROM Fundamentals_Annual
WHERE fyear = 1990
    AND loc = 'USA'
    AND sale IS NOT NULL
    )

SELECT 
    fyear,
    sales_quartile,
    SUM(sale) AS total_sales
FROM q1_cte
GROUP BY sales_quartile;

--This gives you 5,028,568.398 for sales in the top quartile.
--Total sales is the sum of the quartiles, which is 5,349,218.4
--Thus, we can say 94.0% are concentrated in the top quarter.


/* Now, instead of 1990, you examine the same metric for 2023. What fraction of sales of all US-based firms in 2023 were concentrated in the top 25% of firms (by sales) in 2023? 
Like the previous question, make sure you only include observations where sales is not equal to NULL.*/

WITH q2_cte AS (
SELECT
    gvkey,
    fyear,
    conm,
    sale,
    NTILE(4) OVER(PARTITION BY fyear ORDER BY sale DESC) as sales_quartile
FROM Fundamentals_Annual
WHERE fyear = 2023
    AND loc = 'USA'
    AND sale IS NOT NULL
    )

SELECT 
    fyear,
    sales_quartile,
    SUM(sale) AS total_sales
FROM q2_cte
GROUP BY sales_quartile;

--We get 22,024,174.584 for sales in the top quartile, and 23,351,716 for total sales. 
--Thus, 94.3% of sales are concentrated in the top quartile.


/* Now, you want to examine how much the leaders are pulling away from the rest of the pack. Take all US-based nonfinancial firms in 1990 with at least $100 million in assets, with non-missing net income values. Examine ROA (net income divided by assets). What was the average ROA for the most profitable quartile of firms (by ROA)? 
In other words, for the top 25% of firms by ROA, what was the average ROA in that group?*/

WITH q4_cte AS (
SELECT
    gvkey,
    fyear,
    conm,
    naicsh,
    ni,
    at,
    ni/at AS roa,
    NTILE(4) OVER(PARTITION BY fyear ORDER BY ni/at DESC) AS roa_quartile
FROM Fundamentals_Annual
WHERE fyear = 1993
    AND at >= 100
    AND naicsh NOT LIKE '52%'
    AND loc = 'USA'
    AND ni IS NOT NULL
)

SELECT
    fyear,
    roa_quartile,
    AVG(roa) AS roa_avg
FROM q4_cte
GROUP BY roa_quartile;

/* Now, we will examine this difference over time (ROA for the most profitable firms minus the ROA for the least profitable firms). Look at the trend for all 34 years. See anything interesting?
To quantify this, write in the average of these five differences from 1990-1994?
Now, write in the average of these five differences from 2019-2023?*/

WITH q6_cte AS (
SELECT
    gvkey,
    fyear,
    conm,
    naicsh,
    ni,
    at,
    ni/at AS roa,
    NTILE(4) OVER(PARTITION BY fyear ORDER BY ni/at DESC) AS roa_quartile
FROM Fundamentals_Annual
WHERE
    at >= 100
    AND naicsh NOT LIKE '52%'
    AND loc = 'USA'
    AND ni IS NOT NULL
),

q6_cte_part2 AS (
SELECT
    fyear,
    roa_quartile,
    AVG(roa) AS roa_avg
FROM q6_cte
GROUP BY fyear, roa_quartile)

SELECT *,
    roa_avg - LEAD(roa_avg, 3) OVER(PARTITION BY fyear ORDER BY fyear, roa_quartile) AS difference
FROM q6_cte_part2;