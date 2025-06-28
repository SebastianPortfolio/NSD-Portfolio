/* Start with all US nonfinancial firms from 2023 as your sample, and only keep observations with at least $1 billion in assets, non-missing employment, sales, net income, and total q (q_tot) based on Peters and Taylor's total q.
We will define a modified ROA as net income divided by total assets (at) plus intangible assets that are not on the balance sheet (K_int_offBS)
Sort the sample into deciles by modified ROA (ni/(at + K_int_offBS)) for the top 10%, ROA for the next 10%, etc., all the way down to ROA for the bottom 10%.
What is the average modified ROA for the top 10% of firms by modified ROA? Write your answer as a percentage, round to the nearest tenth of a percent. */

DROP VIEW IF EXISTS q1;
CREATE VIEW q1 AS
SELECT 
    gvkey,
    fyear,
    conm,
    q_tot,
    100*ni/(at + K_int_offBS) AS mod_roa,
    NTILE(10) OVER(ORDER BY ni/(at + K_int_offBS) DESC) AS roa_decile,
    NTILE(10) OVER(ORDER BY q_tot DESC) AS q_decile
FROM Fundamentals_Annual
LEFT JOIN Total_q
USING (gvkey, fyear)
WHERE loc = 'USA'
    AND naicsh NOT LIKE '52%'
    AND fyear = 2023
    AND at >= 1000
    AND emp IS NOT NULL
    AND sale IS NOT NULL
    AND ni IS NOT NULL
    AND q_tot IS NOT NULL;

SELECT
    AVG(mod_roa)
FROM q1
WHERE roa_decile = 1;

/* Modified ROA is: (ni/(at + K_int_offBS))
For the same sample as above, what is the average modified ROA for the bottom 10% of firms (by modified ROA)? */

SELECT
    AVG(mod_roa)
FROM q1
WHERE roa_decile = 10;

/* In parallel, divide up this same sample of firms (as you calculated in question 1) from 2023 by total q (q_tot) based on Peters and Taylor's total q. Rank firms in deciles, from the highest 10% to the lowest 10% in terms of q_tot.
What is the average modified ROA for firms in the top 10% of q_tot?*/

SELECT
    AVG(mod_roa)
FROM q1
WHERE q_decile = 1;

/* What is the average modified ROA for firms in the bottom 10% of q_tot?*/

SELECT
    AVG(mod_roa)
FROM q1
WHERE q_decile = 10;


/* Now, you want to do something truly epic. You want to divide up the market from 2014 into deciles by q_tot and follow those firms over time. How will q_tot predict how they did later?
So you now start with all US nonfinancial firms from 2014 as your sample, and only keep observations from that year with at least $1 billion in assets, non-missing employment, sales, net income, and total q (q_tot) based on Peters and Taylor's total q.
Divide the 2014 sample into deciles, from the top 10% of q_tot (decile number 1) down to the bottom 10% of q_tot (decile number 10).
How many observations are there in this 2014 sample?*/

DROP VIEW IF EXISTS q5;
CREATE VIEW q5 AS
SELECT 
    gvkey,
    NTILE(10) OVER(ORDER BY q_tot DESC) AS q_decile_2014
FROM Fundamentals_Annual
LEFT JOIN Total_q
USING (gvkey, fyear)
WHERE loc = 'USA'
    AND naicsh NOT LIKE '52%'
    AND fyear = 2014
    AND at >= 1000
    AND emp IS NOT NULL
    AND sale IS NOT NULL
    AND ni IS NOT NULL
    AND q_tot IS NOT NULL;

/* How many firms from that 2014 sample above exist in the 2023 Fundamentals_Annual table?*/

DROP VIEW IF EXISTS q5_part2;
CREATE VIEW q5_part2 AS
SELECT
    gvkey,
    fyear,
    conm,
    ni/(at + K_int_offBS) AS mod_roa
FROM Fundamentals_Annual
LEFT JOIN Total_q
USING (gvkey, fyear)
WHERE fyear = 2023 
    AND gvkey IN 
            (SELECT gvkey
             FROM q5);


/* Lastly, which of those original ten groups from 2014 were among the top performers in terms of average modified ROA in 2023? Write the decile numbers from the three winning groups in the boxes below.
2014 cohort with the highest average modified ROA in 2023?
2014 cohort with the second-highest average modified ROA in 2023?
2014 cohort with the third-highest average modified ROA in 2023?*/

SELECT
    q_decile_2014,
    AVG(mod_roa) AS mod_roa_avg
FROM q5_part2
LEFT JOIN q5
USING (gvkey)
GROUP BY q_decile_2014
ORDER BY mod_roa_avg DESC;
