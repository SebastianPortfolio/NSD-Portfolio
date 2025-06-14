/* You are interested in quantifying innovation in leading US firms (loc = 'USA'), and to do that, you want to aggregate R&D spending into a "stock" of R&D.
To simplify things, assume a 15% rate of depreciation, and that after 7 years, the value of R&D spending is zero to the stock. Also, assume that if a firm does not report R&D (ie the value of xrd is NULL) then you assume it is equal to 0 in that year.
Rank the top five American firms in 2023 for R&D stocks from highest to lowest.
What are their stock tickers? */

DROP VIEW IF EXISTS rnd_lag;
CREATE VIEW rnd_lag AS 

SELECT gvkey, 
        conm, 
        fyear, 
        tic,
        xrd,
        ppent,
       LAG(xrd, 1) OVER(PARTITION BY gvkey ORDER BY gvkey, fyear) as xrd_lag1,
       LAG(xrd, 2) OVER(PARTITION BY gvkey ORDER BY gvkey, fyear) as xrd_lag2,
       LAG(xrd, 3) OVER(PARTITION BY gvkey ORDER BY gvkey, fyear) as xrd_lag3,
       LAG(xrd, 4) OVER(PARTITION BY gvkey ORDER BY gvkey, fyear) as xrd_lag4,
       LAG(xrd, 5) OVER(PARTITION BY gvkey ORDER BY gvkey, fyear) as xrd_lag5,
       LAG(xrd, 6) OVER(PARTITION BY gvkey ORDER BY gvkey, fyear) as xrd_lag6
FROM Fundamentals_Annual
WHERE loc = 'USA';

 

DROP VIEW IF EXISTS rnd_stock;
CREATE VIEW rnd_stock AS
SELECT
    gvkey,
    fyear,
    conm,
    tic,
    ppent,
    IFNULL(xrd,0) + 
        + 0.85*IFNULL(xrd_lag1,0)
        + POWER(0.85,2)*IFNULL(xrd_lag2,0) 
        + POWER(0.85,3)*IFNULL(xrd_lag3,0) 
        + POWER(0.85,4)*IFNULL(xrd_lag4,0)
        + POWER(0.85,5)*IFNULL(xrd_lag5,0) 
        + POWER(0.85,6)*IFNULL(xrd_lag6,0) 
        AS xrd_stock
FROM rnd_lag
ORDER BY fyear DESC, xrd_stock DESC
LIMIT 100;