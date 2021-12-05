create database Practice


create table Student(
id            int primary key,
name          varchar(50),
city          int,
course        int,
FOREIGN KEY(city) REFERENCES city(id),
FOREIGN KEY(course) REFERENCES course(id)
);


insert into Student(id,name,city,course)
values(1,'Mohammad Faraz',1,3),
(2,'Mohammad Yaqoob Ali',2,1),
(3,'Kashif Zia',2,2),
(4,'Marium Ahmed',2,4),
(5,'Eman Ali',3,3),
(6,'Muhammad Haris Ahmed',1,1),
(7,'Salman Khan',1,2),
(8,'Fasial Ali',4,2),
(9,'Alizeh Khan',3,4);


select * from Student



create table StuResult(
id             int Primary key,
name           varchar(50),
percentage     int,
city           varchar(50)
);


insert into StuResult(id,name,city,percentage)
values(1,'Mohammad Faraz','Karachi',85),
(2,'Mohammad Yaqoob Ali','Islamabad',53),
(3,'Kashif Zia','Islamabad',62),
(4,'Marium Ahmed','Quetta',71),
(5,'Eman Ali','Islamabad',52),
(6,'Muhammad Haris Ahmed','Quetta',35),
(7,'Salman Khan','Lahore',50),
(8,'Fasial Ali','Islamabad',80),
(9,'Alizeh Khan','Lahore',91);


select * from StuResult



select id,name,percentage,
CASE

when percentage >=60 and percentage <=100 then 'MERIT'
when percentage >=60 and percentage <80 then '1 DIVISION'
when percentage >=45 and percentage <58 then '2 DIVISION'
when percentage >=33 and percentage <40 then '3 DIVISION'
when percentage <=30  then 'FAIL'

END AS Grade
FROM StuResult



select id,name,percentage,
CASE

when percentage >=60 and percentage <=100 then 'MERIT'
when percentage >=60 and percentage <80 then '1 DIVISION'
when percentage >=45 and percentage <58 then '2 DIVISION'
when percentage <=30  then 'FAIL'
ELSE 'NOT CORRECT %'

END AS Grade
FROM StuResult




select 5 + 6


select id,name,percentage
from StuResult



select id,name,(percentage + 2) AS Upgrade_Percentage
from StuResult



select pi() AS PI_Value


select ROUND(4.312,2,1) AS ROUND_VALUE


select ROUND(43.715,1,1) AS ROUND_VALUE


select floor(4.65) AS FLOOR_VALUE


select CEILING(4.255) AS CEILING_VALUE


SELECT POWER(4,3) AS POWER_VALUE


SELECT SQRT(81) AS SQRT_VALUE


select ABS(-4.65) AS ABS_VALUE


select DEGREES(95) AS DEGREES_VALUE


SELECT EXP(8) AS EXP_VALUE


SELECT LEN(54) AS LEN_VALUE


SELECT LOG(50) AS LOG_VALUE


SELECT LOG10(5) AS LOG10_VALUE


SELECT FLOOR(1 + (RAND() * 6))


SELECT FLOOR(1 + (RAND() * 6))


SELECT 7 + RAND() *5


SELECT RAND() AS RAND_VALUE


SELECT ROUND(RAND() * 100,2) AS RAND_VALUE


SELECT SIGN(23.56) AS SIGN_VALUE


SELECT SIGN(-23.56) AS SIGN_VALUE




create table city(
id            int primary key,
city_name     varchar(30)
);


insert into city(id,city_name)
values(1,'Karachi'),
(2,'Lahore'),
(3,'Quetta'),
(4,'Islamabad');



select * from city



create table course(
id            int primary key,
course_name   varchar(30)
);


insert into course(id,course_name)
values(1,'MTech'),
(2,'MBA'),
(3,'MPhil'),
(4,'PhD');


select * from course



CREATE VIEW studentdata
AS
SELECT Student.id,Student.name,course.course_name from
Student INNER JOIN course
ON Student.city = course.id



Select * from studentdata



ALTER VIEW studentdata
AS
SELECT Student.id,Student.name,course.course_name,city.city_name from
Student INNER JOIN course
ON Student.course = course.id
INNER JOIN city
ON Student.city = city.id


select * from studentdata


CREATE INDEX Studcity on student (city)


select * from Student










