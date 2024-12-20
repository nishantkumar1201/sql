/*Create a database named company and a table named employees with the following fields:
id (INT, Primary Key, Auto Increment)
name (VARCHAR(100))
position (VARCHAR(100))
salary (DECIMAL(10,2))
date_of_joining (DATE)*/

create database company1;
use company1;
/*Insert the following data into the employees table:
John Doe, Manager, 55000.00, 2020-01-15
Jane Smith, Developer, 48000.00, 2019-07-10
Alice Johnson, Designer, 45000.00, 2021-03-22
Bob Brown, Developer, 50000.00, 2018-11-01*/

create table employees1(id int,name varchar(100),position varchar(200),salary decimal(10,2),date_of_joining Date);
insert into employees1(id,name,position,salary,date_of_joining)values(1,"John Doe", "Manager",50000.00, 20040115);
insert into employees1(id,name,position,salary,date_of_joining)values(2,"Jane Smith","Developer", 48000.00, 20190710);
insert into employees1(id,name,position,salary,date_of_joining)values(3,"Alice Johnson", "Designer", 45000.00, 20210322);
insert into employees1(id,name,position,salary,date_of_joining)values(3,"Bob Brown", "Developer", 50000.00, 20181101);
select*from employees1;
/*Write a query to retrieve all employees who are Developers.*/
select *from employees1 where position="Developer";
/*Write a query to update the salary of Alice Johnson to 46000.00.*/
update employees1 set salary=42000 where name="jane Smith";

set sql_safe_updates =0;
select * from employees1;
/*Write a query to delete the employee record for Bob Brown.*/
delete from employees1 where name= "Bob Brown";
/*Write a query to find the employees who have a salary greater than 48000.*/
select * from employees1 where salary > 48000;
/*Write a query to add a new column email to the employees table.*/
ALTER TABLE employees1 ADD COLUMN email VARCHAR(255);
select *from employees1;
/*Write a query to update the email for John Doe to john.doe@company.com.*/
update employees1 set email=" john.doe@company.com" where name ="John Doe";
select name,salary from employees1;
 
 /*query to count the number of employees who joined after January 1, 2020.*/
 select * from employees1 where date_of_joining>"2020-01-01";
/* Write a query to order the employees by salary in descending order.*/
SELECT * FROM employees1 ORDER BY salary desc;
/*Write a query to drop the email column from the employees table.*/
delete email from employees1;
alter table employees1 drop email;
select * from employees1;
/*Write a query to find the employee with the highest salary.*/
select * from employees1 where salary=(select Max(salary) from employees1);