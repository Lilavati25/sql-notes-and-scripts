/* Update Query */

use Employees
/* creating temp table to perform this operations */

select * into #1 from EmpRecords

select * from #1

/* Update table is always required to use with where clause otherwise it will update the entire table */

UPDATE #1 
set Department='HR' where Department is NULL

UPDATE #1
set Salary= 89000, HireDate='2023-09-01' where EmpID= 110

select * into #2 from dbo.EmpRecords

select * from #2

/* example what happenes if we write update statement without where clause  */

update #2
set Department='Finance'