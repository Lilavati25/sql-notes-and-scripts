-- SQL Max and Group BY  --

create database [Sales database]

CREATE TABLE dbo.Sales (
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    StoreID INT,
    SalespersonID INT,
    PaymentMethod VARCHAR(50)  -- New varchar column for payment method
);

-- Inserting more sample data (10 records), including NULL values
INSERT INTO dbo.Sales (ProductID, SaleDate, Quantity, TotalAmount, CustomerID, StoreID, SalespersonID, PaymentMethod)
VALUES 
(1, '2023-08-01', 10, 200.00, 101, 1, 201, 'Credit Card'),
(2, '2023-08-01', 5, 150.00, 102, 1, 202, 'Cash'),
(1, '2023-08-02', 8, 160.00, 103, 2, 203, 'Credit Card'),
(2, '2023-08-02', 7, 210.00, 104, 2, 204, 'Cash'),
(1, '2023-08-03', 6, 120.00, 105, 1, 201, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-04', 12, 300.00, 106, 3, 205, 'Credit Card'),
(1, '2023-08-04', 5, 100.00, 107, 3, 206, 'Debit Card'),
(2, '2023-08-05', 9, 270.00, 108, 1, 202, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-05', 15, 375.00, 109, 3, 207, 'Cash'),
(1, '2023-08-06', 7, 140.00, 110, 2, 203, 'Credit Card');

select * from dbo.Sales

-- Find out maximum value from total amount column --

select max(totalamount) [Maximum Amount] from Sales

-- Find out maximum value from sales date column --

select max(saledate) [Max SalesDate] from Sales

-- Find out maximum value from paymentmethod column --

select max(paymentmethod) [Max PayMode] from Sales

/* Note: max() ignores the null values if they are present in any records of the table and proceeds with the remaining records */

--maximum quantity sold for each product id --

select productid,max(quantity) [Maximum Quantity] from dbo.Sales
group by ProductID

-- maximum total amount values based on sale dates

select SaleDate,MAX(TotalAmount) [Max Amount] from dbo.sales
group by SaleDate

