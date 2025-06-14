/* You are curious about how much economic activity from leading firms today that are relatively new.
Let the total value of all sales from the 500 largest (based on sales in 2023) US-based firms in 2023 be called S.
What percentage of S comes from firms not publicly traded in 1990? */

DROP VIEW IF EXISTS q1_part1;
CREATE VIEW q1_part1 AS 
SELECT
gvkey,
1 AS present
FROM Fundamentals_Annual
WHERE fyear = 1990;
DROP VIEW IF EXISTS q1_part2;
CREATE VIEW q1_part2 AS
SELECT
gvkey,
fyear,
conm,
sale,
RANK() OVER(PARTITION BY fyear ORDER BY sale DESC) AS sales_rank,
present,
CASE WHEN present = 1 THEN 1
ELSE 0
END AS in1990
FROM Fundamentals_Annual
LEFT JOIN q1_part1
USING (gvkey)
WHERE loc = 'USA' AND fyear = 2023
LIMIT 500;

SELECT
in1990,
SUM(sale) AS total_sale
FROM q1_part2
GROUP BY in1990;

/* Now you want to know which firms have staying power.
Suppose you rank the 500 largest US-based firms in 1990, in descending order of sales from highest to lowest. You do this again, year after year, until 2023. 
How many firms would make the list every single year? */

DROP VIEW IF EXISTS q2;
CREATE VIEW q2 AS 
SELECT
gvkey,
fyear,
conm,
sale,
RANK() OVER(PARTITION BY fyear ORDER BY sale DESC) as sales_rank
FROM Fundamentals_Annual
WHERE loc = 'USA';
SELECT
gvkey,
conm,
COUNT(gvkey) as top500yrs
FROM q2
WHERE sales_rank <= 500
GROUP BY gvkey
HAVING top500yrs = 34
ORDER BY conm;