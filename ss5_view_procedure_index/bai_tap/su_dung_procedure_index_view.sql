create database demo;
use demo;
create table products(
	id int primary key auto_increment,
    product_code varchar(10),
    product_name varchar(45),
    product_price double,
    product_amount int,
    product_description varchar(90),
    product_status varchar(45)
);
insert into products(product_code, product_name, product_price, product_amount, product_description, product_status) values ('ip11','Iphone 11', 1000, 200, 'Search for more information','Con hang');
insert into products(product_code, product_name, product_price, product_amount, product_description, product_status) values ('xmn10','XiaoMi Note 10', 700, 100, 'Search for more information','Con hang');
insert into products(product_code, product_name, product_price, product_amount, product_description, product_status) values ('sss12','SamSung S12', 800, 300, 'Search for more information','Con hang');
insert into products(product_code, product_name, product_price, product_amount, product_description, product_status) values ('hw7','Huawei 7', 500, 50, 'Search for more information','Con hang');
insert into products(product_code, product_name, product_price, product_amount, product_description, product_status) values ('rm2','Realmi Neo 2', 1000, 200, 'Search for more information','Con hang');

-- Tạo chỉ mục cho bảng
select * from products where product_code = 'ip11';

explain select * from products where product_code = 'ip11';

create index i_product_code on products (product_code);

-- Tạo View để lấy các thông tin : product_code, product_name, product_price, product_status
create view w_product as select product_code, product_name, product_price, product_status from products;

select * from w_product;

-- Tạo Store Procedure lấy tất cả thông tin của các sản phẩm trong bảng products
delimiter $$
create procedure sp_get_all_products()
begin
	select * from products;
end $$
delimiter ;

call sp_get_all_products();