DROP database `db_student`;
CREATE DATABASE `db_student`;
use `db_student`;
CREATE TABLE `Student`(
	`s_id` varchar(30) not null primary key,
	`s_name` varchar(30) not null,
	`s_birth` date not null,
	`s_sex` char(2) check(`s_sex`='男' or `s_sex`='女') not null
)DEFAULT CHARSET=utf8;
INSERT INTO `Student`(`s_id`,`s_name`,`s_birth`,`s_sex`) values('1802111136','张雨','2000-6-1','男');
INSERT INTO `Student`(`s_id`,`s_name`,`s_birth`,`s_sex`) values('1802111155','周青','2001-7-2','女');
INSERT INTO `Student`(`s_id`,`s_name`,`s_birth`,`s_sex`) values('1802111156','徐涛','1995-8-3','男');
INSERT INTO `Student`(`s_id`,`s_name`,`s_birth`,`s_sex`) values('1802111157','林荣旺','2000-9-4','男');
INSERT INTO `Student`(`s_id`,`s_name`,`s_birth`,`s_sex`) values('1802111158','李波','2000-10-5','男');
UPDATE `Student` SET `s_id` = 'soft1802111136' WHERE `s_id` = '1802111136';
select * from `Student` ORDER BY `s_birth` DESC limit 3;
SELECT * FROM `Student` WHERE `s_birth`>'1995-12-31';
SELECT `s_sex` AS '性别' , COUNT(`s_sex`) AS '个数' FROM `Student` group by `s_sex`;
DELETE FROM `Student` WHERE `s_name`='张雨';
DELETE FROM `Student`;