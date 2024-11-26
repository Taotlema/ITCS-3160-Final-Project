/*
ITCS-3169-Final-Project
November 19, 2024
Author(s): Aidan Weyandt
*/

-- create table
Create table Pacific_Rim_24(
    country Varchar(30) Primary Key,
    bal_24 int,
    imp_24 int,
    exp_24 int
);

INSERT INTO Pacific_Rim VALUES ('Australia', 14752, 11390, 26141);
INSERT INTO Pacific_Rim VALUES ('China', -217465, 322172, 104708);
INSERT INTO Pacific_Rim VALUES ('Hong Kong', 17597, 3756, 21353);
INSERT INTO Pacific_Rim VALUES ('Indonesia', -12849, 20346, 7497);
INSERT INTO Pacific_Rim VALUES ('Japan', -49828, 109668, 59839);
INSERT INTO Pacific_Rim VALUES ('Korea, South', -50366, 100237, 49871);
INSERT INTO Pacific_Rim VALUES ('Malaysia', -16709, 37708, 20999);
INSERT INTO Pacific_Rim VALUES ('Philippines', -3326, 10263, 6937);
INSERT INTO Pacific_Rim VALUES ('Singapore', 2471, 32989, 35460);
INSERT INTO Pacific_Rim VALUES ('Taiwan', -54534, 86192, 31658);
INSERT INTO Pacific_Rim VALUES ('Other Countires', -1045, 4641, 3595);

-- load records

select * from Pacific_Rim;

