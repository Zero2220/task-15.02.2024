CREATE DATABASE Course

USE Course

CREATE TABLE Students(
Id int,
Fullname nvarchar(100) NOT NULL,
Email varchar(200) UNIQUE,
Point int CHECK (point >= 0 AND point <= 100)
)

INSERT INTO Students (Id,Fullname,Email,Point)
Values
(1,'Hikmet sa','hiko@gmail',70),
(2,'anar is','anar@gmail',40),
(3,'asef sa','asef@gmail',22)

SELECT * FROM Students WHERE Point > (SELECT AVG(Point) FROM Students);

SELECT Id, SUBSTRING(Fullname, 1, CHARINDEX(' ', Fullname) - 1) AS Name, Point
FROM Students;


SELECT SUBSTRING(Email,CHARINDEX('@',Email)+1 ,LEN(Email)) FROM Students



