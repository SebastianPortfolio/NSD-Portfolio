/* You are interested in exploring the relationship between CEO compensation, Total q, and performance.
Let's start with 2023, the latest available year with all of them.
How many US-based nonfinancial firms in 2023 had at least $1 billion in assets, and all of the following are nonmissing: net income, employment, Total q (q_tot), intangible assets not on the balance sheet (K_int_offBS), as well as total CEO annual compensation?*/

DROP VIEW IF EXISTS q1;
CREATE VIEW q1 AS
SELECT
    gvkey,
    fyear,
    conm,
    at,
    ni,
    emp,
    naicsh,
    EXEC_FULLNAME,
    CEOANN,
    TDC1,
    K_int_offBS,
    q_tot
FROM Fundamentals_Annual
LEFT JOIN Execucomp
USING (gvkey, fyear)
LEFT JOIN Total_q
USING (gvkey,fyear)
WHERE
    at >= 1000
    AND ni IS NOT NULL
    AND emp IS NOT NULL
    AND fyear = 2023
    AND loc = 'USA'
    AND naicsh NOT LIKE '52%'
    AND TDC1 IS NOT NULL
    AND CEOANN = 'CEO'
    AND q_tot IS NOT NULL
    AND K_int_offBS IS NOT NULL;

/* What is the average modified ROA (ni/(at + K_int_offBS)) for this sample from question 1? */

SELECT
    AVG(ni/(at + K_int_offBS)) AS roa_avg
FROM q1;

/* Now, you want to examine the relationship between CEO pay and performance in 2023.
Sort the sample you have created from question 1 into quartiles, with top quarter of total CEO pay (using variable tdc1 for total compensation), and so forth to the bottom quarter of CEO compensation. (Note: Make sure you are using CEO pay, rather than using other executives such as the CFO).
What was the average modified ROA (ni/(at + K_int_offBS)) for the firms in the highest quarter of CEO compensation?
What was the average modified ROA (ni/(at + K_int_offBS)) for the firms in the lowest quarter of CEO compensation?*/

DROP VIEW IF EXISTS q3;
CREATE VIEW q3 AS 
SELECT
    gvkey,
    fyear,
    conm,
    TDC1,
    EXEC_FULLNAME,
    ni,
    at,
    K_int_offBS,
    q_tot,
    naicsh,
    NTILE(4) OVER(PARTITION BY fyear ORDER BY TDC1 DESC) AS pay_quartile
FROM q1;

--Question 3, part 2 - ROA by quartile
--Ranges from 5.2% to 3.3%
SELECT
    pay_quartile,
    AVG(ni/(at + K_int_offBS)) AS roa_avg
FROM q3
GROUP BY pay_quartile;


/* Now, we turn to Total q. What is the average total q (q_tot) for this 2023 sample of firms calculated in question 1?*/

SELECT
    AVG(q_tot) AS q_avg
FROM q1;