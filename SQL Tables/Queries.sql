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
Description: Compare End of Year balance between 23 AND 24
*/


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
Description: Output the top 10 highest and lowest balances
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
Description:
*/