insert into libraryplan.book values ('830503091-2', 'title1', 'Mark Twain', 2, 1940, 'Little-Weber'),
                                    ('830503091-3', 'title2', 'Mark Twain', 90, 2016, 'Hansen and Sons'),
                                    ('830503091-4', 'title3', 'Lucy Caldwell', 22, 2020, 'Lindgren-Corwin'),
                                    ('830503091-5', 'title4', 'Janice Hallett', 254, 2022, 'Little-Weber'),
                                    ('830503091-6', 'title5', 'Danya Kukafka', 124, 2012, 'Hansen and Sons'),
                                    ('830503091-7', 'title6', 'Janice Hallett', 8023, 2016, 'Lindgren-Corwin'),
                                    ('830503091-8', 'title7', 'Danya Kukafka', 202, 2022, 'Lindgren-Corwin'),
                                    ('830503091-9', 'title8', 'Danya Kukafka', 10245, 2022, 'Hansen and Sons');

insert into libraryplan.book values ('043325792-1', 'title9', 'Janice Hallett', 395, 2013, 'Lindgren-Corwin'),
                                    ('043325792-2', 'title10', 'Danya Kukafka', 129, 2022, 'Lindgren-Corwin'),
                                    ('043325792-3', 'title11', 'Danya Kukafka', 235, 2020, 'Hansen and Sons'),
                                    ('043325792-4', 'title12', 'Danya Kukafka', 1230, 2002, 'Hansen and Sons'),
                                    ('043325792-5', 'title13', 'Danya Kukafka', 2344, 2001, 'Lindgren-Corwin'),
                                    ('043325792-6', 'title14', 'Janice Hallett', 234, 2007, 'Lindgren-Corwin'),
                                    ('043325792-7', 'title15', 'Janice Hallett', 10, 1999, 'Hansen and Sons');

insert into libraryplan.category values ('sport', 'all'),
                                        ('skiing', 'sport'),
                                        ('football', 'sport'),
                                        ('cross-country skating', 'skiing'),
                                        ('figure skating', 'skiing');

insert into libraryplan.copy values ('830503091-2', 5, 39),
                                    ('830503091-3', 19, 232),
                                    ('830503091-3', 20, 233),
                                    ('830503091-3', 21, 234);

insert into libraryplan.borrowing values (11, '830503091-2', 5, '2016-06-22'),
                                         (12, '830503091-2', 5, '2020-06-22'),
                                         (20, '830503091-3', 19, '2006-06-22'),
                                         (1, '830503091-3', 19, '2050-06-22'),
                                         (11, '830503091-3', 20, '2001-06-22'),
                                         (11, '830503091-3', 21, '1999-06-22');

insert into libraryplan.category values ('databases', 'all');

insert into libraryplan.bookcat values ('830503091-2', 'databases'),
                                       ('830503091-2', 'sport'),
                                       ('830503091-5', 'databases');