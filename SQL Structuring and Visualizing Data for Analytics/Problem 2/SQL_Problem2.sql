/*Which fiscal year had the highest average sales per employee for firms headquartered in the United States? */

SELECT 
    fyear,
    AVG(sale/emp) AS sales_emp
FROM Fundamentals_Annual
WHERE loc = 'USA'
GROUP BY fyear
ORDER BY sales_emp DESC;

/*You now want a dataset in which you keep firms as long as they reached $100 million in assets in any year in the dataset.
How many firms (i.e., gvkeys) are left after this screening procedure? */

SELECT    
    gvkey,
    MAX(at) AS max_at
FROM Fundamentals_Annual
GROUP BY gvkey
HAVING max_at >= 100;

/*Now, start by keeping observations if they have at least $100 million in assets, $100 million in sales, nonmissing values of employment, and are headquartered in the United States.
In this sample of American firms, how many years did average employment per firm exceed 14,000? */

SELECT
    fyear, 
    AVG(emp) AS avg_emp
FROM Fundamentals_Annual
WHERE at >= 100 AND sale >= 100 AND loc = 'USA' AND emp IS NOT NULL
GROUP BY fyear

/* Consider US-based firms in 2023. What is the ticker for the 100th largest firm by employment? */

SELECT 
    gvkey,
    conm,
    fyear,
    emp,
    tic
FROM Fundamentals_Annual
WHERE loc = 'USA'  AND fyear = 2023
ORDER BY emp DESC
LIMIT 100;

/* How many firms are in the database for all 34 years (1990-2023)?*/

SELECT
    gvkey,
    conm,
    COUNT(gvkey) AS obs
FROM Fundamentals_Annual
GROUP BY gvkey
HAVING obs >=34;

/*Now, take American nonfinancial firms with at least $500 million in assets in every year for all 34 years of the database (1990-2023). What is the ticker for the firm with the highest average ROA (net income divided by assets) during this time? */

SELECT
    gvkey,
    conm,
    tic,
    COUNT(at) AS obs,
    AVG(ni/at) AS roa
FROM Fundamentals_Annual
WHERE at >= 500 AND loc = 'USA' AND naicsh NOT LIKE '52%'
GROUP BY gvkey
HAVING obs >=34
ORDER BY roa DESC;