/* For fiscal year 2023, screen for US-based nonfinancial firms with at least $1 billion in assets, nonmissing net income, nonmissing employment, a nonmissing measure of Total q (q_tot), and a nonmissing value of intangible assets not on the balance sheet (K_int_offBS). Also, since you are interested in measuring firm-specific profits, you continue to drop any observations with a naicsh code of fewer than six digits and any industries with fewer than three firms in that industry in 2023.
To make sure we are on the same page, how many observations are there in this 2023 sample of firms at this point?*/

DROP VIEW IF EXISTS q1_part1;
CREATE VIEW q1_part1 AS
SELECT
    gvkey,
    fyear,
    conm,
    ni,
    at,
    emp,
    q_tot,
    K_int_offBS,
    naicsh,
    COUNT(gvkey) OVER(PARTITION by fyear, naicsh) AS ind_size
FROM Fundamentals_Annual
LEFT JOIN Total_q
USING (gvkey, fyear)
WHERE
    fyear = 2023
    AND loc = 'USA'
    AND naicsh NOT LIKE '52%'
    AND at >= 1000
    AND ni IS NOT NULL
    AND emp IS NOT NULL
    AND q_tot IS NOT NULL
    AND K_int_offBS IS NOT NULL
    AND naicsh >= 100000;

DROP VIEW IF EXISTS q1;
CREATE VIEW q1 AS
SELECT *,
    ni/(at + K_int_offBS) - AVG(ni/(at + K_int_offBS)) OVER(PARTITION BY fyear, naicsh) AS fsp
FROM q1_part1
WHERE ind_size >= 3;

/* How many of the firms from question 1 appeared at any time, and in any way, shape or form, in the Execucomp table?*/

SELECT gvkey
FROM q1
WHERE gvkey IN 
    (SELECT gvkey
     FROM Execucomp);


/* For now, disregard what you found in questions 1 and 2.
By looking at the Execucomp table only, you want to know how many firms had the same person as CEO and Executive Director for all five years from 2019 to 2023.*/

DROP VIEW IF EXISTS q3;
CREATE VIEW q3 AS
SELECT 
    gvkey,
    co_per_rol,
    coname,
    exec_fullname,
    COUNT(*) AS CEO_year
FROM Execucomp
WHERE fyear BETWEEN 2019 AND 2023
    AND ceoann = 'CEO'
    AND execdir = 1
GROUP BY gvkey, co_per_rol, coname, exec_fullname
HAVING CEO_year = 5
ORDER BY coname;

/* What is the average modified fsp (firm-specific profits) for the firms in question 1, which had the same individual as CEO and Executive Director for all five years from 2019-2023 (i.e., based on what you found in Question 3)? */

SELECT 
    100*AVG(fsp) AS fsp_avg
FROM q1
WHERE gvkey IN 
    (SELECT gvkey
     FROM q3);