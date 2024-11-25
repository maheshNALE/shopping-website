--create database Shopping_Website


use Shopping_Website
go


create table user1
(
	user_id int primary key,
	username varchar(30)not null,
	email varchar(30) not null,
	password  varchar(20) not null,
	confirm_password  varchar(15) not null,
	first_name varchar (25) not null,
	last_name varchar (25) not null,
	mobile_number varchar(25) not null,
)
go
--drop table user1


create table admin1
(
	admin_id int primary key,
	password  varchar(20) not null
)
go
insert into admin1 values('128','Admin')
go
--drop table admin1



create table product
(
	product_id int primary key,
	product_nm varchar(40) not null,
	product_category  varchar(40) not null,
	product_qty int,
	product_price int, 
	product_img varchar(255),
	product_description text,

)
go
--drop table product



CREATE TABLE Laptop 
(
    product_id INT,
    product_img VARCHAR(255),
    product_nm VARCHAR(255),
    product_price int,
    product_qty INT
)
go
-- Insert data from product table into Laptop table
INSERT INTO Laptop (product_id, product_img, product_nm, product_price, product_qty)
SELECT product_id, product_img, product_nm, product_price, product_qty
FROM product
WHERE product_category = 'Laptop'; -- Assuming laptops are identified by a specific category in product_category column
go



CREATE TABLE Mobile 
(
    product_id INT,
    product_img VARCHAR(255),
    product_nm VARCHAR(255),
    product_price int,
    product_qty INT
)
go
-- Insert data from product table into Laptop table
INSERT INTO Mobile (product_id, product_img, product_nm, product_price, product_qty)
SELECT product_id, product_img, product_nm, product_price, product_qty
FROM product
WHERE product_category = 'Mobile'; -- Assuming mobiles are identified by a specific category in product_category column
go



create table address_details
(
	fullnm varchar(40),
	address varchar(150),
	city  varchar(20),
	state varchar(20),
	pincode int, 
	delivery_time varchar(60),
	saturday_delivery bit,
	sunday_delivery bit,
	additional_info text,
	user_id int, -- This column will reference the user_id from the user table
    FOREIGN KEY (user_id) REFERENCES user1(user_id) -- This establishes a foreign key relationship with the user table

)
go
select * from address_details
--drop table address_details





create table payment
(
	fullnm varchar(40),
	whatsapp_number varchar(20),
	email varchar(45),
	transaction_id varchar(450)
)
go
--drop table payment



create procedure abc
as
begin

select * from user1
select * from admin1 
select * from product
select * from address_details
select * from payment


end
go


execute abc
drop procedure abc

