CREATE DATABASE SalesDB;
USE SalesDB;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    city VARCHAR(50)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO customers VALUES
(1, 'Rahul', 'Male', 'Chennai'),
(2, 'Priya', 'Female', 'Mumbai'),
(3, 'Arjun', 'Male', 'Delhi'),
(4, 'Sneha', 'Female', 'Bangalore'),
(5, 'Vikram', 'Male', 'Hyderabad'),
(6, 'Meena', 'Female', 'Kolkata');
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Mobile', 'Electronics', 20000),
(103, 'Headphones', 'Accessories', 3000),
(104, 'Smart Watch', 'Accessories', 7000),
(105, 'Tablet', 'Electronics', 25000);
INSERT INTO orders VALUES
(1001, 1, 101, '2025-01-05', 2),
(1002, 2, 102, '2025-01-10', 3),
(1003, 3, 103, '2025-02-15', 5),
(1004, 4, 104, '2025-02-20', 1),
(1005, 5, 101, '2025-03-05', 1),
(1006, 6, 102, '2025-03-10', 4),
(1007, 1, 103, '2025-04-01', 2),
(1008, 2, 104, '2025-04-05', 2),
(1009, 3, 105, '2025-05-10', 1),
(1010, 4, 101, '2025-05-15', 3);
/*Top Selling Products*/
SELECT p.name AS product_name, SUM(o.quantity) AS total_units_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.name
ORDER BY total_units_sold DESC;
/*Monthly Revenue Trends*/
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, 
       SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY month
ORDER BY month;
/*Customer Purchase Summary*/
SELECT c.name, c.city, SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name, c.city
ORDER BY total_spent DESC;
/*Product Category Analysis*/
SELECT p.category, SUM(o.quantity) AS total_quantity
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category;
/*Gender-wise Revenue*/
SELECT c.gender, SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.gender;

