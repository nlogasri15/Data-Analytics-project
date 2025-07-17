CREATE DATABASE OnlineRetail;
USE OnlineRetail;

CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Products (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price INT
);

CREATE TABLE Orders (
    OrderID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Customers (CustomerID, CustomerName, City, Country) VALUES
('C001', 'Arjun Kumar', 'Chennai', 'India'),
('C002', 'Priya Sharma', 'Mumbai', 'India'),
('C003', 'John Smith', 'New York', 'USA'),
('C004', 'Emma Watson', 'London', 'UK'),
('C005', 'Liu Wei', 'Beijing', 'China'),
('C006', 'Sara Ali', 'Delhi', 'India'),
('C007', 'Carlos Ruiz', 'Madrid', 'Spain'),
('C008', 'Maria Gomez', 'Mexico City', 'Mexico'),
('C009', 'David Miller', 'Sydney', 'Australia'),
('C010', 'Ravi Patel', 'Bangalore', 'India'),
('C011', 'Chen Yong', 'Shanghai', 'China'),
('C012', 'William Brown', 'Chicago', 'USA'),
('C013', 'Linda Johnson', 'Toronto', 'Canada'),
('C014', 'James Wilson', 'Manchester', 'UK'),
('C015', 'Fatima Noor', 'Karachi', 'Pakistan'),
('C016', 'Nguyen An', 'Hanoi', 'Vietnam'),
('C017', 'Laura Müller', 'Berlin', 'Germany'),
('C018', 'Sophia Rossi', 'Rome', 'Italy'),
('C019', 'Ahmed Hassan', 'Cairo', 'Egypt'),
('C020', 'Kim Soo', 'Seoul', 'South Korea'),
('C021', 'Daniel Silva', 'São Paulo', 'Brazil'),
('C022', 'Elena Petrova', 'Moscow', 'Russia'),
('C023', 'Juan Martinez', 'Barcelona', 'Spain'),
('C024', 'Oliver Jones', 'Auckland', 'New Zealand'),
('C025', 'Alice Martin', 'Paris', 'France'),
('C026', 'Ivan Ivanov', 'St Petersburg', 'Russia'),
('C027', 'Hannah Lee', 'Busan', 'South Korea'),
('C028', 'George Clark', 'Dublin', 'Ireland'),
('C029', 'Abdul Rahman', 'Dubai', 'UAE'),
('C030', 'Siti Nurhaliza', 'Kuala Lumpur', 'Malaysia');
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
('P001', 'Laptop', 'Electronics', 50000),
('P002', 'Smartphone', 'Electronics', 30000),
('P003', 'Headphones', 'Accessories', 3000),
('P004', 'Coffee Maker', 'Home', 7000),
('P005', 'Air Conditioner', 'Home', 40000),
('P006', 'Tablet', 'Electronics', 20000),
('P007', 'Office Chair', 'Furniture', 8000),
('P008', 'Bookshelf', 'Furniture', 6000),
('P009', 'Smart Watch', 'Accessories', 12000),
('P010', 'DSLR Camera', 'Electronics', 45000),
('P011', 'Gaming Console', 'Electronics', 35000),
('P012', 'Microwave', 'Home', 15000),
('P013', 'Vacuum Cleaner', 'Home', 10000),
('P014', 'Electric Kettle', 'Home', 2500),
('P015', 'Wireless Mouse', 'Accessories', 1500),
('P016', 'Monitor', 'Electronics', 15000),
('P017', 'Bluetooth Speaker', 'Accessories', 4000),
('P018', 'Recliner Sofa', 'Furniture', 25000),
('P019', 'Fitness Tracker', 'Accessories', 5000),
('P020', 'Printer', 'Electronics', 12000);
INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity, OrderDate) VALUES
('O001', 'C001', 'P001', 1, '2025-05-01'),
('O002', 'C002', 'P002', 2, '2025-05-03'),
('O003', 'C003', 'P010', 1, '2025-05-04'),
('O004', 'C004', 'P005', 1, '2025-05-05'),
('O005', 'C005', 'P006', 3, '2025-05-06'),
('O006', 'C006', 'P003', 4, '2025-05-07'),
('O007', 'C007', 'P007', 1, '2025-05-08'),
('O008', 'C008', 'P009', 2, '2025-05-09'),
('O009', 'C009', 'P004', 1, '2025-05-10'),
('O010', 'C010', 'P002', 1, '2025-05-11'),
('O011', 'C011', 'P012', 1, '2025-05-12'),
('O012', 'C012', 'P013', 2, '2025-05-13'),
('O013', 'C013', 'P014', 3, '2025-05-14'),
('O014', 'C014', 'P015', 2, '2025-05-15'),
('O015', 'C015', 'P016', 1, '2025-05-16'),
('O016', 'C016', 'P017', 4, '2025-05-17'),
('O017', 'C017', 'P018', 1, '2025-05-18'),
('O018', 'C018', 'P019', 3, '2025-05-19'),
('O019', 'C019', 'P020', 2, '2025-05-20'),
('O020', 'C020', 'P011', 1, '2025-05-21'),
('O021', 'C021', 'P001', 1, '2025-05-22'),
('O022', 'C022', 'P002', 1, '2025-05-23'),
('O023', 'C023', 'P003', 2, '2025-05-24'),
('O024', 'C024', 'P004', 1, '2025-05-25'),
('O025', 'C025', 'P005', 1, '2025-05-26'),
('O026', 'C026', 'P006', 3, '2025-05-27'),
('O027', 'C027', 'P007', 2, '2025-05-28'),
('O028', 'C028', 'P008', 1, '2025-05-29'),
('O029', 'C029', 'P009', 2, '2025-05-30'),
('O030', 'C030', 'P010', 1, '2025-06-01'),
('O031', 'C001', 'P011', 1, '2025-06-02'),
('O032', 'C002', 'P012', 1, '2025-06-03'),
('O033', 'C003', 'P013', 2, '2025-06-04'),
('O034', 'C004', 'P014', 3, '2025-06-05'),
('O035', 'C005', 'P015', 2, '2025-06-06'),
('O036', 'C006', 'P016', 1, '2025-06-07'),
('O037', 'C007', 'P017', 4, '2025-06-08'),
('O038', 'C008', 'P018', 1, '2025-06-09'),
('O039', 'C009', 'P019', 3, '2025-06-10'),
('O040', 'C010', 'P020', 2, '2025-06-11'),
('O041', 'C011', 'P001', 1, '2025-06-12'),
('O042', 'C012', 'P002', 2, '2025-06-13'),
('O043', 'C013', 'P003', 3, '2025-06-14'),
('O044', 'C014', 'P004', 1, '2025-06-15'),
('O045', 'C015', 'P005', 1, '2025-06-16'),
('O046', 'C016', 'P006', 2, '2025-06-17'),
('O047', 'C017', 'P007', 1, '2025-06-18'),
('O048', 'C018', 'P008', 2, '2025-06-19'),
('O049', 'C019', 'P009', 1, '2025-06-20'),
('O050', 'C020', 'P010', 1, '2025-06-20');
/*Total Sales Revenue*/
SELECT SUM(Products.Price * Orders.Quantity) AS TotalRevenue
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID;
/*Top 3 Selling Products*/
SELECT Products.ProductName, SUM(Orders.Quantity) AS TotalSold
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName
ORDER BY TotalSold DESC
LIMIT 3;
/*Customers by Country*/
SELECT Country, COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Country;
/*Monthly Sales Report*/
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, 
       SUM(Quantity * Price) AS Revenue
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Month;
/*Detailed Orders View*/
SELECT Orders.OrderID, Customers.CustomerName, Products.ProductName, 
       Orders.Quantity, Products.Price, Orders.OrderDate,
       (Orders.Quantity * Products.Price) AS TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON Orders.ProductID = Products.ProductID;
/*Most Active Customer*/
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID
ORDER BY OrderCount DESC
LIMIT 1;
/*Product Category Sales*/
SELECT Category, SUM(Quantity) AS TotalQuantity
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Category;
/*City-wise Revenue*/
SELECT Customers.City, SUM(Orders.Quantity * Products.Price) AS Revenue
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Customers.City;

