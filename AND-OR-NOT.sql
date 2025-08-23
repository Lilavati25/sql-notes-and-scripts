/* AND, OR, NOT, BETWEEN, IN OPERATORS */

select * from EmpRecords

select * from EmpRecords where LastName='Doe' and EmpID=101

select * from EmpRecords where LastName='Doe' OR EmpID=101

select * from EmpRecords where (Department= 'IT' or Department='Finance') and Salary > 50000


select * from EmpRecords WHERE not FirstName = 'John'

select * from EmpRecords WHERE not FirstName = 'John' and not Salary=60000

select * from EmpRecords where not LastName = 'Doe'

select * from EmpRecords where not LastName = 'Doe' or not Department = 'IT'

select * from EmpRecords where Salary>=75000 and Salary<=85000

select * from EmpRecords where Salary BETWEEN 75000 and 85000

select * from EmpRecords WHERE EmpID BETWEEN 101 and 104

select * from EmpRecords where EmpID NOT BETWEEN 101 and 104

select * from EmpRecords WHERE department='HR' or department='IT'

select * from EmpRecords where department in('IT','HR')

select * from EmpRecords where department not in('IT','HR')
