-- where-having-clause --

SELECT * FROM Sales
WHERE TotalAmount>=160

SELECT ProductID, SUM(TotalAmount) [Sum OF SALES] FROM Sales
GROUP BY ProductID
having SUM(TotalAmount)<700

select productid, sum(totalamount) [sum of sales] from Sales
WHERE TotalAmount>=160
group by ProductID
having sum(totalamount)>=250
order by ProductID DESC

-- Difference between Where and having clause  --

/* WHERE vs HAVING (Short Notes)
WHERE

Filters rows before GROUP BY

Cannot use aggregate functions

Example: WHERE salary > 50000

HAVING

Filters groups after GROUP BY

Works with aggregate functions (SUM, AVG, COUNT etc.)

Example: HAVING AVG(salary) > 50000

 Both can be used together →
WHERE → filters rows first,
GROUP BY → groups data,
HAVING → filters grouped results. */


