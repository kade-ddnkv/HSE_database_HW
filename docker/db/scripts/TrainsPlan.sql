create schema TrainsPlan authorization "DUDNIKOV_206";

create table TrainsPlan.City (
    Name varchar,
    Region varchar,
    primary key (Name, Region)
);

create table TrainsPlan.Station (
    Name varchar primary key,
    NumberOfTracks int,
    CityName varchar,
    Region varchar,
    foreign key (CityName, Region) references TrainsPlan.City (Name, Region)
);

create table TrainsPlan.Train (
    TrainNr int primary key,
    Length int,
    StartStationName varchar references TrainsPlan.Station (Name),
    EndStationName varchar references TrainsPlan.Station (Name)
);

create table TrainsPlan.Connection (
    FromStation varchar references TrainsPlan.Station (Name),
    ToStation varchar references TrainsPlan.Station (Name),
    TrainNr int references TrainsPlan.Train (TrainNr),
    Departure timestamp,
    Arrival timestamp,
    primary key (FromStation, ToStation, TrainNr)
);