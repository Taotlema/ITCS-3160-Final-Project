/*
ITCS-3169-Final-Project
November 19, 2024
Author(s): Ayemhenre Isikhuemhen, Nathalie Brown 
*/

-- create table

CREATE TABLE EXPORTS_23 (
    rec_id INT PRIMARY KEY,
    country VARCHAR(20),
    SEP_23 INT,
    AUG_23 INT,
    YtD_23 INT,
    CONSTRAINT fk_country_export FOREIGN KEY (country) REFERENCES Country_Index(country));



-- load records

INSERT INTO EXPORTS_23 values(8000, 'Austria', 383, 419, 4211);
INSERT INTO EXPORTS_23 values(8001, 'Belgium', 2808, 2712, 30727);
INSERT INTO EXPORTS_23 values(8002, 'Czech Republic', 382, 534, 3447);
INSERT INTO EXPORTS_23 values(8003, 'Finland',192, 233, 2339);
INSERT INTO EXPORTS_23 values(8004, 'France', 3561, 3516, 32180);
INSERT INTO EXPORTS_23 values(8005, 'Germany', 6743, 6799, 58074);
INSERT INTO EXPORTS_23 values(8006, 'Hungary', 288, 267, 2255);
INSERT INTO EXPORTS_23 values(8007, 'Ireland', 1123, 1381, 12531);
INSERT INTO EXPORTS_23 values(8008, 'Italy', 3240, 2595, 21349);
INSERT INTO EXPORTS_23 values(8009, 'Netherlands', 6262, 6825, 59642);
INSERT INTO EXPORTS_23 values(8010, 'Poland', 942, 934, 8162);
INSERT INTO EXPORTS_23 values(8011, 'Australia', 2868, 2863, 24971); 
INSERT INTO EXPORTS_23 values(8012, 'China', 11796, 10765, 106000);
INSERT INTO EXPORTS_23 values(8013, 'Hong Kong', 3561, 2295, 21151);
INSERT INTO EXPORTS_23 values(8014, 'Indonesia', 769, 873, 7269);
INSERT INTO EXPORTS_23 values(8015, 'Japan', 6627, 6510, 56642);
INSERT INTO EXPORTS_23 values(8016, 'South Korea', 5918, 5493, 47439);
INSERT INTO EXPORTS_23 values(8017, 'Malaysia', 1736, 1705, 13577);
INSERT INTO EXPORTS_23 values(8018, 'Philippines', 762, 793, 6721);
INSERT INTO EXPORTS_23 values(8019, 'Singapore', 4108, 4101, 31452);
INSERT INTO EXPORTS_23 values(8020, 'Taiwan', 2874, 3589, 29693);

