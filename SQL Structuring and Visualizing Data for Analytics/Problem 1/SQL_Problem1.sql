/*What was Amazon's average return on assets (net income divided by total assets) from 2014 to 2023? 
Amazon's stock ticker is AMZN. Round your answer to one decimal place. 
*/

SELECT 
    conm,
    100*avg(ni/at) as avg_ROA_pct
FROM Fundamentals_Annual
WHERE tic = 'AMZN' AND fyear >= 2014 AND fyear <= 2023;

/* How many employees did Amazon have in 1996? In 2023? */

SELECT
    conm,
    fyear,
    emp
FROM Fundamentals_Annual
WHERE tic = 'AMZN';

/*What was the average ROA (net income/assets) for nonfinancial, US-headquartered (loc = 'USA') firms in 2023? */

SELECT
   100*avg(ni/at) as avg_ROA_pct
FROM Fundamentals_Annual
WHERE loc = "USA" AND naicsh NOT LIKE '52%' AND fyear = 2023;


/*What was the average ROA (net income/assets) for nonfinancial, US-headquartered (loc = 'USA') firms with at least $50 million in assets in 2023? */

SELECT
    100*avg(ni/at) as avg_ROA_pct
FROM Fundamentals_Annual
WHERE loc = "USA" AND naicsh NOT LIKE '52%' AND at >= 50 AND fyear = 2023;

/*What was the average ROA (net income/assets) for nonfinancial, US-headquartered (loc = 'USA') firms with at least $1 billion in assets in 2023?  */

SELECT
    100*avg(ni/at) as avg_ROA_pct
FROM Fundamentals_Annual
WHERE loc = "USA" AND naicsh NOT LIKE '52%' AND at >= 1000 AND fyear = 2023;