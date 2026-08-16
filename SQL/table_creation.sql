-- Create and use database
DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

-- Drop tables if they exist
DROP TABLE IF EXISTS Employee_Project;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

-- Department Table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Employee Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Project Table
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    budget DECIMAL(12,2)
);

-- Employee_Project Table
CREATE TABLE Employee_Project (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    emp_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Insert Department Data
INSERT INTO Departments VALUES
(10, 'HR', 'Bangalore'),
(20, 'IT', 'Chennai'),
(30, 'Finance', 'Mumbai'),
(40, 'Sales', 'Hyderabad');

-- Insert Employee Data
INSERT INTO Employees VALUES
(101, 'Rahul Sharma', 'Manager', 75000, 10),
(102, 'Priya Singh', 'Developer', 65000, 20),
(103, 'Amit Kumar', 'Analyst', 55000, 30),
(104, 'Neha Patel', 'Developer', 70000, 20),
(105, 'Rohan Das', 'Sales Executive', 50000, 40);

-- Insert Project Data
INSERT INTO Projects VALUES
(201, 'SAC Analytics', 500000),
(202, 'Cloud Migration', 750000),
(203, 'ERP Upgrade', 600000),
(204, 'AI Dashboard', 900000);

-- Insert Employee_Project Data
INSERT INTO Employee_Project VALUES
(101, 201, 120),
(102, 201, 90),
(103, 202, 110),
(104, 203, 150),
(105, 204, 100);

-- Insert Orders Data
INSERT INTO Orders VALUES
(1001, 101, '2024-01-10', 5000),
(1002, 101, '2024-02-25', 8000),
(1003, 102, '2024-01-15', 4500),
(1004, 103, '2024-02-10', 7000),
(1005, 104, '2024-03-12', 9000),
(1006, 105, '2024-03-30', 6000);

-- View Data
SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Projects;
SELECT * FROM Employee_Project;
SELECT * FROM Orders;