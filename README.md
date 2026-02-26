# CSE210 - Database Management Systems Lab

## Project: Constraints and ERD Implementation
This project focuses on the practical implementation of an Entity Relationship Diagram (ERD) using MySQL. It demonstrates the use of primary keys, foreign keys, and various data constraints to maintain a structured and reliable database system.

## Lab Performance Information
* **Course Code:** CSE210
* **Course Title:** Database Management Systems
* **Task:** Lab Performance 04
* **Student Name:** Masrur Hossain Siam
* **University:** Green University of Bangladesh

## Database Schema Overview
The implementation includes a database named `LabPerformance04` with the following entities:
1. **COUNTRY**: Stores regional details with a UNIQUE constraint on the country name.
2. **DEPARTMENT**: Academic units categorized by status (Active/Inactive) using ENUM.
3. **EMPLOYEE**: Employee records with a CHECK constraint to ensure valid ID ranges.
4. **FOLDER**: Files/Folders assigned to specific employees to maintain data organization.

## Key Features Implemented
* **Referential Integrity**: Established using Primary Keys (PK) and Foreign Keys (FK).
* **Data Validation**: 
  - `NOT NULL` for mandatory fields.
  - `UNIQUE` for non-duplicate country entries.
  - `CHECK` constraint for numerical validation.
  - `ENUM` for predefined status options.
* **Sample Data**: 5 rows of realistic data inserted into each table for testing.

## How to Run the Script
1. Open your MySQL environment (XAMPP/MySQL Workbench/phpMyAdmin).
2. Create a new database or use the script to generate one automatically.
3. Import the provided `.sql` file.
4. Run the following commands to verify:
   ```sql
   DESCRIBE COUNTRY;
   SELECT * FROM COUNTRY;
