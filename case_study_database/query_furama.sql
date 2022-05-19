use furama_resort;

-- Thêm mới Vị trí
insert into vi_tri values (1,'Le tan');
insert into vi_tri values (2,'Phuc vu');
insert into vi_tri values (3,'Chuyen vien');
insert into vi_tri values (4,'Giam sat');
insert into vi_tri values (5,'Quan li');
insert into vi_tri values (6,'Giam doc');

-- Thêm mới trình độ
insert into trinh_do values (1,'Trung cap');
insert into trinh_do values (2,'Cao dang');
insert into trinh_do values (3,'Dai hoc');
insert into trinh_do values (4,'Sau dai hoc');

-- Thêm mới bộ phận
insert into bo_phan values (1,'Sale-marketing');
insert into bo_phan values (2,'Hanh chinh');
insert into bo_phan values (3,'Phuc vu');
insert into bo_phan values (4,'Quan ly');

-- Thêm mới loại khách
insert into loai_khach values (1,'Diamond');
insert into loai_khach values (2,'Platinium');
insert into loai_khach values (3,'Gold');
insert into loai_khach values (4,'Silver');
insert into loai_khach values (5,'Member');

-- Thêm mới kiểu thuê
insert into kieu_thue values (1,'Theo gio');
insert into kieu_thue values (2,'Theo ngay');
insert into kieu_thue values (3,'Theo thang');
insert into kieu_thue values (4,'Theo nam');

-- Thêm mới loại dịch vụ
insert into loai_dich_vu values (1,'Vip');
insert into loai_dich_vu values (2,'Standard');
insert into loai_dich_vu values (3,'Normal');

-- Thêm mới khách hàng
insert into khach_hang values (1, 1, 'Tran Van Anh', "1996-06-09", 1, 199333444, '012345667', 'abczyx@gmail.com', 'Da Nang');
insert into khach_hang values (2, 3, 'Tran Van Binh', "2004-05-08", 1, 199444555, '0242445667', 'abczyx@gmail.com', 'Quang Tri');
insert into khach_hang values (3, 4, 'Nguyen Thi Chau', "1980-06-10", 0, 199333444, '012345667', 'abczyx@gmail.com', 'Da Nang');
insert into khach_hang values (4, 5, 'Trau Ngoc Duyen', "2000-11-08", 0, 199666777, '0778345667', 'abczyx@gmail.com', 'Quang Tri');
insert into khach_hang values (6, 1, 'Nguyen Ngoc Ngan', "1990-08-11", 0, 199888999, '07778435667', 'abczyx@gmail.com', 'Quang Tri');
insert into khach_hang values (7, 1, 'Nguyen Cao Ky Duyen', "1998-11-08", 0, 120666777, '0778345667', 'abczyx@gmail.com', 'Quang Tri');
insert into khach_hang values (8, 1, 'Tran Xuan Hinh', "1989-11-08", 0, 133666777, '0778345667', 'abczyx@gmail.com', 'Quang Tri');
insert into khach_hang values (9, 1, 'Truong Van Nam', "1997-06-15", 1, 144999888, '09048345667', 'abczyx@gmail.com', 'Quang Ngai');
insert into khach_hang values (10, 1, 'Nguyen Quoc Khanh', "2000-09-02", 1, 155996888, '09148987565', 'abczyx@gmail.com', 'Vinh');
insert into khach_hang values (11, 2, 'Nguyen Minh Tri', "1990-04-29", 1, 177996888, '0905375565', 'abczyx@gmail.com', 'Da Nang');

-- Thêm mới nhân viên
insert into nhan_vien values (1,'Nguyen Quang Phuc',"1998-06-29",'201739982',5000000,'0773230767','phucprokoten@gmail.com','Da Nang',1,1,1);
insert into nhan_vien values (2,'Nguyen Thien Duy',"1995-01-09",'200817728',10000000,'0905152561','thienduy95@gmail.com','Da Nang',1,2,3);
insert into nhan_vien values (3,'Huynh Nhat Hoang',"1996-04-13",'201100900',8000000,'0935765942','nhathoang96@gmail.com','Da Nang',3,2,1);
insert into nhan_vien values (4,'Nguyen Duy Trung',"2003-06-09",'201020030',7000000,'01213606510','duytrung2k3@gmail.com','Da Nang',1,3,2);
insert into nhan_vien values (5,'Tran Van Khanh',"1995-08-23",'201040060',11000000,'0934609222','khanhtran95@gmail.com','Da Nang',1,3,2);
insert into nhan_vien values (6,'Tran Xuan Truong',"1998-02-11",'201050070',9000000,'0945690333','xuantruong98@gmail.com','Quang Tri',3,1,3);
insert into nhan_vien values (7,'Tran Thien Son',"1990-08-13",'211122233',15000000,'0911550333','xuantruong98@gmail.com','Dak Lak',6,4,4);
insert into nhan_vien values (8,'Tran Hong Linh',"1997-01-09",'244552233',20000000,'09455550333','honglinh97@gmail.com','Lien Chieu',6,4,4);

