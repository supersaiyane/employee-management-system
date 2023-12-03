-- create_database.sql

-- SQL command to create a database
CREATE DATABASE IF NOT EXISTS EmployeeManagement;

-- Granting privilages
-- GRANT ALL PRIVILEGES ON EmployeeManagement.* TO 'shailendra'@'%';
-- FLUSH PRIVILEGES;

-- Use the newly created database
USE EmployeeManagement;

-- Create a table for users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    role ENUM('admin', 'user') NOT NULL,
    status ENUM('active', 'inactive') NOT NULL DEFAULT 'active'
);

-- Create a table for leads
CREATE TABLE IF NOT EXISTS emp_manager (
    emp_manager_name VARCHAR(100) NOT NULL,
    emp_manager_emp_id INT PRIMARY KEY,
    status ENUM('active', 'inactive') NOT NULL DEFAULT 'active'
);

-- Create a table for designations
CREATE TABLE IF NOT EXISTS emp_designation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emp_designation VARCHAR(100) NOT NULL
);

-- Create a table for departments
CREATE TABLE IF NOT EXISTS emp_department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emp_department_name VARCHAR(100) NOT NULL
);

-- Create a table for project_status
CREATE TABLE IF NOT EXISTS emp_project_status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emp_project_status VARCHAR(20) NOT NULL
);

-- Create a table for company_status
CREATE TABLE IF NOT EXISTS emp_company_status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emp_company_status VARCHAR(20) NOT NULL
);

-- Create a table for workplace_status
CREATE TABLE IF NOT EXISTS emp_workplace_status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emp_workplace_status VARCHAR(20) NOT NULL
);

-- Create a table for projects
CREATE TABLE IF NOT EXISTS emp_project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emp_project VARCHAR(20) NOT NULL,
    status ENUM('active', 'inactive') NOT NULL DEFAULT 'active'
);

-- Create a table for emp
CREATE TABLE IF NOT EXISTS emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_email VARCHAR(100) NOT NULL,
    emp_current_location VARCHAR(100) NOT NULL,
    emp_joining_date DATE NOT NULL,
    emp_leaving_date DATE,
    emp_salary DECIMAL(10, 2),
    emp_manager INT NOT NULL,
    FOREIGN KEY (emp_manager) REFERENCES emp_manager(emp_manager_emp_id),
    emp_designation INT NOT NULL,
    FOREIGN KEY (emp_designation) REFERENCES emp_designation(id),    
    emp_department INT NOT NULL,
    FOREIGN KEY (emp_department) REFERENCES emp_department(id),  
    emp_project INT NOT NULL,
    FOREIGN KEY (emp_project) REFERENCES emp_project(id),  
    emp_project_status INT NOT NULL,  
    FOREIGN KEY (emp_project_status) REFERENCES emp_project_status(id),  
    emp_company_status INT NOT NULL,
    FOREIGN KEY (emp_company_status) REFERENCES emp_company_status(id),
    emp_workplace_status INT NOT NULL, 
    FOREIGN KEY (emp_workplace_status) REFERENCES emp_workplace_status(id)
);