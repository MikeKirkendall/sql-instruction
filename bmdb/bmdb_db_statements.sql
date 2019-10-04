-- Select statements for bmbd

select * from movie;

 select * from actor;

select * from credit, movie, actor;

select * from actor
where birthdate < '1984-10-24';

-- list all actors for a movie
select * from actor a
join credit c
on c.ActorID = a.ID
where c.movieID = 1;

-- select a movie by name
select * from movie
where title = 'The Matrix';

-- List all actors for a movie- subselect
select * from actor a
join credit c 
on c.ActorID = a.ID
where c.movieID = (select id from movie
where title = 'Top gun');

-- list all movies and associated actors - 3 tables joins
select title, year, role, concat(firstName, " ", LastName) as 'Actor' 
from movie m
join credit c 
on c.MovieID = m.ID
join actor a
on c.ActorID = a.ID;

-- another way to join (this will only be able to do on inner join)
select * from actor, credit
where actor.id = credit.ActoriD;

select * from movie;

-- example of a unique contraint violation)
insert into movie (Title, year, Rating, Director)
values ('The Matrix', 1999, 'R', 'adffeeffef');

