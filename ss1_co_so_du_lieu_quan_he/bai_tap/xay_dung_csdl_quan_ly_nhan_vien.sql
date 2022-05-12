create database `student_management`;
use `student_management`;
CREATE TABLE `student` (
    id INT NOT NULL ,
    name VARCHAR(45) NULL,
    age INT NULL,
    country VARCHAR(45) NULL,
    PRIMARY KEY (id)
);
create table `class`(
	id int not null,
    name varchar(45) null,
    primary key (id)
);
create table `teacher`(
	id int not null,
    name varchar(45) null,
    age int null,
    country varchar(45) null,
    primary key (id)
);