#--------------------------------ASSIGNMENT-3---------------------------------------
create database tt;
use tt;
create table apple(emp_id int, first_name varchar(40),last_name varchar(70),department varchar(24),salary decimal (10,2),hire_date DATE);
insert into apple(emp_id,first_name,last_name,department,salary,hire_date)values("1","John","Doe","IT","60000.00","2019-01-10");
insert into apple(emp_id,first_name,last_name,department,salary,hire_date)values("2","Jane","smith","HR","55000.00","2018-03-5");
insert into apple(emp_id,first_name,last_name,department,salary,hire_date)values("3","Emily","Jones","IT","62000.00","2020-07-10");
insert into apple(emp_id,first_name,last_name,department,salary,hire_date)values("4","Michael","Brown","Finance","60000.00","2019-01-10");
insert into apple(emp_id,first_name,last_name,department,salary,hire_date)values("5","John","Doe","IT","70000.00","2016-05-14");
insert into apple(emp_id,first_name,last_name,department,salary,hire_date)values("6","Dvid","Johnson","HR","48000.00","2021-09-10");
select * from apple;

#1. Find the average salary of employees in each department.
select first_name,last_name,avg(salary) as avg_total
from apple
group by first_name,last_name;
#2. Find the total number of employees hired after 2019. 
SELECT COUNT(*) AS total_employees_hired_after_2019
FROM apple
WHERE hire_date > '2019-12-31';
#3. List the departments and the total salary of all employees in each department, ordered by the total salary.
select department,sum(Salary)as total_salary
from apple 
group by department
order by total_salary desc;
#4. Find the highest salary in the Finance department. 
select department,max(salary)as finance_highest
from apple
WHERE department="finance"
group by department;
#5. Get the top 3 highest-paid employees.
SELECT emp_id, first_name, salary
FROM apple
ORDER BY salary DESC
LIMIT 3;

#6. Find the department with the minimum average salary. 
select department,min(salary) as avg_salary
from apple 
group by department ;
#7. Display the total number of employees in each department, ordered by the number of employees. 
select department,count(first_name) as total_no_employee
from apple
group by department
order by total_no_employee;
#8. Find the average salary of employees who were hired before 2020. 
SELECT COUNT(*) AS total_employees_hired_after_2019
FROM apple
WHERE hire_date < '2020-12-31';
SELECT first_name
FROM apple
ORDER BY hire_date DESC;
#10. Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
select sum(salary)as "salaries of all employees"
from apple
where hire_date> '2019-01-01';
#11. Get the employee with the lowest salary in the HR department. 
select first_name,salary
from apple
where department="HR"
ORDER BY salary ASC
LIMIT 1;
#12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.
select first_name, sum(salary) as total_salary
from apple
group by first_name
order by FIRST_NAME DESC
LIMIT 2;
#13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
select first_name , hire_date,salary
FROM apple
WHERE hire_date > '2018-12-31'
ORDER BY salary ASC
LIMIT 4;

#14. Find the highest salary in the IT department, but limit the results to the top 1 result.   
select first_name,salary,department
from apple
where department="IT"
order by salary DESC
limit 1;
#15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  
SELECT department, avg(salary)as "salary of all employees"
from apple 
group by department
having avg(salary) >"60000";
select * from apple