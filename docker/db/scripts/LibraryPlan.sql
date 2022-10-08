-- Я 6 часов бился с одной ошибкой создания таблицы. Я устал.
create schema LibraryPlan authorization "DUDNIKOV_206";

create table LibraryPlan.Reader
(
    ID        serial primary key,
    LastName  varchar,
    FirstName varchar,
    Address   varchar,
    BirthDate timestamp
);

create table LibraryPlan.Publisher
(
    PubName    varchar primary key,
    PubAddress varchar
);

create table LibraryPlan.Book
(
    ISBN     varchar primary key,
    Title    varchar,
    Author   varchar,
    PagesNum int,
    PubYear  int,
    PubName  varchar references LibraryPlan.Publisher (PubName)
);

create table LibraryPlan.Category
(
    CategoryName varchar primary key,
    ParentCat    varchar references LibraryPlan.Category (CategoryName)
);

create table LibraryPlan.Copy
(
    ISBN          varchar references LibraryPlan.Book (ISBN),
    CopyNumber    int,
    ShelfPosition int,
    primary key (ISBN, CopyNumber)
);

create table LibraryPlan.Borrowing
(
    ReaderNr   int references LibraryPlan.Reader (ID),
    ISBN       varchar,
    CopyNumber int,
    ReturnDate timestamp,
    primary key (ReaderNr, ISBN, CopyNumber),
    foreign key (ISBN, CopyNumber) references LibraryPlan.Copy (ISBN, CopyNumber) on update cascade
);

create table LibraryPlan.BookCat
(
    ISBN         varchar references LibraryPlan.Book (ISBN),
    CategoryName varchar references LibraryPlan.Category (CategoryName),
    primary key (ISBN, CategoryName)
);