#(1)CREATE ONE DATABASE WHICH NAMES OFFICE............
#QUERY HERE FOR CREATING DATABASE

create database office;

#(2)CREATE ONE TABLE NAME EMPLOYEES...EMP_ID,EMP_NAME,SALARY,CITY,D_O_J.....
#QUERY HERE FOR CREATING TABLE

use office;
create table employees(emp_id int,emp_name varchar(40),
salary int,city varchar(40),d_o_j date);

#(3)ADD ONE COLUMN NAME MOBILE...........
#OUERY HERE FOR ADDING COLUMN

alter table employees add column mobile varchar(20);
desc employees;

#(4)REMOVE ONE COLUMN NAME CITY................
#OUERY HERE FOR REMOVING COLUMN

alter table employees drop column city;

#(5)RENAME ONE COLUMN EMP_ID TO E_ID
#QUERY HERE FOR RENAMING COLUMN

alter table employees rename column emp_id to e_id;

#(6)CHANGE DATATYPE OF COLUMN E_ID INT TO TINY_INT..........
#QUERY HERE TO CHANGE DATATYPE

alter table employees modify e_id tinyint;

#(7)INSERT 4 RECORDS WHERE 2 RECORDS WITH STANDARD METHOD AND ANOTHER TWO RECORDS 
#WITH EXTENSION METHOD............................
#OUERY FOR INSERTION WITH STANDARD METHOD

insert into employees(e_id,emp_name,salary,d_o_j,mobile)
values(1,"Sameer",25000,"2024-6-24","+911234567890");
insert into employees(e_id,emp_name,salary,d_o_j,mobile)
values(2,"Tarun",35000,"2025-5-25","+918458964762");

#QUERY FOR INSERTION WITH 	MULTIPLE METHOD
insert into employees(e_id,emp_name,salary,d_o_j,mobile)
values(3,"Kunal",20000,"2023-6-23","+911236459870"),
(4,"Kabeer",45000,"2025-8-1","+910321654987");

#EXTENSION METHOD
insert into employees set e_id = 5,emp_name="sunil",salary=5000,d_o_j="2000-12-12",mobile="+901234567890";

select * from employees;

#(8)UPDATE ANY ONE RECORD WHICH YOU WANT.........
#QUERY FOR UPDATE RECORD

update employees set emp_name = "Lokesh" where e_id = 1;
set sql_safe_updates = 0;

#(9)DELETE ANYONE RECORD AND PERFORM ROLL BACK................
#QUERY FOR DELETING AND ROLBACK

start transaction;
delete from employees where e_id = 1;
rollback;

#(10)RETRIVE DATA FROM EMPLOYEES TABLE..............
#QUERY FOR RETRIVING DATA FROM EMPLOYEE TABLE

select * from employees;

#(11)RENAME EMPLOYEES TABLE TO EMP.............
#QUERY FOR RENAMING THE TABLE

rename table employees to emp;

#(12)TRUNCATE THE TABLE EMP..................
#OUERY FOR TRUNCATE THE TABLE 

truncate table emp;
select * from emp;

#(13)DROP THE TABLE EMP....................
#QUERY FOR DROP THE TABLE 

drop table emp;
desc emp;

#(14)DROP THE DATABASE......................
#QUERY FOR DROM THE DATABASE

drop database office;
