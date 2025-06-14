/*1.Start with the full North American Stock Market 1990-2023 database and examine the Fundamentals_Annual table. Keep observations from fiscal years 2021 and 2022. Also, keep observations as long as they have at least $10 million in assets and sales from those years. Note that assets and sales are in millions of dollars and are denoted by at and sale, respectively.
Finally, keep the variables gvkey, fyear, conm, at, and sale.
What variable(s) would be the primary key for the results table?  */

/*Answer: gvkey and fyear*/

/*2.How many observations are in the results for the query that you ran in question 1? */

SELECT
    gvkey,
    fyear,
    conm,
    at,
    sale
FROM Fundamentals_Annual
WHERE at >= 10 AND sale >=10 AND fyear >= 2021 AND fyear <= 2022;

/*3.Now, start again with the full Fundamentals_Annual table. Keep observations from fiscal years 2022 and 2023 with $100 million or more in assets and sales in both of those years.
Keep the variables gvkey, fyear, tic, and ni.
How many observations are a result of this query? */

SELECT
    gvkey,
    fyear,
    tic,
    ni
FROM Fundamentals_Annual
WHERE at >= 100 AND sale >=100 AND fyear >= 2022 AND fyear <= 2023;

/* 4.Suppose you merged the results from questions 2 and 3 by the primary keys of those tables. How many observations are there in the merged results table? */

DROP VIEW IF EXISTS q2;
CREATE VIEW q2 AS
    SELECT
        gvkey,
        fyear,
        conm,
        at,
        sale
    FROM Fundamentals_Annual
    WHERE at >= 10 
        AND sale >=10 
        AND fyear >= 2021 AND fyear <= 2022;

DROP VIEW IF EXISTS q3;
CREATE VIEW q3 AS
    SELECT
        gvkey,
        fyear,
        tic,
        ni
    FROM Fundamentals_Annual
    WHERE at >= 100 
        AND sale >=100 
        AND fyear >= 2022 AND fyear <= 2023;

SELECT *
FROM q2
INNER JOIN q3
USING (gvkey, fyear);

/* 5. Start with the full Fundamentals_Annual table again. Keep observations with $50 million or more in assets and sales and non-missing values of employment and net income (emp and ni, respectively, in the table).
We want the results to be condensed so that you have only two variables (fields). The first is gvkey, and the second is ROA_avg, the average ROA for that gvkey across all of its observations in the results table.
What is the primary key of the results table? */

/* Answer: gvkey */


/*6.Continue with the previous question. How many observations from the table you generated above? */

SELECT 
    gvkey,
    100*AVG(ni/at) AS roa_avg
FROM Fundamentals_Annual
WHERE 
    at >= 50 
    AND sale >= 50 
    AND emp IS NOT NULL 
    AND ni IS NOT NULL
GROUP BY gvkey;

/* 7. Now, start with the full Fundamentals_Annual table again. Keep observations with non-missing values of employment (emp). For each firm, calculate a per-firm employment average over the entire sample period, called emp_avg.
How many observations are there in this query?*/

SELECT
    gvkey,
    AVG(emp) AS emp_avg
FROM Fundamentals_Annual
WHERE emp IS NOT NULL
GROUP BY gvkey;

/* 8. Finally, merge the results from the ROA average and employment average tables (from questions 5 and 7, respectively) you generated using an INNER JOIN. 
How many observations are there in the merged results? */

SELECT * 
FROM q5
INNER JOIN q7
USING (gvkey);