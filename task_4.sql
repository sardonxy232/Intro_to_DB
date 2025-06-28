-- 4. Full description
-- mandatory
-- Write a script that prints the full description of the table books from the database alx_book_store in your MySQL server.

-- The database name will be passed as an argument of the mysql command
-- You are not allowed to use the DESCRIBE or EXPLAIN statements
-- The name of the file should be task_4.sql
-- All SQL keywords should be in uppercase
-- Repo:

-- GitHub repository: Intro_to_DB
-- File: task_4.sql

-- task_4.sql must contain: ["INFORMATION_SCHEMA.COLUMNS", "SELECT", "COLUMN_NAME", "COLUMN_TYPE", "TABLE_SCHEMA = 'alx_book_store'", "TABLE_NAME = 'Books'"]
SELECT COLUMN_NAME,COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='alx_book_store'
AND TABLE_NAME='Books';
-- This query retrieves the column names and their types from the Books table in the alx_book_store database.
-- It uses the INFORMATION_SCHEMA.COLUMNS table to get metadata about the columns in the specified table.
-- The WHERE clause filters the results to only include columns from the Books table in the
