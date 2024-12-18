/*
ITCS-3169-Final-Project
November 19, 2024
Author(s): Ayemhenre Isikhuemhen
*/

-- create table
Create Table Europe_24(
    rec_id Int PRIMARY KEY,
    country VARCHAR(20),
    Bal_24  Int,
    Exp_24 Int,
    Imp_24 Int,
    CONSTRAINT fk_country_europe FOREIGN KEY (country) REFERENCES Country_Index(country)
);

-- load records
Insert Into Europe_24 values (100, 'Austria', -9620, 3366, 12986);
Insert Into Europe_24 values (101, 'Belgium', 5232, 26528, 21296);
Insert Into Europe_24 values (102, 'Czech Republic', -2817, 3270, 6087);
Insert Into Europe_24 values (103, 'Finland', -3803, 2118, 5921);
Insert Into Europe_24 values (104, 'France', -12418, 31960, 44379);
Insert Into Europe_24 values (105, 'Germany', -63880, 57199, 121079);
Insert Into Europe_24 values (106, 'Hungary', -6520, 2452, 8972);
Insert Into Europe_24 values (107, 'Ireland', -62174, 12665, 74840);
Insert Into Europe_24 values (108, 'Italy', -32893, 24128, 57021);
Insert Into Europe_24 values (109, 'Netherlands', 50581, 66511, 25931);
Insert Into Europe_24 values (110, 'Poland', -1286, 8828, 10114);


/* NOT TAKEN BY ORACLE COMPILER
Insert Into Europe
values
('Austria', -9620, 3366, 12986),
('Belgium', 5232, 26528, 21296),
('Czech Republic', -2817, 3270, 6087),
('Finland', -3803, 2118, 5921),
('France', -12418, 31960, 44379),
('Germany', -63880, 57199, 121079),
('Hungary', -6520, 2452, 8972),
('Ireland', -62174, 12665, 74840),
('Italy', -32893, 24128, 57021),
('Netherlands', 50581, 66511, 25931),
('Poland', -1286, 8828, 10114);
*/

/* TESTING
Select*
From Europe
*/
