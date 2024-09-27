CREATE DATABASE telecome_schema;
USE telecome_schema;
# First create tables that have no foreign keys

CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    JoinDate DATE,
    City VARCHAR(50)
);

CREATE TABLE customerusage (
    UsageID INT PRIMARY KEY,
    CustomerID INT,
    DataUsedGB INT,
    MinutesUsed INT,
    FOREIGN KEY (CustomerID) REFERENCES telecom_schema.customers(CustomerID)
);

CREATE TABLE plan (
    PlanID INT PRIMARY KEY,
    PlanName VARCHAR(50),
    CostPerMonth DECIMAL(10, 2),
    DataLimitGB INT
);

# -------------------------------------------------------------------------------------------------------------------------------------------------------------

# Insert a few records into the tables to test your queries below.

INSERT INTO customers (CustomerID, FirstName, LastName, JoinDate, City)
VALUES
(1, 'Michael', 'Jordan', '2023-05-10', 'New York'),
(2, 'Jane', 'Smith', '2023-11-21', 'Los Angeles'),
(3, 'Bob', 'Johnson', '2023-03-15', 'Chicago'),
(4, 'Alice', 'Brown', '2022-07-25', 'Houston'),
(5, 'Charlie', 'Davis', '2021-08-30', 'Phoenix'),
(6, 'David', 'Wilson', '2023-01-05', 'Philadelphia'),
(7, 'Emily', 'Clark', '2022-09-17', 'San Antonio'),
(8, 'Frank', 'Martinez', '2021-12-01', 'San Diego'),
(9, 'Grace', 'Taylor', '2022-04-13', 'Dallas'),
(10, 'Henry', 'Lee', '2023-06-28', 'San Jose'),
(11, 'John', 'Doe', '2023-05-01', 'Miami'),
(12, 'Sarah', 'Miller', '2023-02-14', 'Austin'),
(13, 'Chris', 'Anderson', '2022-11-25', 'Boston'),
(14, 'Anna', 'Scott', '2022-05-10', 'Seattle'),
(15, 'James', 'Adams', '2021-03-30', 'Denver'),
(16, 'Linda', 'Johnson', '2023-07-21', 'Las Vegas'),
(17, 'Tom', 'Evans', '2022-08-08', 'Orlando'),
(18, 'Sophia', 'Brown', '2023-04-02', 'Portland'),
(19, 'Jacob', 'Wilson', '2023-06-19', 'Atlanta'),
(20, 'Ethan', 'Martinez', '2023-05-11', 'Detroit'),
(21, 'Emma', 'Garcia', '2022-12-12', 'Minneapolis'),
(22, 'Olivia', 'White', '2022-10-03', 'Charlotte'),
(23, 'Aiden', 'Harris', '2022-09-20', 'Baltimore'),
(24, 'Isabella', 'Walker', '2022-07-15', 'Nashville'),
(25, 'Elijah', 'Young', '2023-03-28', 'Salt Lake City'),
(26, 'Logan', 'Hall', '2021-11-01', 'Cleveland'),
(27, 'Mia', 'King', '2022-04-04', 'Raleigh'),
(28, 'Liam', 'Wright', '2023-02-22', 'St. Louis'),
(29, 'Sophie', 'Green', '2023-06-07', 'Kansas City'),
(30, 'Ella', 'Baker', '2022-01-09', 'New Orleans');

INSERT INTO customerusage (UsageID, CustomerID, DataUsedGB, MinutesUsed)
VALUES
(201, 1, 5, 120),
(202, 2, 9, 200),
(203, 3, 16, 300),
(204, 4, 12, 250),
(205, 5, 2, 50),
(206, 6, 5, 100),
(207, 7, 8, 180),
(208, 8, 3, 90),
(209, 9, 7, 130),
(210, 10, 7, 220),
(211, 11, 4, 110),
(212, 12, 6, 150),
(213, 13, 10, 270),
(214, 14, 5, 140),
(215, 15, 9, 230),
(216, 16, 15, 310),
(217, 17, 20, 350),
(218, 18, 7, 190),
(219, 19, 10, 210),
(220, 20, 12, 260),
(221, 21, 18, 330),
(222, 22, 5, 120),
(223, 23, 3, 80),
(224, 24, 2, 60),
(225, 25, 8, 180),
(226, 26, 10, 210),
(227, 27, 7, 170),
(228, 28, 11, 240),
(229, 29, 9, 220),
(230, 30, 4, 100);

INSERT INTO plan (PlanID, PlanName, CostPerMonth, DataLimitGB)
VALUES
(101, 'Silver Plan', 35.00, 5),
(102, 'Gold Plan', 50.00, 10),
(103, 'Platinum Plan', 70.00, 20),
(104, 'Family Plan', 90.00, 50),
(105, 'Unlimited Plan', 100.00, 500),
(106, 'Business Plan', 120.00, 200),
(107, 'Senior Plan', 25.00, 5),
(108, 'Silver Plan', 40.00, 6),
(109, 'Gold Plan', 55.00, 12),
(110, 'Platinum Plan', 75.00, 25),
(111, 'Family Plan', 95.00, 55),
(112, 'Unlimited Plan', 110.00, 600),
(113, 'Business Plan', 125.00, 250),
(114, 'Senior Plan', 30.00, 7),
(115, 'Silver Plan', 45.00, 8),
(116, 'Gold Plan', 60.00, 15),
(117, 'Platinum Plan', 80.00, 30),
(118, 'Family Plan', 105.00, 550),
(119, 'Unlimited Plan', 130.00, 700),
(120, 'Business Plan', 135.00, 300),
(121, 'Senior Plan', 35.00, 10),
(122, 'Silver Plan', 50.00, 12),
(123, 'Gold Plan', 65.00, 20),
(124, 'Platinum Plan', 85.00, 35),
(125, 'Family Plan', 110.00, 600),
(126, 'Unlimited Plan', 135.00, 800),
(127, 'Business Plan', 140.00, 400),
(128, 'Senior Plan', 40.00, 12),
(129, 'Silver Plan', 55.00, 10),
(130, 'Gold Plan', 75.00, 20);