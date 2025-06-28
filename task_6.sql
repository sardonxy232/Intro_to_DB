-- 6. Populating Your Database with Your More Data
-- mandatory
-- Write a script that inserts multiple rows in the table customer (database alx_book_store) in your MySQL server.

-- Data insertion

--     - `customer_id` = `2`
--     - `customer_name` = `Blessing Malik`
--     - `email` = `bmalik@sandtech.com`
--     - `address` = `124 Happiness  Ave.`
--     - `customer_id` = `3`
--     - `customer_name` = `Obed Ehoneah`
--     - `email` = `eobed@sandtech.com`
--     - `address` = `125 Happiness  Ave.`
--     - `customer_id` = `4`
--     - `customer_name` = `Nehemial Kamolu`
--     - `email` = `nkamolu@sandtech.com`
--     - `address` = `126 Happiness  Ave.`
-- The database name will be passed as an argument of the mysql command

-- The name of the file should be task_6.sql

-- Well done on completing this project! Let the world hear about this milestone achieved.

-- 🚀 Click here to tweet! 🚀

-- Repo:

-- GitHub repository: Intro_to_DB
-- File: task_6.sql

INSERT INTO customer(customer_id, customer_name, email, address)
VALUES
(2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');
-- Ensure that the data is inserted successfully
-- You can run this script in your MySQL server to insert the specified data into the Customers table.
-- All SQL keywords are in uppercase as per the requirement.
-- The file extension should be task_6.sql.
-- This script assumes that the Customers table already exists in the alx_book_store database.
-- If you want to insert more data, you can continue adding rows in the VALUES clause.
-- Make sure to separate each row with a comma and enclose string values in single quotes.
-- This script will insert multiple rows into the Customers table in the alx_book_store database.
-- You can run this script in your MySQL server to populate the Customers table with the specified data.
-- All SQL keywords are in uppercase as per the requirement.