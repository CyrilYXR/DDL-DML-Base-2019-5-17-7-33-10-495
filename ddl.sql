-- **数据库级别：**  
--  显示所有数据库  
show databases;

--  进入某个数据库  
use student_examination_sys;

--  创建一个数据库  
create database new_database;

--  创建指定字符集的数据库  
create database new_database_utf8 default character set='utf8'; 

--  显示数据库的创建信息 
show create database new_database_utf8;

--  修改数据库的编码  
alter database new_database character set = 'GBK';
show create database new_database;
-- CREATE DATABASE `new_database` /*!40100 DEFAULT CHARACTER SET gbk */

--  删除一个数据库   
drop database new_database_utf8;

-- **表级别**
--  修改表名
use student_examination_sys;
alter table score rename to score1;

--  修改字段的数据类型
alter table score1 modify column score double;
desc score1;

--  修改字段名
alter table score1 change id s_id int not null; 
desc score1;

--  添加字段
alter table score1 add des varchar(20);
desc score1;

--  删除字段
alter table score1 drop des;

--  修改表的存储引擎
alter table subject engine=INNODB;
show table status from student_examination_sys where name='subject';

--  删除表的外键约束
show create table score1;
-- CREATE TABLE `score1` (
--  `s_id` int(11) NOT NULL,
--   `student_id` int(11) DEFAULT NULL,
--   `subject_id` int(11) DEFAULT NULL,
--   `score` double DEFAULT NULL,
--   PRIMARY KEY (`s_id`),
--   KEY `student_id` (`student_id`),
--   KEY `subject_id` (`subject_id`),
--   CONSTRAINT `score1_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
--   CONSTRAINT `score1_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8

alter table score1 drop foreign key score1_ibfk_2;
show create table score1;
-- CREATE TABLE `score1` (
--  `s_id` int(11) NOT NULL,
--   `student_id` int(11) DEFAULT NULL,
--   `subject_id` int(11) DEFAULT NULL,
--   `score` double DEFAULT NULL,
--   PRIMARY KEY (`s_id`),
--   KEY `student_id` (`student_id`),
--   KEY `subject_id` (`subject_id`),
--   CONSTRAINT `score1_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8

--  删除一张表
drop table score1;