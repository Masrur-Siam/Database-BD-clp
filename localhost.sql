SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS BD;
USE BD;

CREATE TABLE COUNTRY (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50) NOT NULL UNIQUE,
    continent VARCHAR(50) NOT NULL,
    currency VARCHAR(100) NOT NULL
);

CREATE TABLE DEPARTMENT (
    department_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    country_id INT,
    dept_status ENUM('Active', 'Inactive') DEFAULT 'Active',
    FOREIGN KEY (country_id) REFERENCES COUNTRY(country_id)
);

CREATE TABLE EMPLOYEE (
    emp_id INT PRIMARY KEY CHECK (emp_id > 0),
    emp_name VARCHAR(50) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE FOLDER (
    folder_id INT PRIMARY KEY,
    folder_name VARCHAR(50) NOT NULL,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(emp_id)
);

INSERT INTO COUNTRY (country_id, country_name, continent, currency) VALUES 
(1, 'Bangladesh', 'Asia', 'BDT'),
(2, 'USA', 'North America', 'USD'),
(3, 'Japan', 'Asia', 'Yen'),
(4, 'UK', 'Europe', 'GBP'),
(5, 'Germany', 'Europe', 'Euro');

INSERT INTO DEPARTMENT (department_id, dept_name, country_id, dept_status) VALUES 
(101, 'CSE', 1, 'Active'),
(102, 'EEE', 1, 'Active'),
(103, 'BBA', 2, 'Active'),
(104, 'ME', 3, 'Active'),
(105, 'TEX', 5, 'Inactive');

INSERT INTO EMPLOYEE (emp_id, emp_name, department_id) VALUES 
(1, 'Masrur', 101),
(2, 'Siam', 101),
(3, 'Rahim', 102),
(4, 'Karim', 103),
(5, 'John', 104);

INSERT INTO FOLDER (folder_id, folder_name, employee_id) VALUES 
(501, 'Project_Alpha', 1),
(502, 'Research_DB', 2),
(503, 'Accounts_2024', 3),
(504, 'Lab_Report', 4),
(505, 'Thesis_Final', 5);

COMMIT;
