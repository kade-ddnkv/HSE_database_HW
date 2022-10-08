-- city
INSERT INTO trainsplan.city (name, region) VALUES ('Huntsville', 'Alabama');
INSERT INTO trainsplan.city (name, region) VALUES ('Frederiksberg', 'Region Hovedstaden');
INSERT INTO trainsplan.city (name, region) VALUES ('Salvador', 'Castelo Branco');
INSERT INTO trainsplan.city (name, region) VALUES ('Teixoso', 'Castelo Branco');
INSERT INTO trainsplan.city (name, region) VALUES ('Quimper', 'Bretagne');
INSERT INTO trainsplan.city (name, region) VALUES ('Moscow', 'Moscow');
INSERT INTO trainsplan.city (name, region) VALUES ('Saint Petersburg', 'Saint Petersburg');
INSERT INTO trainsplan.city (name, region) VALUES ('Tver', 'Castelo Branco');
INSERT INTO trainsplan.city (name, region) VALUES ('Tver', 'Tver');
INSERT INTO trainsplan.city (name, region) VALUES ('Moscow', 'Alabama');

-- station
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Waubesa', 2, 'Teixoso', 'Castelo Branco');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Commercial', 10, 'Moscow', 'Moscow');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Kipling', 2, 'Salvador', 'Castelo Branco');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Hudson', 6, 'Tver', 'Tver');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Badeau', 7, 'Moscow', 'Moscow');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Anderson', 10, 'Teixoso', 'Castelo Branco');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Randy', 7, 'Tver', 'Castelo Branco');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('East', 8, 'Moscow', 'Alabama');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Green Ridge', 1, 'Teixoso', 'Castelo Branco');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Paget', 9, 'Teixoso', 'Castelo Branco');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Prairie Rose', 6, 'Teixoso', 'Castelo Branco');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Melvin', 10, 'Saint Petersburg', 'Saint Petersburg');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Susan', 1, 'Saint Petersburg', 'Saint Petersburg');
INSERT INTO trainsplan.station (name, numberoftracks, cityname, region) VALUES ('Utah', 1, 'Salvador', 'Castelo Branco');

-- Пути поездов с промежуточными остановками:

-- Для задания а: Москва - Тверь
-- 1) 23: 'Commercial'-'Hudson'
-- 2) 24: 'Commercial'-'Randy'
-- 3) 25: 'Commercial'-'Randy'-'Hudson'
-- 4) 26: 'Commercial'-'Randy'-'Prairie Rose'-'Hudson'
-- 5) 27: 'Hudson'-'Commercial'
-- 6) 28: 'Badeau'-'Commercial'
-- 7) 29: 'East'-'Hudson'

-- Для задания б: Москва - Санкт-Петербург
-- 8) 51: 'Commercial'-'Melvin'
-- 9) 52: 'Commercial'-'Utah'-'Melvin'
-- 10) 53: 'Badeau'-'Utah'-'Prairie Rose'-'Susan'
-- 11) 54: 'Melvin'-'Commercial'
-- 12) 55: 'Susan'-'Prairie Rose'-'Utah'-'Badeau'
-- 13) 56: 'Anderson'-'Utah'-'Susan'

-- train
insert into trainsplan.train
values (23, 1, 'Commercial', 'Hudson'),
       (24, 5, 'Commercial', 'Randy'),
       (25, 12, 'Commercial', 'Hudson'),
       (26, 10, 'Commercial', 'Hudson'),
       (27, 30, 'Hudson', 'Commercial'),
       (28, 12, 'Badeau', 'Commercial'),
       (29, 3, 'East', 'Hudson'),
       (51, 40, 'Commercial', 'Melvin'),
       (52, 12, 'Commercial', 'Melvin'),
       (53, 7, 'Badeau', 'Susan'),
       (54, 10, 'Melvin', 'Commercial'),
       (55, 11, 'Susan', 'Badeau'),
       (56, 2, 'Anderson', 'Susan');

-- connection
insert into trainsplan.connection
values ('Commercial', 'Hudson', 23, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Commercial', 'Randy', 24, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Commercial', 'Randy', 25, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Randy', 'Hudson', 25, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Commercial', 'Randy', 26, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Randy', 'Prairie Rose', 26, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Prairie Rose', 'Hudson', 26, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Hudson', 'Commercial', 27, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Badeau', 'Commercial', 28, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('East', 'Hudson', 29, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Commercial', 'Melvin', 51, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Commercial', 'Utah', 52, '2022-10-09 00:13', '2022-10-07 00:13'),
       ('Utah', 'Melvin', 52, '2022-10-09 00:13', '2022-10-08 00:13'),
       ('Badeau', 'Utah', 53, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Utah', 'Prairie Rose', 53, '2022-10-09 00:13', '2022-10-09 00:14'),
       ('Prairie Rose', 'Susan', 53, '2022-10-09 00:13', '2022-10-09 00:15'),
       ('Melvin', 'Commercial', 54, '2022-10-09 00:13', '2022-10-09 00:16'),
       ('Susan', 'Prairie Rose', 55, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Prairie Rose', 'Utah', 55, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Utah', 'Badeau', 55, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Anderson', 'Utah', 56, '2022-10-09 00:13', '2022-10-09 00:13'),
       ('Utah', 'Susan', 55, '2022-10-09 00:13', '2022-10-09 00:13');