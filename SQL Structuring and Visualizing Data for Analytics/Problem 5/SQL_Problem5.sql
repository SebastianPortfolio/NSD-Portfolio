/* Start with all nonfinancial, US-headquartered firms from 1990. Rank the firm with the highest sales as 1, all the way to the 500th largest sales as 500.
What is the average ROA (ni/at) for this group of 500 firms in 1990? */

DROP VIEW IF EXISTS q1_part1;
CREATE VIEW q1_part1 AS
SELECT
    gvkey,
    fyear,
    conm,
    sale,
    at,
    ni,
    RANK() OVER(PARTITION BY fyear ORDER BY sale DESC) AS rank
FROM Fundamentals_Annual
WHERE loc == 'USA' 
    AND naicsh NOT LIKE '52%';

SELECT
    AVG(ni/at) AS roa
FROM q1_part1
WHERE 
    rank <= 500
    AND fyear == 1990;

 /* How many of 500 largest nonfinancial US-headquartered firms (by sales) in the previous question from 1990 were still publicly traded in 2023? 
What was the average ROA in 2023 for that top 500 group from 1990 that still existed? */

DROP VIEW IF EXISTS q2_part1;
CREATE VIEW q2_part1 AS
SELECT
    gvkey,
    conm,
    RANK()OVER(ORDER BY sale DESC) AS rank90
FROM Fundamentals_Annual
WHERE fyear == 1990
    AND loc == 'USA' 
    AND naicsh NOT LIKE '52%'
LIMIT 500;

 

SELECT 
    AVG(ni/at) AS roa2023,
    COUNT(gvkey) AS obs
FROM Fundamentals_Annual
INNER JOIN q2_part1
USING (gvkey)
WHERE fyear = 2023;