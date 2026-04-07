create database practice;
use practice;

-- creation of table
create table users_data(
user_id int,
user_name varchar(20),
user_email varchar(20),
user_phno bigint,
password varchar(20)
);

select * from users_data;

-- inserting the data into table
insert into users_data values
(101,"Jeevan","jeevan@gmail.com",9192939400,"Pass123$"),
(102,"Kumar","kumar@gmail.com",9192939401,"Pass4545$"),
(103,"James","james@gmail.com",9192939402,"Pass23423$"),
(104,"Kane","kane@gmail.com",9192939403,"Pas234s123$"),
(105,"Ramu","ramu@gmail.com",9192939404,"Pas3s123$"),
(106,"Raju","raju@gmail.com",9192939405,"ss123$");

-- creating random view
create view user_contact as select user_id,user_name,user_phno from users_data;
select * from user_contact;
alter table user_contact rename users_contact; -- Error Code: 1347. 'practice.user_contact' is not BASE TABLE
drop view user_contact;

-- creating view for main table
create view users_contact as select user_id,user_name,user_phno from users_data;
select * from users_contact;
show tables;

-- trying to modify data in main table and seeing the changes in views table 
select * from users_data;
select * from users_contact;

update users_data set user_name = "Changed_name1" where user_id = 101;

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

-- SOLLUTION 
-- Make user_id a PRIMARY KEY

ALTER TABLE users_data ADD PRIMARY KEY (user_id);


update users_data set user_name = "Changed_name1" where user_id = 101;
-- After updating the data in main table, the data in views also changing

update users_contact set user_name = "Jeevan" where user_id = 101; -- changing data in views table (users_contact) the main table data also changing
select * from users_data;
select * from users_contact;

update users_data set user_phno = 7731032003 where user_id = 106; -- after updating the data in main table it will reflects in views table also
update users_contact set user_phno = 1234567890 where user_id = 106; -- after updating the data in views also reflects the data in main table 


-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

use student_db;
show tables;
select * from students;
show indexes in students;

create index department_indx on students (department);
create index indxs on students (dob,email,phone);
alter table students drop indxs where Column_name = phone;
-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where Column_name = phone' at line 1

alter table students drop indxs where seq_in_index = 3;
-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where seq_in_index = 3' at line 1

alter table students drop index indxs;







