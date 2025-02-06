

SHOW DATABASES;

CREATE DATABASE alx_book_store;
USE alx_book_store;

SELECT database();
CREATE TABLE author(
    author_id int AUTO_INCREMENT PRIMARY key,
    author_name VARCHAR(215)
)

CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE
)

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR (215)
)

 use alx_book_store;

CREATE table orders(

    order_id INT AUTO_INCREMENT PRIMARY key,
    customer_id INT,
    order_date DATE

)

SELECT alx_book_store;

cREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
