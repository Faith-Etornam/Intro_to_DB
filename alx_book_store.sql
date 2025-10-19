CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE Books (
    book_id INT AUTOINCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT NOT NULL REFERENCES Authors(author_id),
    price DOUBLE NOT NULL,
    publication_date DATE
)

CREATE TABLE Authors (
    author_id INT AUTOINCREMENT PRIMARY KEY,
    author_name VARCHAR(215)
)

CREATE TABLE Customers (
    customer_id INT AUTOINCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)

CREATE TABLE Orders ( 
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES Customers(customer_id),
    order_date DATE
)

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT NOT NULL REFERENCES Orders(order_id),
    book_id INT NOT NULL REFERENCES Books(book_id),
    quantity DOUBLE NOT NULL 
)
