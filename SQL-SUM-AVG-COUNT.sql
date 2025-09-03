-- SQL-SUM-AVG-COUNT --

select * from Sales

select sum(Quantity) [Total Quantity] from dbo.sales

select sum(Quantity) [Total Quantity], sum(TotalAmount) [Total Amount] from dbo.sales

select avg(Quantity) [Average Quantity], avg(TotalAmount) [Average Amount] from dbo.sales

-- Sum of quantity, sum of totoal amount, avg of quantity, avg of total amount for each distinct product  --

select 
productid,
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [Total Amount],
avg(quantity) as [Average Quantity Sold],
avg(TotalAmount) as [Average Amount]
from dbo.Sales 
group by productid

select * from dbo.Sales

-- Sum of Quantity, Sum of amount, avg of quantity & avg of amount for distinct combination of productID and storeid --
select 
productID, 
StoreID,
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [Total Amount],
avg(quantity) as [Average Quantity Sold],
avg(TotalAmount) as [Average Amount]
from dbo.Sales 
group by productid,StoreID

select * from dbo.Sales

select count(*) [Number of rows] from dbo.Sales

select count(PaymentMethod) [Number of Records] from Sales

select count(DISTINCT productID) [distinct product] from sales

SELECT paymentmethod,count(distinct paymentmethod) from dbo.sales
group by paymentmethod

SELECT paymentmethod,count( paymentmethod) from dbo.sales
group by paymentmethod

SELECT paymentmethod,count(*) from dbo.sales
group by paymentmethod
