/*
ITCS-3169-Final-Project
November 19, 2024
Author(s): Aidan Weyandt
*/

-- create table
Create Table Pacific_Rim_24(
    rec_id Int PRIMARY KEY,
    country VARCHAR(20),
    Bal_24 Int,
    Exp_24 Int,
    Imp_24 Int,
    CONSTRAINT fk_country_pacific FOREIGN KEY (country) REFERENCES Country_Index(country)
);

-- load table
INSERT INTO Pacific_Rim_24 VALUES (200, 'Australia', 14752, 11390, 26141);
INSERT INTO Pacific_Rim_24 VALUES (201, 'China', -217465, 322172, 104708);
INSERT INTO Pacific_Rim_24 VALUES (202, 'Hong Kong', 17597, 3756, 21353);
INSERT INTO Pacific_Rim_24 VALUES (203, 'Indonesia', -12849, 20346, 7497);
INSERT INTO Pacific_Rim_24 VALUES (204, 'Japan', -49828, 109668, 59839);
INSERT INTO Pacific_Rim_24 VALUES (205, 'Korea, South', -50366, 100237, 49871);
INSERT INTO Pacific_Rim_24 VALUES (206, 'Malaysia', -16709, 37708, 20999);
INSERT INTO Pacific_Rim_24 VALUES (207, 'Philippines', -3326, 10263, 6937);
INSERT INTO Pacific_Rim_24 VALUES (208, 'Singapore', 2471, 32989, 35460);
INSERT INTO Pacific_Rim_24 VALUES (209, 'Taiwan', -54534, 86192, 31658);
INSERT INTO Pacific_Rim_24 VALUES (210, 'Other Countires', -1045, 4641, 3595);

/*
select * from Pacific_Rim_24;
*/
