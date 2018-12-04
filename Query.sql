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
	email varchar(50),
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


create table CartItem(
	id int,
	quantity int,
	unitPrice float,
	pro_id int not null,
	cat_id int

)
create table Cart(
	id int,
	u_id int,
	buyDate date
)
