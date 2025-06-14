/*Start with the whole North American Stock market database. You are interested in studying firms that changed their primary industry (as indicated by the naicsh variable in the dataset).
First, consider observations that have a six-digit naicsh code.
How many observations have a six-digit naicsh code? */

SELECT *
FROM Fundamentals_Annual
WHERE naicsh >= 100000 AND naicsh <= 999999

/*Continuing the previous question, How many firms (as denoted by gvkey) that were in the sample above ever changed naicsh codes at any time in the dataset?  */

DROP VIEW IF EXISTS q2_part1;
CREATE VIEW q2_part1 AS 
SELECT 
    gvkey,
    fyear,
    conm,
    naicsh,
    MAX(naicsh) OVER(PARTITION BY gvkey) AS naicsh_max,
    naicsh - MAX(naicsh) OVER(PARTITION BY gvkey) AS change
FROM Fundamentals_Annual
WHERE naicsh >= 100000 AND naicsh <= 999999;

SELECT
    gvkey,
    conm
FROM q2_part1
WHERE change <> 0
GROUP BY gvkey
ORDER BY conm;


/*Start with the whole North American 1990-2023 database again, and keep all observations with $100 million or more in sales (sale), $100 million or more in assets (at), a six-digit naicsh code (naicsh), nonmissing employment (emp), and nonmissing net income (ni). Finally, keep observations headquartered in the United States (loc == "USA").
To make industry comparisons meaningful, we only keep observations in industries with at least three firms in that six-digit naicsh industry in that year.
How many observations satisfy these criteria? */

DROP VIEW IF EXISTS q3;
CREATE view q3 AS
SELECT *,
    COUNT(gvkey) OVER(PARTITION BY fyear, naicsh) AS industry_size
FROM Fundamentals_Annual
WHERE 
    naicsh >= 100000 AND naicsh <= 999999
    AND at >= 100
    AND sale >= 100
    AND emp IS NOT NULL 
    AND ni IS NOT NULL
    AND loc = 'USA';

SELECT *
FROM q3
WHERE industry_size >= 3;