
use Employees

select * from EmpRecords

select concat(FirstName,' ',LastName) as FullName from EmpRecords where EmpID>102

select  FirstName,LastName from EmpRecords where Salary<750000

select distinct FirstName,LastName from EmpRecords where Salary<750000
