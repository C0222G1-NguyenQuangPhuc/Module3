create database `quan_ly_sinh_vien`;
use `quan_ly_sinh_vien`;
create table `class`(
	`class_id` int not null auto_increment primary key,
    `class_name` varchar(60) not null,
    `startdate` date not null,
    `status` bit
);
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
insert into `class` values (1,"A1","2008-12-20",1);
insert into `class` values (2,"A2","2008-12-22",1);
insert into `class` values (3,"B3",current_date,1);

insert into `student`(`student_name`, `address`, `phone`, `status`, `class_id`) values ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into `student`(`student_name`, `address`, `status`, `class_id`) values ('Hoa', 'Hai phong', 1, 1);
insert into `student`(`student_name`, `address`, `phone`, `status`, `class_id`) values ('Manh', 'HCM', '0123123123', 0, 2);

insert into `subject` values (1, 'CF', 5, 1),
							 (2, 'C', 6, 1),
							 (3, 'HDJ', 5, 1),
							 (4, 'RDBMS', 10, 1);
insert into `mark` (`sub_id`, `student_id`, `mark`, `exam_times`) values (1, 1, 8, 1),
																		 (1, 2, 10, 2),
																		 (2, 1, 12, 1);
select * from `student`;

select * from `student` where `status` = true;

select * from `subject` where `credit` < 10;

select s.student_id, s.student_name, c.class_name 
from student as s join class as c on s.class_id = c.class_id
where c.class_name = 'A1'; 

SELECT s.student_id, s.student_name, sub.sub_name, m.mark
FROM student s join mark as m on s.student_id = m.student_id join subject sub on m.sub_id = sub.sub_id
WHERE sub.sub_name = 'CF';

-- Hi???n th??? t???t c??? c??c sinh vi??n c?? t??n b???t ?????u b???ng k?? t??? ???H???
select * from student where student_name like 'H%';

-- Hi???n th??? c??c th??ng tin l???p h???c c?? th???i gian b???t ?????u v??o th??ng 12
select * from class where startdate like '%12%';

-- Hi???n th??? t???t c??? c??c th??ng tin m??n h???c c?? credit trong kho???ng t??? 3-5.
select * from `subject` where `credit` between 3 and 5;

-- Thay ?????i m?? l???p(ClassID) c???a sinh vi??n c?? t??n ???Hung??? l?? 2.
update student set class_id = 2 where student_name = 'Hung';

-- Hi???n th??? c??c th??ng tin: StudentName, SubName, Mark.
-- D??? li???u s???p x???p theo ??i???m thi (mark) gi???m d???n. n???u tr??ng s???p theo t??n t??ng d???n.
select st.student_name, sb.sub_name, m.mark
from mark m
join `subject` sb on sb.sub_id = m.sub_id
join `student` st on st.student_id = m.student_id
order by m.mark desc, st.student_name;

-- ?????m s??? l?????ng nh??n vi??n ??? t???ng n??i
select address, count(student_id) so_luong_hoc_vien from student group by address;

-- T??nh ??i???m trung b??nh c??c m??n h???c c???a t???ng h???c vi??n
select s.student_id, s.student_name, avg(m.mark) dtb from student s
join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name;

-- Hi???n th??? ??i???m trung b??nh l???n 15
select s.student_id, s.student_name, avg(m.mark) dtb from student s
join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name
having dtb > 15;

-- Hi???n th??? th??ng tin h???c vi??n c?? ??i???m trung l???n nh???t
select s.student_id, s.student_name, avg(m.mark) dtb from student s
join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name
having avg(m.mark) >= all (select avg(m.mark) from mark m group by m.student_id);

-- Hi???n th??? t???t c??? th??ng tin m??n h???c c?? credit l???n nh???t
select * from `subject` where credit in (select max(credit) from `subject`);

-- Hi???n th??? c??c th??ng tin m??n h???c c?? ??i???m thi l???n nh???t
select * from `subject` sb
join mark m on m.sub_id = sb.sub_id
where m.mark in (select max(mark) from mark);

-- Hi???n th??? c??c th??ng tin sinh vi??n v?? ??i???m trung b??nh c???a m???i sinh vi??n, s???p x???p theo th??? t??? ??i???m gi???m d???n
select *, avg(m.mark) dtb from student st
join mark m on m.student_id = st.student_id
group by st.student_id
order by dtb desc;