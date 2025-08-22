create database Employees;

use Employees;

DESCRIBE Employees;

create table EmpRecords(EmpID INT PRIMARY KEY, FirstName Varchar(50), LastName Varchar(50), Department VarChar(50), Salary DECIMAL(10,2), HireDate Date);

INSERT INTO EmpRecords (EmpID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(101, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
(102, 'Jane', 'Smith', 'Finance', 60000.00, '2019-03-23'),
(103, 'Alice', 'Johnson', 'IT', 75000.00, '2021-07-10'),
(104, 'Bob', 'Brown', 'Marketing', 55000.00, '2018-09-30'),
(105, 'Charlie', 'Davis', 'IT', 70000.00, '2022-02-20'),
(106, 'John', 'Doe', 'HR', 50000.00, '2020-01-15');

select * from EmpRecords;

select FirstName,LastName from EmpRecords;

select EmpID, concat(FirstName,' ',LastName) from EmpRecords;

select EmpID, concat(FirstName,' ',LastName) as FullName from EmpRecords;

## Practise

show tables;

describe EmpRecords;

select * from EmpRecords where Department='IT';



