-- Group By --

use [Sales database]

select * from dbo.Sales

select PaymentMethod, sum(totalamount) as [sum of Sales] from dbo.sales
group by PaymentMethod

select ProductID,PaymentMethod, sum(totalamount) as [sum of Sales] from dbo.sales
group by ProductID,PaymentMethod 
order by ProductID