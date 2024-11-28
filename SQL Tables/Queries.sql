/*
Query 1:
Author: Ayemhenre Isikhuemhen
Description: Output the top 10 highest export destinations of the U.S by Year to Date metric.
*/
Select* From Exports
Order by YTD_23 desc;

/*
Query (Did it for fun):
Author: Ayemhenre Isikhuemhen
Description: Output the top 10 lowest export destinations of the U.S by Year to Date metric.
*/
Select* From Exports
Order by YTD_23 Asc;

/*
Query (Did it for fun):
Author: Ayemhenre Isikhuemhen
Description: List Countires whose U.S. exports did not decrease between August and September.
*/
Select country, SEP_23, AUG_23
FROM Exports
Where SEP_23 > AUG_23;

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

/*
Query 4:
Author: Padhmasri Baskaran
Description: Output the top 10 hightest imports of the U.S, while also showing the avarage import value.
*/

/*
Query 5:
Author: Nathalie Brown
Description: Output the descending order
*/
select * from Exports order by YTD_23 desc;


/*
Join Query 1:
Author: Padhmasri Baskaran
Description:
*/

/*
Join Query 2:
Author: Nathalie Brown
Descirption: Compare 2023 and 2024 balances of one particular country.
*/
SELECT
    e.Country AS Europe_Country,
    e.Bal_24 AS Europe_Balance,
    e.Exp_24 AS Europe_Export,
    e.Imp_24 AS Europe_Import,
    p.country AS Pacific_Rim_Country,
    p.balance_24 AS Pacific_Rim_Balance,
    p.export_24 AS Pacific_Rim_Export,
    p.import_24 AS Pacific_Rim_Import
FROM
    Europe e
JOIN
    Pacific_Rim p
ON
    e.Country = 'Germany' AND p.country = 'China';

/*
Join Query 3:
Author: Aidan Weyandt
Description: Compare highest and lowest balance of all countires located within Pacific Rimbetween 2023 and 2024
*/

Select 
    (SELECT MAX(BAL_23) FROM Pacific_Rim_23) AS Min_Balance_23, 
    (SELECT MIN(BAL_23) FROM Pacific_Rim_23) AS Max_Balance_23, 
    (Select MAX(BAL_24) FROM Pacific_Rim_24) AS Min_Balance_24,
    (SELECT MIN(BAL_24) FROM Pacific_Rim_24) AS Max_Balance_24

    CASE
     WHEN (SELECT MAX(BAL_24) FROM Pacific_Rim_24) < (SELECT MAX(BAL_23) FROM Pacific_Rim_23) THEN 'Pacific_Rim_2024 has a higher Balance'
     ELSE 'Pacific_Rim_2023 has a higher Balance'
     End as Max_comparison

    CASE
     WHEN (SELECT MIN(BAL_24) FROM Pacific_Rim_24) < (SELECT MIN(BAL_23) FROM Pacific_Rim_23) Then 'Pacific_Rim_2024 has a lower Balance'
     ELSE 'Pacific_Rim_2023 has a lower Balance'
     END as Min_comparison;
     


