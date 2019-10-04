-- How many total stuffies? 10
select count(*) from stuffy;
 
-- How many black stuffies?
select count(*),color
from stuffy 
where color = 'black';

-- How many stuffies per color?
select count(*), color 
from stuffy
group by color;

-- How many total limbs?

-- What stuffy has the most limbs?

 