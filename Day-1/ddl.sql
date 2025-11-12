
show databases;
use sakila;
show tables;
desc actor;


#DDL
#create databse
#syntax
#create database databasename;

create database schooldb1;
use schooldb1;

#create table without constraint
#create table tablename(col1name datatype,col2name datatype......colNname datatype);

create table student(sid int,sname varchar(40),
city varchar(40),fees decimal(10,2),d_o_b date,
mobile varchar(20));

desc student;

#rename structure or table
#rename table tableoldname to tablenewname;

rename table student to stu;

#alter
# add column to an existing structure.
# alter table tablename add column columnname datatype;

alter table stu add column pincode varchar(20);
desc stu;

# remove column from an existing structure or table
# alter table tablename drop column columnname;

alter table stu drop column pincode;

# rename column to an existing structure
# alter table tablename rename column columnoldname to columnnewname

alter table stu rename column sid to s_id;

#change datatype in an existing structure
#alter table tablename modify columnname newdatatype;
alter table stu modify s_id tinyint;
alter table stu modify sname varchar(50);
alter table stu modify fees decimal(8,2);
use dummy;


#this is my new change
use dummy;
select * from customers;