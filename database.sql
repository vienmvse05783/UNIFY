use master
go
drop database UNIFY

use master
go

create database UNIFY

go

use UNIFY

go



create table [User](
	id int identity,
	[name] varchar(50),
	username varchar(50) unique not null,
	[password] varchar(36) not null,
	avatar varchar(50),
	primary key(id)
)



create table Category(
	cate_id int identity primary key,
	cate_name nvarchar(255) not null,
)


create table Product(
	id int identity primary key,
	[name] nvarchar(255) not null,
	price float ,
	cate_id int references Category(cate_id) not null,
	image varchar(50),
)


create table [Order](
	order_id int identity primary key,
	customer_id int not null references [User](id),
	order_date timestamp not null
)

create table Order_Detail(
	order_id int references [Order](order_id),
	pro_id int not null references Product(pro_id),
	unit_price numeric(12,2) not null,
	quantity int not null,
	total numeric(12,2) not null,
	primary key (order_id,pro_id)
)

