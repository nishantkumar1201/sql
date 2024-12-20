create database company;
use company;
create table employees(id int not null unique ,name varchar(100), position varchar(100), 
salary decimal(10,2), date_of_joining date);
insert into employees(id,name,position,salary,date_of_joining) values(1,"john doe","mananger",55000.00,"2020-01-15");
insert into employees(id,name,position,salary,date_of_joining) values(2,"jane smith","developer",48000.00,"2019-07-10");
insert into employees(id,name,position,salary,date_of_joining) values(3,"alice johnson","designer",45000.00,"2021-03-22");
insert into employees(id,name,position,salary,date_of_joining) values(4,"bob brown","developer",50000.00,"2018-11-01");
select *  from employees where position ="developer";
select * from employees
update employees
set salary=46000.00 where id =3;
delete from employees where id=4;
select * from employees where salary>48000.00;
Alter Table employees
add email varchar (20);
set sql_safe_updates=0;
update employees
set email="john.doe@company.com" where id=1;
select name, salary from employees;
select count(*) number_of_employees from employees where date_of_joining >"2022-01-01";
alter table employees drop email;
select max(salary) as maximum_salary from employees;


