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
	role_id int,
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
	des varchar(2000),
	image varchar(50),
)

create table Cart(
	id int primary key,
	u_id int references [User](id) not null ,
	buyDate date
)
create table CartItem(
	id int primary key,
	quantity int,
	unitPrice float,
	pro_id int references Product(id) not null,
	cat_id int references Cart(id) not null
)

