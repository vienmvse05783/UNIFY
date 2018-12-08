use master
go
drop database UNIFY
use master
go
create database UNIFY
go
use UNIFY
go
drop table CartItem
drop table Cart

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

drop table CartItem
drop table Cart

create table Cart(
	id varchar(32) primary key,
	u_id int references [User](id) not null ,
	buyDate date
)
create table CartItem(
	id varchar(32) primary key,
	quantity int,
	unitPrice float,
	pro_id int references Product(id) not null,
	cat_id varchar(32) references Cart(id) not null
)

