-- 1)Write a query to create a database with name TCS.

create database TCS;
show databases;
use TCS;

-- 2)Write a query to create a table with name thopstech  having attributes id, name, age, marks.

create table thopstech (id varchar(20),name varchar(20),age int,marks int);
select * from thopstech;
desc thopstech;

-- 3)Write a query to insert 10 values into above table.

insert into thopstech values 	( 1,'Jeevan',20,20),(2,'ravi',19,15),(3,'krish',20,17),(4,'james',18,17),(5,'ramu',19,19),
								( 6,'Janu',20,20),(7,'vishnu',19,15),(8,'kaveri',20,17),(9,'raju',18,17),(10,'ramesh',19,19);
                                

-- 4)Write a query to add another attribute with name salary at first of the table.

alter table thopstech add column salary bigint first;

-- 5)Write a query to add another attribute with name dob at 4th  position in above table.

alter table thopstech add column dob date after name;

-- 6)Write a query to remove the  age attribute  from above table.

alter table thopstech drop age;

-- 7)Write a query to modify the datatype of id attribute.

alter table thopstech modify id int;

-- 8)Write a query to change the name of attribute marks to percentage .

alter table thopstech rename column marks to percentage;

-- 9)Write a query to add one attribute with name is phone_number and remove the percentage column at a single query.

alter table thopstech add column phone_number varchar(10) , drop column percentage;

-- ❓ 10)Write a query to increase the "size of name column" and add the gender attribute at a single query.('doubt') 

alter table thopstech modify name varchar(30), add gender varchar(6);

-- 11)Write a query to display the databases which are present in mysql workbentch.

show databases;

-- 12)Write a query to display the  tables present in Thopstech database.

show tables;

-- 13)Write a query to display details about the table.

desc table thopstech;

-- 14)Write a query to display details in a table.

desc thopstech;

-- 15)Write a query to display name and salary from the table thopstech.

select name, salary from thopstech;

-- 16)Write a query to change the name of  a table thopstech to THOPS.

rename table thopstech to THOPS;

-- 17)Write a query to add the another attribute with name address to the above table .

alter table THOPS add address text;
select * from THOPS;

-- 18)Write a query to remove the all the data from the table.

truncate table THOPS;

-- 19)Write a query to remove the table from the TCS database

drop table THOPS;

-- 20)Write a query to remove the TCS database.

drop database TCS;

-- 21)Now display the list of databases present in workbench.

show databases;
