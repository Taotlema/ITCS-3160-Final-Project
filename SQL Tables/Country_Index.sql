/*
ITCS-3169-Final-Project
November 19, 2024
Author(s): Ayemhenre Isikhuemhen
*/

-- create table
CREATE TABLE Country_Index (
    rec_ID INT PRIMARY KEY,
    country VARCHAR(20) UNIQUE
);

-- load table
INSERT INTO Country_Index  VALUES (0000, 'Austria');
INSERT INTO Country_Index  VALUES (0001, 'Belgium');
INSERT INTO Country_Index  VALUES (0002, 'Czech Republic');
INSERT INTO Country_Index  VALUES (0003, 'Finland');
INSERT INTO Country_Index  VALUES (0004, 'France');
INSERT INTO Country_Index  VALUES (0005, 'Germany');
INSERT INTO Country_Index  VALUES (0006, 'Hungary');
INSERT INTO Country_Index  VALUES (0007, 'Ireland');
INSERT INTO Country_Index  VALUES (0008, 'Italy');
INSERT INTO Country_Index  VALUES (0009, 'Netherlands');
INSERT INTO Country_Index  VALUES (0010, 'Poland');
INSERT INTO Country_Index  VALUES (0011, 'Austrailia');
INSERT INTO Country_Index  VALUES (0012, 'China');
INSERT INTO Country_Index  VALUES (0013, 'Hong Kong');
INSERT INTO Country_Index  VALUES (0014, 'Indonesia');
INSERT INTO Country_Index  VALUES (0015, 'Japan');
INSERT INTO Country_Index  VALUES (0016, 'Korea, South');
INSERT INTO Country_Index  VALUES (0017, 'Malaysia');
INSERT INTO Country_Index  VALUES (0018, 'Philiphines');
INSERT INTO Country_Index  VALUES (0019, 'Singapore');
INSERT INTO Country_Index  VALUES (0020, 'Taiwan');