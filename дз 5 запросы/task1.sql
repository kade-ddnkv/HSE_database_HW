-- а) Какие фамилии читателей в Москве?
select distinct lastname
from libraryplan.reader
where address like '%Moscow%';

-- б) Какие книги (author, title) брал Иван Иванов?
select distinct author, title
from libraryplan.book book,
     libraryplan.borrowing borr,
     libraryplan.reader r
where book.isbn = borr.isbn
  and borr.readernr = r.id
  and r.firstname = 'Ivan'
  and r.lastname = 'Ivanov';

-- в) Какие книги (ISBN) из категории "Горы" не относятся к категории "Путешествия"?
select bc1.isbn
from libraryplan.bookcat bc1
where bc1.categoryname = 'mountains'
  and bc1.isbn not in
      (select bc2.isbn
       from libraryplan.bookcat bc2
       where bc2.categoryname = 'travelling');

-- г) Какие читатели (LastName, FirstName) вернули копию книги?
select distinct lastname, firstname
from libraryplan.reader r,
     libraryplan.borrowing borr
where borr.readernr = r.id
  and borr.returndate <= current_date;

-- д) Какие читатели (LastName, FirstName) брали хотя бы одну книгу (не копию), которую брал также Иван Иванов (не включайте Ивана Иванова в результат)?
select distinct lastname, firstname
from libraryplan.reader r,
     libraryplan.borrowing borr
where borr.readernr = r.id
  and borr.isbn in (select distinct borr.isbn
                    from libraryplan.borrowing borr,
                         libraryplan.reader r
                    where borr.readernr = r.id
                      and r.lastname = 'Ivanov'
                      and r.firstname = 'Ivan')
except
values ('Ivanov', 'Ivan');