-- Thêm mới dịch vụ
insert into dich_vu values (1,'Villa Standard',50,1000,10,3,2,'Standard','Search for detail',30,4);
insert into dich_vu values (2,'House Deluxe',30,800,8,2,1,'Deluxe','Search for detail',null,2);
insert into dich_vu values (3,'Room President',50,1500,4,4,1,null,'Search for detail',null,null);

-- Thêm mới dịch vụ đi kèm
insert into dich_vu_di_kem values (1,'Massage',50,'Paradise','San sang');
insert into dich_vu_di_kem values (2,'Karaoke',10,'Paradise','San sang');
insert into dich_vu_di_kem values (3,'Thuc an',15,'Paradise','San sang');
insert into dich_vu_di_kem values (4,'Nuoc uong',5,'Paradise','San sang');
insert into dich_vu_di_kem values (5,'Thue xe',20,'Paradise','San sang');

-- Thêm mới hợp đồng
insert into hop_dong values (1, "2020-05-06 08:00:00", "2020-06-07 12:00:00", 500, 3, 1, 1);
insert into hop_dong values (2, "2020-05-06 08:00:00", "2020-06-07 12:00:00", 500, 1, 7, 2);
insert into hop_dong values (3, "2021-08-09 12:00:00", "2021-09-10 17:00:00", 500, 1, 7, 2);
insert into hop_dong values (4, "2021-10-21 12:00:00", "2021-11-21 17:00:00", 500, 2, 6, 3);
insert into hop_dong values (5, "2021-11-21 09:00:00", "2021-12-31 21:00:00", 900, 4, 9, 1);
insert into hop_dong values (6, "2021-12-01 10:00:00", "2021-12-24 13:00:00", 300, 6, 10, 2);
insert into hop_dong values (7, "2020-12-01 10:00:00", "2021-01-01 13:00:00", 700, 5, 1, 3);
insert into hop_dong values (8, "2021-03-02 05:00:00", "2021-04-07 21:00:00", 450, 2, 2, 1);
insert into hop_dong values (9, "2021-08-09 13:00:00", "2021-09-11 12:00:00", 650, 3, 11, 3);
insert into hop_dong values (10, "2019-12-12 14:00:00", "2020-01-09 12:00:00", 1000, 8, 2, 1);

-- Thêm mới hợp đồng chi tiết
insert into hop_dong_chi_tiet values (1, 1, 1, 2);
insert into hop_dong_chi_tiet values (2, 2, 5, 3);
insert into hop_dong_chi_tiet values (3, 3, 3, 4);
insert into hop_dong_chi_tiet values (4, 4, 2, 5);
insert into hop_dong_chi_tiet values (5, 5, 1, 2);
insert into hop_dong_chi_tiet values (6, 6, 3, 4);
insert into hop_dong_chi_tiet values (7, 8, 1, 10);
insert into hop_dong_chi_tiet values (8, 9, 1, 20);

-- 2. Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * from nhan_vien where ho_ten like '% % H%' or ho_ten like '% % T%' or ho_ten like '% % K%';

-- 3. Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * from khach_hang where (year(current_date()) - year(ngay_sinh))   between 18 and 50;

-- 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng.
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select kh.ma_khach_hang, kh.ho_va_ten, lk.ten_loai_khach, count(hd.ma_khach_hang) so_lan_dat_phong from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
group by hd.ma_khach_hang having lk.ten_loai_khach = 'Diamond'
order by so_lan_dat_phong;

-- 5. Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien
select kh.ma_khach_hang, kh.ho_va_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, sum(dv.chi_phi_thue + hdct.so_luong * dvdk.gia) tong_tien
from hop_dong hd
join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
right join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
group by hd.ma_hop_dong;

-- 6. Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ
-- chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu 
from dich_vu dv
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where dv.ma_dich_vu not in (select ma_dich_vu from hop_dong where quarter(ngay_lam_hop_dong) = 1 and year(ngay_lam_hop_dong) = 2021);

-- 7. Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ
-- đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu 
from dich_vu dv
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where dv.ma_dich_vu in (select ma_dich_vu from hop_dong where year(ngay_lam_hop_dong) = 2020)
and dv.ma_dich_vu not in (select ma_dich_vu from hop_dong where year(ngay_lam_hop_dong) = 2021);

-- 8. Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
select distinct kh.ho_va_ten from khach_hang kh;

select kh.ho_va_ten from khach_hang kh group by kh.ho_va_ten;

-- 9. Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(ngay_lam_hop_dong) thang, count(ma_khach_hang) so_lan_dat_phong from hop_dong hd
where year(ngay_lam_hop_dong) = 2021
group by thang;

-- 10. Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
-- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem
select hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, sum(hdct.so_luong) so_luong_dich_vu_di_kem 
from hop_dong_chi_tiet hdct 
join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
group by hd.ma_hop_dong;

