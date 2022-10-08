-- reader
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (1, 'Leving', 'Ode', 'Shirokaya Rechka', '2022-06-10 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (2, 'Itzkin', 'Regan', 'Huancheng', '2022-05-30 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (3, 'Caller', 'Electra', 'Ishkhoy-Yurt', '2022-07-07 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (6, 'Slyne', 'Alli', 'Fizuli', '2022-06-27 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (8, 'Morrell', 'Dosi', 'Asmara', '2022-07-04 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (9, 'Skelbeck', 'Jemie', 'Reitoca', '2022-07-28 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (10, 'Clinkard', 'Aharon', 'Lubei', '2022-03-01 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (11, 'O''Corrane', 'Hilarius', 'Mŭglizh', '2022-01-23 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (12, 'Chesson', 'Skye', 'Genzi', '2022-08-24 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (13, 'Oxtiby', 'Dorice', 'Seroa', '2021-10-20 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (14, 'Lovel', 'Marta', 'Oklahoma City', '2021-10-15 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (15, 'Hadeke', 'Julita', 'Amapala', '2022-03-15 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (16, 'Bellwood', 'Deanne', 'Yanwang', '2022-08-15 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (19, 'Maha', 'Peirce', 'Goiatuba', '2021-11-05 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (20, 'Glaister', 'Anitra', 'Pabuaran', '2022-07-23 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (4, 'Trematick', 'Hephzibah', 'Moscow', '2021-12-07 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (17, 'Wiffler', 'Estell', 'Moscow, Kowalsky', '2021-12-07 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (7, 'Ivanov', 'Ivan', 'Gråbo', '2022-05-29 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (18, 'Lovel', 'Noland', 'Kuragaki-kosugi', '2021-11-16 00:00:00.000000');
INSERT INTO libraryplan.reader (id, lastname, firstname, address, birthdate) VALUES (5, 'Ivanov', 'Melitta', 'Florida', '2022-07-19 00:00:00.000000');

-- publisher
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Lindgren-Corwin', 'Bahir Dar');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Toy Inc', 'Balugo');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Daugherty-Schultz', 'Líbano');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Kohler-Rowe', 'Mawlamyinegyunn');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Little-Weber', 'El Copey');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Breitenberg, Zemlak and Mohr', 'Bologna');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Waelchi and Sons', 'Matango');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Russel LLC', 'Centralniy');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Hansen and Sons', 'Sanshengyuan');
INSERT INTO libraryplan.publisher (pubname, pubaddress) VALUES ('Olson, Schneider and Flatley', 'Pszczyna');

-- book
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('750891347-7', 'Muhlenbergia asperifolia (Nees & Meyen ex Trin.) Parodi', 'Chicky Sach', 3, 1988, 'Lindgren-Corwin');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('679966058-8', 'Lesquerella auriculata (Engelm. & A. Gray) S. Watson', 'Crista Ollander', 1424, 1990, 'Little-Weber');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('156265390-3', 'Crataegus mira Beadle', 'Marja Herche', 723, 2007, 'Lindgren-Corwin');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('045477878-3', 'Carex viridula Michx. ssp. brachyrrhyncha (Celak.) B. Schmid var. elatior (Schltdl.) Crins', 'Jacquelin Baurerich', 75, 1985, 'Hansen and Sons');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('660358540-5', 'Perityle quinqueflora (Steyerm.) Shinners', 'Kevina Shorland', 7787, 2012, 'Hansen and Sons');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('830503091-1', 'Verrucaria obnigrescens Nyl.', 'Merle Harhoff', 2014, 1998, 'Lindgren-Corwin');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('384804604-0', 'Dryopteris ×algonquinensis D.M. Britton', 'Ronica Siberry', 665, 1994, 'Hansen and Sons');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('764364939-1', 'Ivesia saxosa (Lemmon ex Greene) Ertter', 'Salomi Kynder', 672, 1999, 'Hansen and Sons');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('043325792-X', 'Bifora americana Benth. & Hook. f. ex S. Watson', 'Andrus Andrewartha', 600, 1998, 'Hansen and Sons');
INSERT INTO libraryplan.book (isbn, title, author, pagesnum, pubyear, pubname) VALUES ('035473416-4', 'Neisosperma oppositifolia (Lam.) Fosberg & Sachet', 'Isidro Gleave', 2217, 2005, 'Little-Weber');

-- copy
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('156265390-3', 2, 901);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('156265390-3', 4, 1004);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('764364939-1', 5, 903);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('764364939-1', 4, 1005);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('750891347-7', 1, 256);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('750891347-7', 2, 184);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('750891347-7', 7, 92);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('043325792-X', 8, 209);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('043325792-X', 10, 345);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('043325792-X', 2, 984);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('043325792-X', 52, 592);
INSERT INTO libraryplan.copy (isbn, copynumber, shelfposition) VALUES ('043325792-X', 53, 580);

-- borrowing
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (7, '043325792-X', 10, '2456-10-24 00:00:00.000000');
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (7, '156265390-3', 2, '2106-10-12 00:00:00.000000');
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (7, '750891347-7', 1, '2434-02-23 00:00:00.000000');
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (1, '043325792-X', 8, '2411-04-15 00:00:00.000000');
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (2, '750891347-7', 2, '2001-01-02 00:00:00.000000');
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (2, '043325792-X', 52, '2021-11-19 00:00:00.000000');
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (1, '043325792-X', 53, '2022-12-21 00:00:00.000000');
INSERT INTO libraryplan.borrowing (readernr, isbn, copynumber, returndate) VALUES (5, '750891347-7', 7, '2010-06-05 00:00:00.000000');

-- category
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('all', null);
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('turpis', 'all');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('vivamus', 'turpis');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('nascetur', 'all');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('nunc', 'turpis');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('lacinia', 'all');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('odio', 'nunc');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('velit', 'nunc');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('ut', 'lacinia');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('travelling', 'all');
INSERT INTO libraryplan.category (categoryname, parentcat) VALUES ('mountains', 'all');

-- bookcat
INSERT INTO libraryplan.bookcat (isbn, categoryname) VALUES ('043325792-X', 'travelling');
INSERT INTO libraryplan.bookcat (isbn, categoryname) VALUES ('660358540-5', 'mountains');
INSERT INTO libraryplan.bookcat (isbn, categoryname) VALUES ('043325792-X', 'mountains');
