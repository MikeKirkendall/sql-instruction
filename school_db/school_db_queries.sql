-- select all student
select * from student;

-- select * from course
select * from course;

-- select * from enrolled
select * from enrolled;

-- select students w/o middle names
select *
from student
where middleInitial is null;

-- how many students in each state
select count(*) student, count(name)
  from student
group by state;

-- count how many students in OH
select count(*)
from student
 where state = 'OH';
 
 -- count how many students in CA
 select count(*)
 from student
 where state = 'CA';
 
 -- who is the oldest student
 select *, max(birthday)
 from student;
 
 -- who is the oldest student
 select concat(firstName, " ", middleInitial, " ", lastName) as 'Oldest Student:', birthday as 'Birthday:'
  from student
 where birthday = (select max(birthday) from student);
 
 -- who is the youngest student
 select * 
 from student
 order by birthday desc;
 
-- how many social studies course
select subject as 'Course Subject:', count(name) as 'Number of Courses:'
  from course
group by subject;

-- How many math courses
select count(*) as 'Math' from course
where subject = 'math';

select subject as 'Math', count(name) as 'Number of Courses'
from course
group by subject;
