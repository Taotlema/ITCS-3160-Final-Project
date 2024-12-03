/*
ITCS-3169-Final-Project
November 19, 2024
Author(s): Ayemhenre Isikhuemhen, Faith Madukwe, Aidan Weyandt
*/

-- create table
CREATE TABLE Balance_23 (
    rec_id INT PRIMARY KEY,
    country VARCHAR(20),
    SEP_23 INT,
    AUG_23 INT,
    YTD_23 INT,
    CONSTRAINT fk_country_balance FOREIGN KEY (country) REFERENCES Country_Index(country)
);

-- Balance insert statements for selected countries
INSERT INTO Balance_23  VALUES (7000, 'Austria', -929, -1127, -10350);
INSERT INTO Balance_23  VALUES (7001, 'Belgium', 1136, 940, 14472);
INSERT INTO Balance_23  VALUES (7002, 'Czech Republic', -203, -72, -2105);
INSERT INTO Balance_23  VALUES (7003, 'Finland', -416, -413, -3197);
INSERT INTO Balance_23  VALUES (7004, 'France', -533, -1803, -10394);
INSERT INTO Balance_23  VALUES (7005, 'Germany', -5809, -7075, -61390);
INSERT INTO Balance_23  VALUES (7006, 'Hungary', -474, -499, -5568);
INSERT INTO Balance_23  VALUES (7007, 'Ireland', -6208, -5748, -49812);
INSERT INTO Balance_23  VALUES (7008, 'Italy', -1874, -3994, -32818);
INSERT INTO Balance_23  VALUES (7009, 'Netherlands', 3215, 3252, 31843);
INSERT INTO Balance_23  VALUES (7010, 'Poland', -34, -206, -1670);
INSERT INTO Balance_23  VALUES (7011, 'Australia', 1639, 1584, 12886);
INSERT INTO Balance_23  VALUES (7012, 'China', -28444, -25941, -209758);
INSERT INTO Balance_23  VALUES (7013, 'Hong Kong', 3141, 1954, 18068);
INSERT INTO Balance_23  VALUES (7014, 'Indonesia', -1582, -1426, -13297);
INSERT INTO Balance_23  VALUES (7015, 'Japan', -6101, -5685, -52042);
INSERT INTO Balance_23  VALUES (7016, 'South Korea', -4206, -4328, -38701);
INSERT INTO Balance_23  VALUES (7017, 'Malaysia', -2087, -1890, -20888);
INSERT INTO Balance_23  VALUES (7018, 'Philippines', -364, -295, -3167);
INSERT INTO Balance_23  VALUES (7019, 'Singapore', 864, -651, -280);
INSERT INTO Balance_23  VALUES (7020, 'Taiwan', -5128, -4725, -34821);