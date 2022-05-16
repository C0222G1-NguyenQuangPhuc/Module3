create database `quan_ly_ban_hang`;
use `quan_ly_ban_hang`;
create table `customer`(
	`c_id` int primary key auto_increment,
    `c_name` varchar(50),
    `c_age` int
);
insert into customer (c_name, c_age) values ('Minh Quan',10); 
insert into customer (c_name, c_age) values ('Ngoc Oanh',20); 
insert into customer (c_name, c_age) values ('Hong Ha',50);

create table `order`(
	`o_id` int primary key auto_increment,
    `c_id` int,
    `o_date` date,
    `o_total_price` double,
    foreign key (`c_id`) references `customer` (c_id)
);
insert into `order` (c_id, o_date) values (1, "2006-03-21");
insert into `order` (c_id, o_date) values (2, "2006-03-23");
insert into `order` (c_id, o_date) values (1, "2006-03-16");

create table `product`(
	`p_id` int primary key auto_increment,
    `p_name` varchar(50),
    `p_price` double
);
insert into product (p_name, p_price) values ('May giat', 3);
insert into product (p_name, p_price) values ('Tu lanh', 5);
insert into product (p_name, p_price) values ('Dieu hoa', 7);
insert into product (p_name, p_price) values ('Quat', 1);
insert into product (p_name, p_price) values ('Bep dien', 2);

create table `order_detail`(
	`o_id` int,
	`p_id` int,
	`od_qty` int,
    primary key (`o_id`, `p_id`),
    foreign key (o_id) references `order` (o_id),
    foreign key (p_id) references `product` (p_id)
);
insert into order_detail values (1, 1, 3);
insert into order_detail values (1, 3, 7);
insert into order_detail values (1, 4, 2);
insert into order_detail values (2, 1, 1);
insert into order_detail values (3, 1, 8);
insert into order_detail values (2, 5, 4);
insert into order_detail values (2, 3, 3);

select * from customer;
select * from `order`;
select * from product;
select * from order_detail;

-- Hiện thị các thông tin o_id, o_date, o_price trong bảng `order`
select o.o_id, o.o_date, o.o_total_price from `order` o;

-- Hiện thị danh sách các khách hàng đã mua hàng, và danh sách các sản phẩm được mua bởi khách hàng
select c.c_name, p.p_name, od.od_qty from order_detail od
join `order` o on o.o_id = od.o_id
join customer c on c.c_id = o.c_id
join product p on p.p_id = od.p_id;

-- Hiện thị tên những khách hàng không mua bất kì một sản phẩm nào 
select c.c_name from customer c left join `order` o on c.c_id = o.c_id where o.c_id is null; 

-- Hiện thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
select o.o_id ma_hoa_don , o.o_date ngay_ban, sum(od.od_qty * p.p_price) as gia_hoa_don from order_detail od
join `order` o on o.o_id = od.o_id
join product p on p.p_id = od.p_id
join customer c on c.c_id = o.c_id
group by o.o_id;