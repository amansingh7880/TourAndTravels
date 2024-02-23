-- Day 3
use schoolmgt;
select * from employee;
select * from employee where not city='delhi';
select * from employee where city='delhi' or city='mumbai';

select * from employee order by city,name;
select * from employee order by city desc;
select * from employee limit 3;
select * from employee limit 2,2;

-- select top 3 from employee;

select * from employee where empid='emp102' and password='888888';

insert into employee values('emp102','2222','jjj',23,'335533',45000,'delhi');

select * from employee where city in ('delhi','gurgaon','mumbai');

create table cities(sno int primary key auto_increment, cityname varchar(25));

insert into cities(cityname) values('Chandigarh');
select * from cities;

select name,age,city from employee where city in (select cityname from cities);
select * from employee where city in (select cityname from cities);

select * from employee where name like 'S_';
select * from employee where city like 'd%';
select * from employee where city like 'd___i';