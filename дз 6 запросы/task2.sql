-- Задача 2

-- Добавьте запись о бронировании читателем ‘Василеем Петровым’ книги с ISBN 123456 и номером копии 4.
-- Инициализация книги, копии, читателя.
insert into libraryplan.reader
values (21, 'Petrov', 'Vasily', 'some street', '1962-01-22');
insert into libraryplan.book
values ('123456', 'title666', 'author666', 2, 1999, 'Little-Weber');
insert into libraryplan.copy
values ('123456', 4, 666);
-- Добавление записи о бронировании.
insert into libraryplan.borrowing
values (21, '123456', 4, '2022-01-22');

-- Удалить все книги, год публикации которых превышает 2000 год.
-- Думаю, что сначала можно поставить все зависимые ключи на on delete cascade.
alter table libraryplan.copy
    drop constraint copy_isbn_fkey,
    add constraint copy_isbn_fkey
        foreign key (isbn) references libraryplan.book on delete cascade;
alter table libraryplan.bookcat
    drop constraint bookcat_isbn_fkey,
    add constraint bookcat_isbn_fkey
        foreign key (isbn) references libraryplan.book on delete cascade;
alter table libraryplan.borrowing
    drop constraint borrowing_isbn_copynumber_fkey,
    add constraint borrowing_isbn_copynumber_fkey
        foreign key (isbn, copynumber) references libraryplan.copy on delete cascade;
-- Удаляю все книги после 2000 года.
delete
from libraryplan.book
where pubyear > 2000;

-- Измените дату возврата для всех книг категории "Базы данных",
-- начиная с 01.01.2016, чтобы они были в заимствовании на 30 дней дольше
-- (предположим, что в SQL можно добавлять числа к датам).
update libraryplan.borrowing
set returndate = returndate + interval '30' day
where returndate >= '2016-01-01'
  and isbn in (select bc.isbn from libraryplan.bookcat bc where bc.categoryname = 'databases');