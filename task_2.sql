-- 2. Create Your Magical Tables
-- mandatory
-- Write a script that creates all the tables below in alx_book_store in your MySQL server.

-- Tables

-- For each table/relation below, you can find the attributes in task 0
-- books
-- authors
-- customers
-- orders
-- order details
-- Name of the file should be task_2.sql

-- All SQL keywords should be in uppercase

-- Repo:

-- GitHub repository: Intro_to_DB
-- File: task_2.sql 

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
-- Ensure that the database and tables are created successfully
-- You can run this script in your MySQL server to create the alx_book_store database
-- and the required tables with the specified attributes.
-- All SQL keywords are in uppercase as per the requirement.
-- The file extension should be task_2.sql. 