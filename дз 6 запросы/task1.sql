-- Задача 1

-- Показать все названия книг вместе с именами издателей.
select title, pubname
from libraryplan.book;

-- В какой книге наибольшее количество страниц?
select isbn, title, pagesnum
from libraryplan.book
where pagesnum = (select max(pagesnum) from libraryplan.book);

-- Какие авторы написали более 5 книг?
select author, count(*) as count
from libraryplan.book
group by author
having count(*) > 5;

-- В каких книгах более чем в два раза больше страниц, чем среднее количество страниц для всех книг?
select isbn, title, author, pagesnum
from libraryplan.book
where pagesnum > 2 * (select avg(pagesnum) from libraryplan.book);

-- Какие категории содержат подкатегории?
select distinct parentcat
from libraryplan.category
where parentcat is not null;

-- У какого автора (предположим, что имена авторов уникальны) написано максимальное количество книг?
with ac as (select author, count(*) as count
            from libraryplan.book
            group by author)
select author, count
from ac
where count = (select max(count) from ac);

-- Какие читатели забронировали все книги (не копии), написанные "Марком Твеном"?
select readernr
from (select distinct readernr, isbn
      from libraryplan.borrowing
      where isbn in (select isbn from libraryplan.book where author = 'Mark Twain')) a
group by readernr
having count(*) = (select count(*) from libraryplan.book where author = 'Mark Twain');

-- Какие книги имеют более одной копии?
select isbn, count(*) as count
from libraryplan.copy
group by isbn
having count(*) > 1;

-- ТОП 10 самых старых книг
select isbn, title, author, pubyear
from libraryplan.book
order by pubyear
limit 10;

-- Перечислите все категории в категории “Спорт” (с любым уровнем вложености).
with recursive subcat as (select categoryname, parentcat
                          from libraryplan.category
                          where categoryname = 'sport'
                          union
                          select new.categoryname, new.parentcat
                          from libraryplan.category new
                                   join subcat on subcat.categoryname = new.parentcat)
select categoryname
from subcat
where categoryname != 'sport';