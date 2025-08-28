use Employees

insert into dbo.EmpRecords
values (107,'Jay','','IT',73000,'2022-04-04')

select * from EmpRecords

select * from dbo.EmpRecords

insert into dbo.EmpRecords
values (111,'Jay',null,'IT',73000,'2022-04-04')

INSERT INTO DBO.EmpRecords (EmpID,FirstName,LastName)
VALUES (110,'Nitin','shamani')

select * from dbo.EmpRecords where LastName = null

select * from dbo.EmpRecords where Department is null

select * from dbo.EmpRecords where Department is not null