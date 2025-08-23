/* Delete, Drop, Truncate */
use Employees

SELECT * into #temp from EmpRecords

select * from #temp

delete from #temp where LastName = '' or Department=null 

SELECT * into #temp1 from EmpRecords

select * from #temp1

/* delete without where clause (will delete entire data from the table) */
delete from #temp1

select * from #temp1

select * from #temp

/* Truncate delete the data from the table but the structure remains the same*/
TRUNCATE table #temp

/* drop will delete the data from the table as well as the structure of the table*/

drop table #temp

-- Delete: Delete certain records from the table 
-- if we will use delete without where clause condition then it will delete entire data but the structure remains same.

-- Truncate: delelt all the records(data) from the table and structure remains the same

-- Drop: Drop will delete the entire data from the table as well as the structure of the table