-- 11. Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem from hop_dong hd
right join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where kh.dia_chi = 'Quang Ngai' or kh.dia_chi = 'Vinh' and lk.ten_loai_khach = 'Diamond';

-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng),
-- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc
-- của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020
-- nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select hd.ma_hop_dong, nv.ho_ten, kh.ho_va_ten, kh.so_dien_thoai, dv.ten_dich_vu, sum(hdct.so_luong) so_luong_dich_vu_di_kem, hd.tien_dat_coc
from hop_dong hd 
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
where exists (select ma_dich_vu from hop_dong where quarter(ngay_lam_hop_dong) = 4 and year(ngay_lam_hop_dong) = 2020 and hop_dong.ma_dich_vu = dv.ma_dich_vu)
and not exists (select ma_dich_vu from hop_dong where quarter(ngay_lam_hop_dong) in (1,2) and year(ngay_lam_hop_dong) = 2021 and hop_dong.ma_dich_vu = dv.ma_dich_vu)
group by hd.ma_hop_dong;

-- 13. Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
select dvdk.*, sum(hdct.so_luong) so_lan_su_dung  from dich_vu_di_kem dvdk 
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem 
group by hdct.ma_dich_vu_di_kem 
having so_lan_su_dung = (select sum(so_luong) s from hop_dong_chi_tiet group by ma_dich_vu_di_kem order by s desc limit 1);

-- 14. Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất.
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung
select hd.ma_hop_dong, dv.ten_dich_vu, dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem) so_lan_su_dung from hop_dong_chi_tiet hdct
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by dv.ma_dich_vu having so_lan_su_dung = 1;

-- 15. Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi
-- mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi, count(nv.ma_nhan_vien) so_lan_lam_hop_dong from hop_dong hd
join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
where year(hd.ngay_lam_hop_dong) in (2020,2021)
group by nv.ma_nhan_vien having so_lan_lam_hop_dong <= 3;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
delete from nhan_vien nv where nv.ma_nhan_vien not in (select hd.ma_nhan_vien from hop_dong hd where year(hd.ngay_lam_hop_dong) between 2019 and 2021);

-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond,
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
update khach_hang kh set kh.ma_loai_khach = 1
where kh.ma_loai_khach = 2 and kh.ma_loai_khach in 
(select hd.ma_khach_hang from hop_dong hd
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where year(hd.ngay_lam_hop_dong) = 2021 and (dv.chi_phi_thue + hdct.so_luong * dvdk.gia) > 1000);

-- 18. Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
alter table hop_dong drop foreign key hop_dong_ibfk_2;

alter table hop_dong add foreign key (ma_khach_hang) references khach_hang (ma_khach_hang) on delete set null;

create view w_khach_hang_2020 as select kh.ma_khach_hang, hd.ngay_lam_hop_dong from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang 
where year(hd.ngay_lam_hop_dong) < 2021 group by kh.ma_khach_hang;

select * from w_khach_hang_2020;

delete from khach_hang where ma_khach_hang in (select ma_khach_hang from w_khach_hang_2020);

-- 19. Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
create view w_dich_vu_pho_bien as select dvdk.ma_dich_vu_di_kem, sum(hdct.so_luong) so_lan_su_dung, dvdk.gia from hop_dong_chi_tiet hdct
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by ma_dich_vu_di_kem having so_lan_su_dung >= 10;

select * from w_dich_vu_pho_bien;

update dich_vu_di_kem set gia = gia * 2 where ma_dich_vu_di_kem in (select ma_dich_vu_di_kem from w_dich_vu_pho_bien);

-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống,
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select ho_va_ten, ngay_sinh, so_cmnd, so_dien_thoai, email, dia_chi from khach_hang
union all
select ho_ten, ngay_sinh, so_cmnd, so_dien_thoai, email, dia_chi from nhan_vien;

-- 21. Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.

create view v_nhan_vien as select * from nhan_vien nv where nv.ma_nhan_vien in 
(select hd.ma_nhan_vien from hop_dong hd where date(hd.ngay_lam_hop_dong) = "2019-12-12");

select * from v_nhan_vien;

-- 22. Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
set sql_safe_updates = 0;
update nhan_vien set dia_chi = 'Hai Chau' 
where ma_nhan_vien in (select * from (select ma_nhan_vien from v_nhan_vien) as temp);

-- 23. Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó
-- với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
create view v_khach_hang as select * from khach_hang;

delimiter $$
create procedure sp_delete_customer(in p_id_customer int)
begin
	update hop_dong_chi_tiet set ma_hop_dong = null 
    where ma_hop_dong in (select ma_hop_dong from hop_dong where ma_khach_hang = p_id_customer);
    
    update hop_dong set ma_khach_hang = null
    where ma_khach_hang = p_id_customer;

	delete from khach_hang where ma_khach_hang = p_id_customer; 
end $$
delimiter ;

call sp_delete_customer(6);

-- 24.	Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu
-- sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung,
-- với nguyên tắc không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan.