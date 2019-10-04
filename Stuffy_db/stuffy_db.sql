drop database if exists stuffy_db;
create database stuffy_db;
use stuffy_db;

Create Table Stuffy (
id			int						primary key auto_increment,
type		varchar(255)			not null,
color		varchar(20)				not null,
size		varchar(2)				not null,
limbs		int						not null	
);


Insert into Stuffy (type, color, size, limbs)
values	('Panda', 'Black and White', 'L','4'),
		('Dog', 'Yellow', 'SM', '4'),
		('Cat', 'Black', 'M', '4'),
		('Elephant', 'Grey', 'S', '4'),
		('Aligator', 'Green', 'L', '4'),
		('Zebra', 'Black and white', 'M', '4'),
		('Pig', 'Pink', 'L', '4'),
		('Bear', 'Brown', 'XL', '4'), 
		('Pony', 'Black', 'S', '4'),
		('Snake', 'Green', 'M', '4');
        