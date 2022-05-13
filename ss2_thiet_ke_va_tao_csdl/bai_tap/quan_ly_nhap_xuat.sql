create database `quan_ly_nhap_xuat`;
use `quan_ly_nhap_xuat`;
create table `phieu_xuat`(
	`so_px` int not null primary key,
    `ngay_xuat` date null
);
create table `vat_tu`(
	`ma_vat_tu` varchar(20) not null primary key,
    `ten_vat_tu` varchar(50) null
);
create table `phieu_nhap`(
	`so_phieu_nhap` varchar(20) not null primary key,
    `ngay_nhap` date null
);
create table `don_dat_hang`(
	`so_don_hang` int not null primary key,
    `ngay_dat_hang` date null
);
create table `nha_cung_cap`(
	`ma_nha_cung_cap` varchar(20) not null primary key,
    `ten_nha_cung_cap` varchar(50) null,
    `dia_chi` varchar(90) null,
    `so_dien_thoai` int,
    foreign key (`so_dien_thoai`) references `so_dien_thoai_ncc` (`id_ncc`)
);
create table `so_dien_thoai_ncc`(
	`id_ncc` int auto_increment primary key,
    `so_dien_thoai` int unique
);
create table `chi_tiet_phieu_xuat`(
	`so_px` int,
    `ma_vat_tu` varchar(20),
    `don_gia_xuat` double,
    `so_luong_xuat` int,
    primary key (so_px, ma_vat_tu),
    foreign key (so_px) references `phieu_xuat` (so_px),
    foreign key (ma_vat_tu) references `vat_tu` (ma_vat_tu)
);
create table `chi_tiet_phieu_nhap`(
	`ma_vat_tu` varchar(20),
    `so_phieu_nhap` varchar(20),
    `don_gia_nhap` double,
    `so_luong_nhap` int,
    primary key (ma_vat_tu, don_gia_nhap),
    foreign key (ma_vat_tu) references `vat_tu` (ma_vat_tu),
    foreign key (so_phieu_nhap) references `phieu_nhap` (so_phieu_nhap)
);
create table `chi_tiet_don_dat_hang`(
	`ma_vat_tu` varchar(20),
    `so_don_hang` int,
	primary key (ma_vat_tu, so_don_hang),
    foreign key (ma_vat_tu) references `vat_tu` (ma_vat_tu),
    foreign key (so_don_hang) references `don_dat_hang` (so_don_hang)
);
create table `cung_cap`(
	`ma_nha_cung_cap` varchar(20),
    `so_don_hang` int,
    primary key (ma_nha_cung_cap, so_don_hang),
    foreign key (so_don_hang) references `don_dat_hang` (so_don_hang),
    foreign key (ma_nha_cung_cap) references `nha_cung_cap` (ma_nha_cung_cap)
);
