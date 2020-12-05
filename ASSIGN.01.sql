create database Assignment01;
use Assignment01;
create table Member(Member_Id int(5),
Member_Name varchar(30),
Member_address varchar(50),
Acc_Open_Date date,
Membership_type varchar(20),
Penalty_Amount int(7),
constraint primary key(Member_Id));
insert into Member values(1001,"John","NewYork",10-12-2020 ,"Lifetime",500);
insert into Member values(1002,"Cena","NewJersy",10-12-2020 ,"Lifetime",550);
insert into Member values(1003,"Johnny","NewCity",10-12-2020 ,"Lifetime",400);
insert into Member values(1004,"Cena","NewTown",10-12-2020 ,"Lifetime",450);
describe member;
alter table member drop column Penalty_Amount ;
select *from member;

create table book(
book_no int (3),
book_name varchar (20),
Author varchar (20),
cost int (3),
category varchar (15));
insert into book values(101,"Let Us C","Denish Ritchie",450,"System");
insert into book values(102,"Oracle-Complete Ref","Loni",550,"System");
insert into book(book_no,book_name,Author,cost ,category ) values(103,"Mastering SQL","Loni",250,"System");
insert into book values(104,"PL SQL-Ref","ScottUrman",750,"Database");
UPDATE book SET cost=300 , category="RDBMS" where book_no=103;
select * from book;

create table issue(
Lib_Issue_Id int (5),
Book_No int (3),
Member_Id int(1) not null,
Issue_Date date,
Return_date date
);
insert into issue values (7001,101,1,2006-12-10," ");
insert into issue values (7002,102,2,date_format("2006-12-25","%d %M %y")," ");
insert into issue values (7003,103,3,date_format("2006-12-25","%d %M %y")," ");
insert into issue values (7004,104,4,date_format("2007-1-15","%d %M %y")," ");
insert into issue values (7005,105,5,date_format("2007-6-04","%d %M %y")," ");
select *from issue;