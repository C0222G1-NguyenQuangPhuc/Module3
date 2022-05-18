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
create view w_product as select product_code, product_name, product_price, product_amount, product_status from products;

select * from w_product;

create or replace view w_product as select product_code, product_name, product_price, product_status from products;

drop view w_product;

-- Tạo Store Procedure lấy tất cả thông tin của các sản phẩm trong bảng products
delimiter $$
create procedure sp_get_all_products()
begin
	select * from products;
end $$
delimiter ;

call sp_get_all_products();

-- Tạo store procedure thêm một sản phẩm mới
delimiter $$
create procedure sp_insert_new_product(in p_product_code varchar(10), in p_product_name varchar(45), p_product_price double, in p_product_amount int, in p_product_description varchar(90), in p_product_status varchar(45))
begin
	insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
    values (p_product_code, p_product_name, p_product_price, p_product_amount, p_product_description, p_product_status);
end $$
delimiter ;

call sp_insert_new_product('op5','Oppo 5', 400, 400, 'No more information', 'Moi ve');

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter $$
create procedure sp_edit_new_product(in p_id int, in p_price double)
begin
	update products set product_price = p_price where id = p_id;
end $$
delimiter ;

call sp_edit_new_product(2,250);

-- Tạo store procedure xoá sản phẩm theo id
delimiter $$
create procedure sp_delete_product_by_id(in p_id_delete int)
begin
	delete from products p where p.id = p_id_delete;
end $$
delimiter ;

call sp_delete_product_by_id(4);