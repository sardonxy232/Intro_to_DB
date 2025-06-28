-- 5. Populating Your Database with Your Very First Data
-- mandatory
-- Write a script that inserts a single row in the table customer (database alx_book_store) in your MySQL server.

-- Singel data insertion

-- customer_id = 1
-- customer_name = Cole Baidoo
-- email = cbaidoo@sandtech.com
-- address = 123 Happiness Ave.
-- The database name will be passed as an argument of the mysql command

-- Name of the file should be task_5.sql

-- All SQL keywords should be in uppercase

-- Repo:

-- GitHub repository: Intro_to_DB
-- File: task_5.sql

INSERT INTO Customers(customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
-- Ensure that the data is inserted successfully
-- You can run this script in your MySQL server to insert the specified data into the Customers table.
-- All SQL keywords are in uppercase as per the requirement.
-- The file extension should be task_5.sql.
-- This script assumes that the Customers table already exists in the alx_book_store database.