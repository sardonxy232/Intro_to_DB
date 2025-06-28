-- 3. List all the tables created
-- mandatory
-- Write a script that list all the tables in alx_book_store in your MySQL server.

-- The name of the file should be task_3.sql
-- The database name will be passed as argument of mysql command
-- Repo:

-- GitHub repository: Intro_to_DB
-- File: task_3.sql;
USE alx_book_store;
SELECT TABLE_NAME

FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'alx_book_store';
