/*
Query 1:
Author: Ayemhenre Isikhuemhen
Descirption: Output the top 10 highest exports of the U.S by Year to Date metric.
*/
Select* From Exports
Order by YTD_23 desc;

/*
Query (Did it for fun):
Author: Ayemhenre Isikhuemhen
Descirption: List Countires whose U.S. exports did not decrease between August and September.
*/
Select country, SEP_23, AUG_23
FROM Exports
Where SEP_23 > AUG_23;

/*
Query (Did it for fun):
Author: Ayemhenre Isikhuemhen
Descirption: List every country from Europe from Balance Table
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
Descirption: Output the top 10 lowest exports of the U.S, while also showing the average export value.
*/


/*
Query 3:
Author: Faith Madukwe
Descirption: Output the top 10 lowest imports of the U.S, while also showing the median import value.
*/

/*
Query 4:
Author: Padhmasri Baskaran
Descirption: Output the top 10 hightest imports of the U.S, while also showing the avarage import value.
*/

/*
Query 5:
Author: Nathalie Brown
Descirption: Output the top 10 highest and lowest balances
*/


/*
Join Query 1:
Author: Padhmasri Baskaran
Descirption:
*/

/*
Join Query 2:
Author: Nathalie Brown
Descirption: Compare 2023 and 2024 balances of one particular country.
*/

/*
Join Query 3:
Author: Aidan Weyandt
Descirption:
*/