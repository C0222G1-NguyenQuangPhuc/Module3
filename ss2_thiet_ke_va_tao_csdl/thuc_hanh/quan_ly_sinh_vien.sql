create database `quanlysinhvien`;
use `quanlysinhvien`;
create table `class`(
	`class_id` int not null auto_increment primary key,
    `class_name` varchar(60) not null,
    `startdate` datetime not null,
    `status` bit
);
insert into `class` (class_name,startdate,status) values ("C0222G1 Fulltime","2022-12-05 15:30:00",b'0');
insert into `class` (class_name,startdate,status) values ("C0222G2 Parttime","2022-05-12 8:30:00",b'0');
insert into `class` (class_name,startdate,status) values ("C0222G3 Fulltime","2022-05-15 10:30:00",b'1');
select * from `class`;
create table `student`(
	`student_id` int not null auto_increment primary key,
	`student_name` varchar(30) not null,
	`address` varchar(50),
	`phone` varchar(50),
	`status` bit,
	`class_id` int not null,
	foreign key (class_id) references `class` (class_id) 
);
create table `subject`(
	`sub_id` int not null auto_increment primary key,
    `sub_name` varchar(30) not null,
    `credit` tinyint not null default 1 check (credit >= 1),
    `status` bit default 1
);
create table `mark`(
	`mark_id` int not null auto_increment primary key,
    `sub_id` int not null,
    `student_id` int not null,
    `mark` float default 0 check (mark between 0 and 100),
    `exam_times` tinyint default 1,
    unique (`sub_id`,`student_id`),
    foreign key (`sub_id`) references `subject` (sub_id),
    foreign key (`student_id`) references `student` (student_id)
);