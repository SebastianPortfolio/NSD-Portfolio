/* Start with the Execucomp table, and keep all observations from 2023 with ceoann equal to 'CEO', execdir equal to 1, and nonmissing values for age, tdc1, and naics.
How many observations fulfill these criteria?*/

DROP VIEW IF EXISTS q1;
CREATE VIEW q1 AS
SELECT 
    execid,
    coname,
    exec_fullname,
    naics,
    naicsdesc,
    tdc1,
    fyear,
    Age,
    CASE 
        WHEN naics LIKE '51%' THEN 'Information'
        WHEN naics LIKE '52%' THEN 'Finance'
        ELSE 'OTHER' -- For all other industries
    END AS Cat_naics
FROM Execucomp
WHERE fyear = 2023
    AND age IS NOT NULL
    AND tdc1 IS NOT NULL
    AND naics IS NOT NULL
    AND ceoann = 'CEO'
    AND execdir = 1;
	
/* Using the Fundamentals_Annual table, you examine 2023 firms with loc equal to 'USA' and nonmissing values of ein.
You see it is text, but you are interested in doing some numerical calculations.
Convert ein into a number by getting rid of the dash in it, and if it has a leading 0, it is much smaller than the others.
What is the average value of ein after this procedure?*/

DROP VIEW IF EXISTS q6;
CREATE VIEW q6 AS
SELECT 
    gvkey,
    fyear,
    conm,
    ein,
    CAST(SUBSTR(ein,1,2)||SUBSTR(ein,4,7) AS INTEGER) AS ein_num
FROM Fundamentals_Annual
WHERE fyear = 2023
    AND loc = 'USA'
    AND ein IS NOT NULL;

SELECT
    ROUND(AVG(ein_num),0)
FROM q6;