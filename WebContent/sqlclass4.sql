use schoolmgt;
select * from employee;
select * from employee where salary between 40000 and 70000;
select * from employee where name not between 'Kamal Kumar' and 'Suresh Kumar';

select empid as id from employee;
select empid as id, phone as mobile from employee;
-- select empid as employee id from employee;

create table dept(deptid varchar(20) primary key,deptname varchar(45));
select * from dept;
insert into dept values('d104','Production');
select * from employee;

select name,city,dept.deptname from employee 
inner join dept on employee.deptid=dept.deptid;

create table 
