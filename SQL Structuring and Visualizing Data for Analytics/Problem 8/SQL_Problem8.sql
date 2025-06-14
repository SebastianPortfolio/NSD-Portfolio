/* To review, we are going to look at the North American 1990-2023 database, and keep all observations with $100 million or more in sales (sale), $100 million or more in assets (at), a six-digit naicsh code (naicsh), nonmissing employment (emp), and nonmissing net income (ni). Finally, we are only focused on observations headquartered in the United States (loc = 'USA').
As you found out before, to make industry comparisons meaningful, we only keep observations in industries with at least three firms in that six-digit naicsh industry in that year.
And now, for the rest of the question: You will now calculate firm-specific profits (fsp) for each observation. FSP is defined as the firm's return on assets (ni/at) minus the average return on assets for that industry in that year. (Remember that industry is defined by the six-digit naicsh) 
How many observations in the dataset that you just created had a firm-specific profit (FSP) of greater than 0? */

DROP VIEW IF EXISTS q1;
CREATE VIEW q1 AS

WITH q1_part1 AS (
SELECT *,
    COUNT(gvkey) OVER(PARTITION BY fyear, naicsh) AS industry_size
FROM Fundamentals_Annual
WHERE 
    naicsh >= 100000 AND naicsh <= 999999
    AND at >= 100
    AND sale >= 100
    AND emp IS NOT NULL 
    AND ni IS NOT NULL
    AND loc = 'USA')

SELECT *
FROM q1_part1
WHERE industry_size >= 3;


--Q1 part 2
WITH q1_part2 AS (
    SELECT *,
        ni/at - AVG(ni/at) OVER(PARTITION BY fyear, naicsh) AS fsp
    FROM q1
    )

SELECT *
FROM q1_part2
WHERE fsp > 0;

/* How many firms outperformed their industry (as defined by a firm-specific profit of greater than 0) for ten consecutive years during the period 2014-2023? */

WITH q2_part2 AS (

WITH q2_part1 AS (
    SELECT *,
        ni/at - AVG(ni/at) OVER(PARTITION BY fyear, naicsh) AS fsp
    FROM q1
    WHERE fyear >= 2014 AND fyear <= 2023
    )

    SELECT *,
        COUNT(gvkey) OVER(PARTITION BY gvkey) AS obs
    FROM q2_part1
    WHERE fsp > 0
    )
    
SELECT 
    gvkey,
    conm,
    obs
FROM q2_part2
WHERE obs = 10
GROUP BY gvkey
ORDER BY conm;