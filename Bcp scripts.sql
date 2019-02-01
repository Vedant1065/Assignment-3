--Bcp to export data from database to flat file
select * from employee;
bcp "select * from pubs.dbo.employee;" queryout Emp.txt  -c -T

--Bcp to import data from flat file to table
create table emp2 
(emp_id varchar(250),
fname varchar(100),
minit varchar(2),
lname varchar(100),
job_id int,
job_lvl int,
pub_id int,
hire_date datetime);

Bulk insert pubs.dbo.emp2 from 'C:\Users\Vedant\Desktop\Emp.txt';

select * from emp2;
