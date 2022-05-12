create database `student-management`;
use `student-management`;
CREATE TABLE `student` (
    id INT,
    name VARCHAR(45),
    age INT,
    country VARCHAR(45),
    PRIMARY KEY (id)
);
create table `class`(
	id int,
    name varchar(45),
    primary key (id)
);
create table `teacher`(
	id int,
    name varchar(45),
    age int,
    country varchar(45),
    primary key (id)
);