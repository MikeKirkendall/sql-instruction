drop database if exists bmdb_db;
create database bmdb_db;
use bmdb_db;

Create Table Actor (
id			int				not null primary key auto_increment,
firstName	varchar (25)	not null, 
lastName	varchar (25)	not null,
gender		varchar (6)		not null,
birthDate	date			not null
); 

Insert into Actor (firstName, lastName, gender, birthDate)
values ('Keanu', 'Reeves', 'Male',' 1964-09-02');
Insert into Actor (firstName, lastName, gender, birthDate)
values ('Denzel', 'Washington', 'Male', '1954-12-28');
Insert into Actor (firstName, lastName, gender, birthDate)
values ('Tom', 'Cruise', 'Male', '1962-07-03');

select * from actor;


Create Table Movie (
id			int				not null primary key auto_increment,
title		varchar(100)	not null,
rating		varchar(50)		not null,
year		int				not null,
director	varchar(50)		not null,
Constraint unq_year unique (title, year)
);

Insert into Movie (title, rating, year, director)
values ('The Matrix', 'R', 1999, 'The Wachowski Brothers');
Insert into Movie (title, rating, year, director)
Values ('The Equilizer', 'R', 2014,'Antoine Fuqua');
Insert into Movie (title, rating, year, director)
Values ('Top Gun', 'PG', 1986, 'Tony Scott');

Create Table Credit (
id			int				not null primary key auto_increment,
movieID		int				not null,
actorID		int				not null,
role		varchar (25)	not null
);

alter table Credit
add foreign key (movieID) references Movie(id);
alter table Credit
add foreign key (actorid) references Actor(id);

Insert into Credit  (movieID, actorID, role)
values (1,1, 'Neo');
Insert into Credit (movieID, actorID, role)
values (2,2, 'Robert McCall');
Insert into Credit (movieID, actorID, role)
values (3,3, 'Maverick');

