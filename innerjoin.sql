
select * from Sales

--Creating Table1 & insertinting records in Table1
create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')


select * from table1

select * from table2

select table1.c1,table1.c2,table2.c3 from table1
inner join table2 on table1.c1 = table2.C1

-- Left Join or outer join --

select * from table1 left join table2 on table1.c1=table2.c1

select a.c1,a.c2,b.c3  from table1 a left outer join table2 b on a.c1=b.c1

-- Right Join or right outer join --

select * from table1 right join table2 on table1.c1=table2.c1

select a.c1,b.c1,b.c3 from table1 a right join table2 b on a.c1=b.C1

-- Left and Right Anti Join --

select * from table1 left join table2 on table1.c1=table2.c1
where table2.C1 is NULL

--Right Anti Join
select * from table1 right join table2 
on table1.C1 = table2.C1
where table1.C2 is null

-- Full Outer Join (Not reccomonded to use as it contains entire output og innner,left and right join)  -- 

select * from table1 FULL JOIN table2 on table1.c1=table2.c1 

select a.c1,b.c1,b.c3 from table1 a full join table2 b on a.c1=b.C1


-- Self Join --


select * from table1

select * from table1 a inner join table1 b
on a.C1 = b.C1

select a.C1,b.C2 from table1 a inner join table1 b
on a.C1 = b.C1

select a.C1,b.C2 from table1 a join table1 b
on a.C1 = b.C1

use sales database