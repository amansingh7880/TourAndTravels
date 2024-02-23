-- create database to store multiple tables
create database schoolmgt;

-- activate database to store new tables into this or to perform any action on tables
use schoolmgt;
-- to run any command in sql 
-- 1. place your cursor on the query line
-- 2. press ctrl + enter to run that query

-- to create a table in current data base
create table employee1(empid varchar(20) primary key,name varchar(25),age int,phone long,salary float);

insert into employee values('emp105','chota bheem Kumar',29,847337373,67000);
-- to get all the records with all the columns of a table 
select * from employee;
-- to get selected columns from table
select name, age, salary from employee;
-- to get records according to a conditions
-- to get a single record according to a id
select * from employee where empid='emp103';
-- to get all the records whose salary is greater than 40000
select * from employee where salary>=40000;
select * from employee where city='delhi';
-- to add password to a column - we run update query
-- update tablename set column=value,column=value where condition
update employee set password='12345' where empid='emp103';

-- to save the changes
commit;

select * from employee where empid='emp101' and password='54321';

update employee set city='Gurugram1' where city='Gurugram';

-- * all columns
select * from employee;

rollback;