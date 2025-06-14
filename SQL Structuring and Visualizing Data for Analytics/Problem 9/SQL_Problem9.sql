/* You are curious about the persistence of competitive advantage, and whether that has changed over time.
So you start with firms headquartered in the United States, with at least $100 million in assets, and nonmissing employment, net income, sales, and 6-digit naicsh codes.
You then create an industry-average ROA for each industry-year combination. For proper industry analysis, you also drop any industry with less than 3 firms in that 6-digit industry in that year. Call this industry-average ROA roa_ind. Also include fsp (firm-specifc profit) in your final output (this will become handy for future questions). Recall that fsp is the firm's ROA minus the industry average ROA in that year.
How many firm-year observations from the 1990-2023 stock market data conform to these requirements?*/

DROP VIEW IF EXISTS q1;
CREATE VIEW q1 AS
SELECT
    gvkey,
    conm,
    fyear,
    at,
    sale,
    ni,
    emp,
    naicsh,
    COUNT(gvkey) OVER(PARTITION BY naicsh, fyear) AS ind_size,
    AVG(ni/at) OVER(PARTITION BY naicsh, fyear) as roa_ind,
    ni/at - AVG(ni/at) OVER(PARTITION BY naicsh, fyear) AS fsp
FROM Fundamentals_Annual
WHERE 
    loc = 'USA' AND
    at >= 100 AND
    emp IS NOT NULL AND
    ni IS NOT NULL AND 
    sale IS NOT NULL AND 
    naicsh >= 100000 AND naicsh <= 999999;

SELECT *
FROM q1
WHERE ind_size >= 3;

/* How many *firms* that you can calculate had an fsp in 2022 (based on the same screening procedures above) also had an fsp in 2023? In other words, how many firms had an fsp in both years?*/

DROP VIEW IF EXISTS q2;
CREATE VIEW q2 AS
SELECT *
FROM q1
WHERE ind_size >= 3 and fyear = 2022
    AND gvkey IN 
    (SELECT gvkey
     FROM q1 
     WHERE ind_size >= 3 AND fyear = 2023);

/* How many firms from 2022 that were in the top quartile for fsp for their industry were also in the top quartile of fsp in 2023?*/

WITH q3_cte AS (
SELECT *,
    NTILE(4) OVER(PARTITION BY fyear ORDER BY fsp DESC) AS fsp_quartile
FROM q1
WHERE ind_size >= 3)

SELECT *,
    COUNT(gvkey) AS years
FROM q3_cte
WHERE fsp_quartile = 1 
    AND fyear >= 2022 AND fyear <= 2023
GROUP BY gvkey
HAVING years = 2
ORDER BY conm;

/* Lastly, based on fsp quartiles you calculated earlier, what percentage of firms changed their fsp quartile from 2022 to 2023? For example, if a firm was in the top 25% in 2022, and then the next 25% in 2023, it is considered to have changed.
The numerator is the number of firms that changed fsp, and the denominator is the number of firms that had an fsp in 2022 and 2023*/

DROP VIEW IF EXISTS q4;
CREATE VIEW q4 AS
WITH q4_cte AS (
SELECT *,
    NTILE(4) OVER(PARTITION BY fyear ORDER BY fsp DESC) AS fsp_quartile
FROM q1
WHERE ind_size >= 3)

SELECT *,
    LEAD(fsp_quartile, 1) OVER(PARTITION BY gvkey ORDER BY gvkey, fyear) AS fsp_lead1
FROM q4_cte;

SELECT 
    gvkey,
    fyear,
    q4.conm,
    fsp_quartile,
    fsp_lead1
FROM q4
INNER JOIN q2
USING (gvkey, fyear)
WHERE fsp_quartile <> fsp_lead1;
--1033 rows have a different FSP, and we calculated 2,712 before total
--This is 1033/2712 changes = 38.1% changed