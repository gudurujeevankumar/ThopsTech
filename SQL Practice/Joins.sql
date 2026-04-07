use practice;
show tables;

create table t1 (
id smallint,
name varchar(30),
email varchar(40)
);
select * from t1;
alter table t1 add primary key (id);

create table t2 (
t_id smallint,
t_name varchar(30),
t_email varchar(30)
);

select * from t2;

alter table t2 modify t_id smallint primary key;

select * from t1 join t2 on t_id = id;

