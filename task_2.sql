
CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215));

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    FOREIGN KEY (author_id) REFERENCES Authors (author_name) ,
    price DOUBLE,
    publication_date DATE);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE);

CREATE TABLE Order_Details(
    orderdetailid INT PRIMARY KEY, 
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE);
