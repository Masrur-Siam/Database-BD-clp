# CSE210 - DBMS Lab Performance 04

## Project Overview
This project demonstrates the implementation of a Relational Database Management System (RDBMS) using MySQL. It includes the creation of a database schema, establishing relationships through Primary Keys (PK) and Foreign Keys (FK), and applying various constraints to ensure data integrity.

## Lab Details
* **Lab Name:** Constraints and ERD Implementation
* **Course Code:** CSE210
* **Submission Date:** February 26, 2026

## Entity Relationship Implementation
The database `LabPerformance04` consists of four interconnected tables:
1.  **COUNTRY:** Stores regional information.
2.  **DEPARTMENT:** Academic/Organizational units linked to countries.
3.  **EMPLOYEE:** Staff details linked to departments.
4.  **FOLDER:** Personal folders assigned to specific employees.

### Implemented Constraints
* **Primary Keys (PK):** Unique identifier for each table.
* **Foreign Keys (FK):** Maintains referential integrity between tables.
* **NOT NULL:** Ensures mandatory fields are not left empty.
* **UNIQUE:** Applied to `country_name` to prevent duplicate entries.
* **CHECK:** Used on `salary` or `emp_id` to validate numerical ranges.
* **ENUM:** Used for `dept_status` to restrict values to 'Active' or 'Inactive'.

## Database Schema (SQL Script)
The implementation includes:
- Schema creation.
- Table definitions with constraints.
- Insertion of 5 sample rows per table.

## How to Use
1. Clone this repository.
2. Import the `LabPerformance04.sql` file into your MySQL environment (XAMPP/phpMyAdmin).
3. Run the queries to see the table structures and data.

## Author
* **Name:** Masrur Hossain Siam
* **ID:** 242002123
* **University:** Green University of Bangladesh
