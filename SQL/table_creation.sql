-- Create and use database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Drop tables if they already exist
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

-- View data
SELECT * FROM Departments;
SELECT * FROM Employees;

