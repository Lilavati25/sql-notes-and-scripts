-- Having Clause --

use [Sales database]

select * from dbo.sales

-- Find total sales , average sales, total quantity, avg quantity, for each distinct product
SELECT
productid,
sum(TotalAmount) [Sum of sales],
sum(Quantity) [Total quantity],
avg(TotalAmount) [average of amount],
avg(quantity) [Average quantity]
from dbo.Sales
group by ProductID
having sum(TotalAmount) < 700 and sum(quantity) = 21