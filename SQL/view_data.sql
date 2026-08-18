-- Using company_db as target db 
-- use company_db

-- Lokking for the list of available tables 
-- Show tables;


-- 1 bascic select statement
-- select * from Departments;
-- select * from Employees;
-- select * from Employee_Project;
-- select * from Orders;
-- select * from Projects;

-- Q1: Select employee name, job title, salary those who belong to IT and Salary is more than 65000 
-- select 
--     emp_name, 
--     job_title, 
--     salary 
-- from Employees e 
-- inner join Departments d 
-- on e.dept_id = d.dept_id 
-- and e.salary > 65000;


-- -------------------------------------------------------------------------Q2: DDL operatoins -------------------------------------------------------

-- 1: Table creation
-- create table Trainning_Employees (
--     emp_id int primary key,
--     emp_name varchar(50),
--     salary decimal (10,2)
-- );


-- 2: Alter Table 

-- adding col
-- alter table Trainning_Employees
-- add department varchar(30);

-- --modifying existing object
-- alter table Trainning_Employees
-- modify emp_name varchar(100);

-- droping object 
-- alter table Trainning_Employees
-- drop column department; 

-- rename the table name 
-- rename table Trainning_Employees to Employee_Practice;

-- 4: Insert sample data 
-- INSERT INTO Employee_Practice VALUES
-- (1, 'John', 50000),
-- (2, 'Alice', 60000),
-- (3, 'Bob', 55000);

-- 5: Truncate table 
-- truncate table Employee_Practice;


------------------------------------------------------------ 3. DML Commands------------------------------------------------------------------------------ 
-- update Employees set salary = salary * 1.2 where job_title = "Developer";

-- -- MySQL UPSERT
-- insert into Employees (
--     emp_id,
--     emp_name,
--     job_title,
--     salary, 
--     dept_id
-- ) 
-- values 
-- (102, 'Priya Singh', 'Senior Developer', 75000, 20),
-- (106, 'Ananya Roy', 'Data Analyst', 62000, 20)
-- on duplicate key update     -- Basically it updates the values except the key values
--     emp_name = values(emp_name),
--     job_title = values(job_title),
--     salary = values(salary), 
--     dept_id = values(dept_id);

--------------------------------------------------------------- 4. DQL Commands-----------------------------------------------------------------------
