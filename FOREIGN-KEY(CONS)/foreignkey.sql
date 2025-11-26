create database lotus;
use lotus;
create table products(Pid int primary key,PName varchar(30),Price int);
create table Users (Uid int primary key,UName varchar(30),City varchar(30));
desc products;
desc Users;

#creating a foreign key
create table orders(oid int primary key,
userid int,pid int,foreign key(userid) references Users(uid));
desc orders;

# add foreign key to an existing structure
# alter table tablename add foreign key (columnname)
# references parenttablename (primarykeycolumn);

alter table orders add foreign key (pid) references
products(pid);
desc orders;

# alter table tablename drop foreign key foreign key name;
# alter table tablename drop key nonunique key name;

alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;
desc orders;

alter table orders add foreign key (userid) references Users (uid);

alter table orders drop foreign key orders_ibfk_2;
alter table orders drop key pid;
use lotus;

#Here we perform the insertion of the values

insert into users(uid,uname,city)
values (1,"A","X"), (2,"B","X"), (3,"C","Y"),(4,"D","X"), (5,"E","X");

insert into orders (oid,userid,pid)
values(101,1,201);

select * from orders;
insert into orders(oid,userid,pid)
values(102,10,202);
#above query throw error because userid 10 doesnot exist in the parent table 

insert into orders(oid,userid,pid)
values(102,2,202),(103,1,202),(104,3,201),(105,2,203);

#Here we are deletation 
delete from users where uid = 5;
# here it deletes directly because child doesnot content that value so direct delete

select * from users;

delete from users where uid=1;
#above query throw error because
#uid 1 also exist in child table with columnname and userid

#here first we drop foreign key from orders table
alter table orders drop foreign key orders_ibfk_1;

#here we drop a key which always build with foreign key so delete that particular key 
alter table orders drop key userid;

# referncial integrity,adding foreign key and setting null value with referential intigrity
alter table orders add foreign key (userid)
references users (uid) on delete set null;


# here we delete uid 1 now because we remove their keys
select * from users;
delete from users where uid = 1;
select * from orders;

delete from orders where oid = 105;
use lotus;


#updatation start from here 
update users set uid =40 where uid=4;
select * from users;

update users set uid=20 where uid=2;
#above error because it also having child table value means exists in child table aslo

alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;

alter table orders add foreign key(userid)
references users(uid) on update cascade on delete cascade;
update users set uid=20 where uid = 2;



