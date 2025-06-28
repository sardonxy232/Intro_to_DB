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

USE alx_book_store;
SELECT COLUMN_NAME,COLUMN_TYPE,IS_NULLABLE,COLUMN_DEFAULT,EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='alx_book_store' AND TABLE_NAME='Books'
ORDER BY ORDINAL_POSITION;
-- This script retrieves the full description of the 'Books' table in the 'alx_book_store' database.
-- It lists the column names, types, nullability, default values, and any extra information (like auto-increment) for each column.
-- The results are ordered by the ordinal position of the columns.
-- Ensure you are connected to the 'alx_book_store' database before running this command.