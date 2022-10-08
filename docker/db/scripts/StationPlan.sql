create schema StationPlan authorization "DUDNIKOV_206";

create table StationPlan.Station (
    StatNr int primary key,
    Name varchar
);

create table StationPlan.StationPersonell (
    PersNr int primary key,
    Name varchar,
    StatNr int references StationPlan.Station (StatNr)
);

create table StationPlan.Doctor (
    PersNr int primary key references StationPlan.StationPersonell (PersNr),
    Area varchar,
    Rank varchar
);

create table StationPlan.Caregiver (
    PersNr int primary key references StationPlan.StationPersonell (PersNr),
    Qualification varchar
);

create table StationPlan.Room (
    StatNr int references StationPlan.Station (StatNr),
    RoomNr int,
    NumberOfBeds int,
    primary key (StatNr, RoomNr)
);

create table StationPlan.Patient (
    PatientNr int primary key,
    Name varchar,
    Disease varchar,
    DoctorNr int references StationPlan.Doctor (PersNr),
    StatNr int,
    RoomNr int,
    fromTimeAdmission timestamp,
    toTimeAdmission timestamp,
    foreign key (StatNr, RoomNr) references StationPlan.Room (StatNr, RoomNr)
);