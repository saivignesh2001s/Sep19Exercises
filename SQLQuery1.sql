--creating database
create database shopping

--present database
use shopping

--creating tables
create table customer(
custid int primary key,
custname varchar(20),
city varchar(20),
statename varchar(20)
)

create table products(
prodid int primary key,
prodname varchar(20),
unitprice int,
unitofmeasurement varchar(20),
QtyinStock int
)

create table sales_header(
invono int primary key,
invodate date,
invoamount int,
disPercent int

)

create table sales_detail(
invoid int,
custid int foreign key references customer(custid),
prodid int,
Quantitysold int
)

alter table sales_detail
add foreign key(prodid) references products(prodid)

alter table sales_detail
drop column Quantitysold

alter table sales_detail
add Qty int

create database library

use library

create table member(
member_id int primary key,
member_name char(25),
Acc_Open_Date Date,
Max_Books_Allowed int,
Penalty_Amount	int
)

create table books(
Book_No	int primary key,
Book_Name VarChar(30),
Author	Char(30),
Cost int,
Category Char(10)
)



create table issued(
Lib_Issue_Id int,
Book_No	int foreign key references books(Book_No),
Member_Id int foreign key references member(member_id),
Issue_Date	Date,
Return_date	Date
)





