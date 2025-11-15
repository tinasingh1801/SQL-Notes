#DML
#standard insertion method
#single record insertion method
#insert into tablename(colname1,colname2......colnameN)
#values (datavalue1,dv2....dvn);

insert into stu (s_id,sname,city,fees,d_o_b,mobile)
values (101,"Sunil","bhopal",45000,"2000-10-02","+9112345678");
select * from stu;

#multiple record insertion method

insert into stu (s_id,sname,city,fees,d_o_b,mobile)
values(202,"Vikash","bhopal",45000,"2000-11-23","+9112345678"),
(303,"Tina","indore",40000,"2000-12-10","+9112345678"),
(404,"Supriya","jaipur",35000,"2003-11-24","+9123456789"),
(505,"Sneha","rewa",30000,"2001-10-23","+9134567890"),
(606,"Shivam","khandwa",55000,"2003-11-24","+9123456789"),
(707,"Tarun","guna",45000,"2001-10-23","+9134567890");

select * from stu;
desc stu;

alter table stu modify s_id int;

#insert into a tablename set col1="",col2="";
insert into stu set s_id = 10,sname="hii",city="bpl",fees=30000,d_o_b="2000-12-10",mobile="+91123456789";

#update
#update tablename set columnname="newdatavalue"
#where primarykeycol = value;
update stu set sname="Nitiya" where s_id=505;

#after solving an error 1175 reexcute the above action then it works

set sql_safe_updates = 0;
select * from stu;

# when you cant want to delete data parmenently so start transaction always
#delete
#delete from tablename where primarykeycolname=dv;

#here when you use delete the data is permanent delete
delete from stu where s_id = 505;
select * from stu;

#when you start transaction it means you can do it rollback 
start transaction;
delete from stu;
rollback;

#truncate is used to delete data from table but always the structure of table exits
truncate table stu;
select * from stu;

#drop command is used to delete the tables or database permanently no rollback here
#drop table
#drop table tablename;

drop table stu;

#drop database databasename;
drop database schooldb1;


