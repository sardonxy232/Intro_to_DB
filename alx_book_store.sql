-- 0. A Magical Database for Your Dream Online Bookstore Adventure!
-- mandatory
-- Imagine you’re tasked with designing a MySQL database for an online bookstore. The database should store information about books, authors, customers, orders, and order details. Here’s an overview of the database schema:

-- Database Name: alx_book_store

-- Books: Stores information about books available in the bookstore.

-- book_id (Primary Key)
-- title VARCHAR(130)
-- author_id (Foreign Key referencing Authors table)
-- price DOUBLE
-- publication_date DATE
-- Authors: Stores information about authors.

-- author_id (Primary Key)
-- author_name VARCHAR(215)
-- Customers: Stores information about customers.

-- customer_id (Primary Key)
-- customer_name VARCHAR(215)
-- email VARCHAR(215)
-- address TEXT
-- Orders: Stores information about orders placed by customers.

-- order_id (Primary Key)
-- customer_id (Foreign Key referencing Customers table)
-- order_date DATE
-- Order_Details: Stores information about the books included in each order.

-- orderdetailid (Primary Key)
-- order_id (Foreign Key referencing Orders table)
-- book_id (Foreign Key referencing Books table)
-- quantity DOUBLE
-- NOTE : - The file extension should be alx_book_store.sql file - All SQL keywords should be in uppercase

-- Repo:

-- GitHub repository: Intro_to_DB
-- File: alx_book_store.sql

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
-- 1. Insert Sample Data
-- Insert sample data into Authors table
INSERT INTO Authors (author_name) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Isaac Asimov');
-- Insert sample data into Books table
INSERT INTO Books (title, author_id, price, publication_date) VALUES
('Harry Potter and the Philosopher\'s Stone', 1, 19.99, '1997-06-26'),
('A Game of Thrones', 2, 29.99, '1996-08-06'),
('The Hobbit', 3, 15.99, '1937-09-21'),
('Murder on the Orient Express', 4, 12.99, '1934-01-01'),
('Foundation', 5, 25.99, '1951-06-01'); 
