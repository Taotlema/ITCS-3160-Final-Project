/*
Query 1:
Author: Ayemhenre Isikhuemhen
Description: Output the top 10 highest export destinations of the U.S by Year to Date metric.
*/
Select * From Exports_23
Order by YTD_23 desc;

/*
Query (Did it for fun):
Author: Ayemhenre Isikhuemhen
Description: Output the top 10 lowest export destinations of the U.S by Year to Date metric.
*/
Select* From Exports_23
Order by YTD_23 Asc;

/*
Query (Did it for fun):
Author: Ayemhenre Isikhuemhen
Description: List Countires whose U.S. exports did not decrease between August and September.
*/
Select country, SEP_23, AUG_23
FROM Exports_23
Where SEP_23 > AUG_23;
cx
/*
Query (Did it for fun):
Author: Ayemhenre Isikhuemhen
Description: List every country from Europe from Balance Table
*/
Create Table Trade_Origin AS
Select Country, 'Europe' AS Region
From Europe
Where Country IN (Select Country From Balance)
Union all
Select Country, 'Pacific_Rim' AS Region
From Pacific_Rim
Where Country in (Select Country From Balance);

Select * From Trade_Origin;


/*
Query 2:
Author: Aidan Weyandt
Description: Compare Highest and Lowest balance in 2024 in Pacific Rim, then display the two in descending order
*/

SELECT * 
FROM Pacific_Rim_24 
WHERE bal_24 = (SELECT MAX(bal_24) FROM Pacific_Rim_24)
   OR bal_24 = (SELECT MIN(bal_24) FROM Pacific_Rim_24)
ORDER BY bal_24 DESC;



/*
Query 3:
Author: Faith Madukwe
Description: Output the top 10 lowest imports of the U.S, while also showing the median import value.
*/
SELECT im.Country, im.YTD_23 AS Import_Value, med.Median_Import FROM IMPORTS_23 im,
    (SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY YTD_23) AS Median_Import FROM IMPORTS_23) med
ORDER BY 
    im.YTD_23 ASC
FETCH FIRST 10 ROWS ONLY;

/* 'PERCENTILE_CONT(0.5)' to calculate the median of YTD_23 */

/*
Query 4:
Author: Padhmasri Baskaran
Description: Output the top 10 hightest imports of the U.S, while also showing the avarage import value.
*/
select im.country, im.ytd_23, ag.avg_23
from IMPORTS_23 im,
    (select round(avg(YTD_23), 2) as avg_23 from IMPORTS_23) ag
order by im.YTD_23 desc
FETCH first 10 rows only;

/*
Query 5:
Author: Nathalie Brown
Description: Output the descending order
*/
select * from Exports_23 order by YTD_23 desc;


/*
Join Query 1:
Author: Padhmasri Baskaran
Description: Output the countries to which U.S exports atleast as much as it imports
*/
SELECT ex.country, ex.YTD_23 as "YTD Export 23", im.YTD_23 as "YTD Import 23"
FROM Exports_23 ex
INNER JOIN Imports_23 im
ON ex.country = im.country and ex.YTD_23 >= im.YTD_23;

/*
Join Query 2:
Author: Nathalie Brown
Description: Compare balances, exports, and imports of 2 selected countries.
*/
SELECT 
    e.country AS Europe_Country, 
    e.Bal_24 AS Europe_Balance, 
    e.Exp_24 AS Europe_Export, 
    e.Imp_24 AS Europe_Import, 
    p.country AS Pacific_Rim_Country, 
    p.Bal_24 AS Pacific_Rim_Balance, 
    p.Exp_24 AS Pacific_Rim_Export, 
    p.Imp_24 AS Pacific_Rim_Import 
    FROM Europe_24 e 
    JOIN Pacific_Rim_24 p 
    ON e.country = 'Hungary' AND p.country = 'China';

/*
Join Query 3:
Author: Aidan Weyandt
Description: Compare highest and lowest balance of all countries within selected list using two seperate tables
*/

SELECT 
    -- Max and Min Balances for 2023
    (SELECT country 
     FROM Balance_23 
     WHERE YtD_23 = (SELECT MAX(YtD_23) FROM Balance_23)) AS Country_Max_Balance_23,
    (SELECT MAX(YtD_23) FROM Balance_23) AS Max_Balance_23,
    
    (SELECT country 
     FROM Balance_23 
     WHERE YtD_23 = (SELECT MIN(YtD_23) FROM Balance_23)) AS Country_Min_Balance_23,
    (SELECT MIN(YtD_23) FROM Balance_23) AS Min_Balance_23,
    
    -- Max and Min Balances for 2024
    (SELECT country 
     FROM Pacific_Rim_24 
     WHERE bal_24 = (SELECT MAX(bal_24) FROM Pacific_Rim_24)) AS Country_Max_Balance_24,
    (SELECT MAX(bal_24) FROM Pacific_Rim_24) AS Max_Balance_24,
    
    (SELECT country 
     FROM Pacific_Rim_24 
     WHERE bal_24 = (SELECT MIN(bal_24) FROM Pacific_Rim_24)) AS Country_Min_Balance_24,
    (SELECT MIN(bal_24) FROM Pacific_Rim_24) AS Min_Balance_24,
    
    -- Comparison Statements 
    CASE
        WHEN (SELECT MAX(bal_24) FROM Pacific_Rim_24) > 
             (SELECT MAX(YtD_23) FROM Balance_23) 
        THEN 'Pacific_Rim_2024 has a higher Balance'
        ELSE 'Balance_23 has a higher Balance'
    END AS Max_Comparison,
    
    CASE
        WHEN (SELECT MIN(bal_24) FROM Pacific_Rim_24) < 
             (SELECT MIN(YtD_23) FROM Balance_23) 
        THEN 'Pacific_Rim_2024 has a lower Balance'
        ELSE 'Balance_23 has a lower Balance'
    END AS Min_Comparison
FROM DUAL;

     


