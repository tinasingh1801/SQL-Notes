#create table with constraints----------------
#basically the cons are two types coliumn level and table level
create database dd200;
use dd200;
create table emp(empid int primary key,
empname varchar(30) not null,doj date,
city varchar(50) default "bhopal" , age tinyint,
mobile varchar(20) unique,check(age>=18));

desc emp;
#primary key is the combination of unique and not null
#remove primary key
#alter table tablename drop primary key;
alter table emp drop primary key;
desc emp;

# when we want to remove not null and default we can remove it by using modify keyword
#check,primary and unquie will remove by drop keyword and add by add keyword...........
# here we are removing the not null by using modify...........

alter table emp modify empid int;
alter table emp modify empname varchar(30);

#here we are removing default by using modify
alter table emp modify city varchar(50);

#unique
#alter table tablename drop index/key uniquekeyname;
alter table emp drop key mobile;
desc emp;

#check 
#alter table tablename drop constraint checkconsname;
alter table emp drop constraint emp_chk_1;

use dd200;
desc emp;

#not null
#alter table tablename modify columnname datatype not null

alter table emp modify empname varchar(30) not null;

#add primary key 
# alter table tablename add primary key (columnname);

alter table emp add primary key (empid);

#add default key
# alter table tablename modify columnname datatype default "deafaultvalue";
alter table emp modify city varchar (50) default "Bhopal";
desc emp;

#check 
#check table tablename add constraint check(columncondition)

alter table emp add constraint check(age>=18);

#unique 
#alter table tablename add unique(columnname);
alter table emp add unique (doj);







