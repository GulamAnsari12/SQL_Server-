Alter database SQL_Server modify name = SQL_Server_Queries

SELECT * from data

SELECT * from data where age >=55 and Gender = 'Female'
SELECT * from Data where Annual_Salary <= 100000
SELECT * from data where  Annual_Salary >50000 and Job_Title = 'Analyst'
SELECT * from data where Annual_Salary <= 100000 and Department = 'Accounting' and age >=40
SELECT * from data where Age <=30 and Annual_Salary >=100000 and Gender = 'Male'
SELECT * from data where Job_Title = 'Analyst' and Annual_Salary >=50000 and Gender = 'Male'
SELECT * from data where Department = 'Marketing' and Country = 'China' and Gender = 'Male' 
SELECT * from data where Department = 'Sales' and Age <=35 and Gender = 'Male' 
SELECT * from data where Annual_Salary >=150000 and Department = 'Marketing' and Gender = 'Female'
SELECT * from data where Job_Title = 'Director' and Department = 'Marketing' and  Age >=40
SELECT * from data where Country = 'Brazil' and Gender = 'Male' and Age >=40
SELECT * from data where Country = 'China' and Gender = 'Female' and Age >=40 
SELECT * from data where Gender = 'Female' and Country = 'China' and Annual_Salary >= 150000
SELECT * from data where Country = 'Brazil' and Gender  = 'Female' and Annual_Salary >= 150000
SELECT * from data where Age >=60 and Gender = 'Male' and Annual_Salary >= 150000
SELECT * from data where Department = 'Finance' and Gender = 'Male' and Country = 'United States' and Annual_Salary >=100000



*/*/Functions:- 
1)- Text Functions
2)- Number Functions
3)- Date Functions
4)- Conversion Function
5)- Aggrigate Functions */


--1)- Text Functions
SELECT EEID, Full_Name, UPPER(Full_Name) from data
SELECT EEID, Full_Name, UPPER(Full_Name), LOWER(Full_Name), LEFT(Full_Name, 3), RIGHT(Full_Name,3), SUBSTRING(Full_Name,4,2), CONCAT(Full_Name , '   ',Department)   from Data 
SELECT EEID,Full_Name , UPPER(Full_Name) from Data
SELECT EEID, Full_Name , Country , LOWER(Full_Name),lower(Country) from data 
SELECT EEID,Full_Name,City, Country, CONCAT(City,'  ', Country) from data 
SELECT EEID, Full_Name, LOWER(Full_Name) from Data
SELECT EEID, Full_Name, left(Full_Name,3) from Data
SELECT EEID, Full_Name, RIGHT(Full_Name,3) from Data
SELECT EEID, Full_Name, substring(Full_Name,4,6) from Data
SELECT EEID, Full_Name, concat(Full_Name,' ',Job_Title) from Data





--(2):- Number Functions
--ABS (Abslute)
-- Ceiling
-- Floor
-- Round
-- Power
-- SQRT
-- Sign

CREATE TABLE Empdetails (
EmpID VARCHAR(10) primary key,
First_Name VARCHAR (20),
Last_Name varchar(20),
Department varchar(20),
Salary decimal (10,2),
Bonus decimal (7,2),
DOB date,
DOJ date
);


-- This Table Create for Practice Number Fuctions --

INSERT into Empdetails values (1, 'Qasim' , 'Ansari', 'Accounting', 18000.52, 500.80, '01/05/2006', '01/07/2020')
INSERT into Empdetails values (5, 'Tim', 'Ben', 'Marketing', 23000.30, 1200.21, '1999/02/21', '2023/09/13'),
(6, 'Aryan' , 'Khan', 'Sales', 16000.92, 1300.34, '2001/02/09', '2000/09/28'),
(7, 'Aman', 'Sharma', 'Marketing', 21000.12, 1500.45, '2004/05/25', '2023/08/30'),
(8, 'Shubham', 'Sharma', 'Marketing', 18000.42, 1200.11, '1997/05/03','2018/08/05'),
(9, 'Anchal', 'Sharma', 'Accounting', 28000.89, 2500.50, '2000/07/20', '2022/12/05'),
(10, 'Md.', 'Arman',' Sales', 20000.32, 1800.89, '2001/07/15', '2023/06/03'),
(11, 'Rahul', 'Sharma', 'Marketing', 16000.32, 1000.22, '1998/11/01','2024/02/22'),
(12, 'Anjum', 'Khan', 'Marketing', 22000.22, 3500.71, '2002/06/11','2021/12/20'),
(13, 'Karan', 'Panday', 'Sales' , 24000.33, 2000.55, '2000/05/05', '2022/05/07'),
(14, 'Pratik', 'Yadav', 'Accounting', 26000.45, 1500.22, '2001/05/08', '2023/07/19'),
(15, 'Arbaz', 'Khan', 'Sales', 23000.44, 1700.87, '2005/11/01', '2022/07/02'),
(16, 'Saniya', 'Ansari', 'Marketing', 25000.44, 2100.88, '2002/12/10', '2022/09/02'),
(17, 'Kim', 'Gerth', 'Sales', 21000.19, 1200.55, '2001/04/14','2017/06/08'),
(18, 'Ruhi', 'Singh', 'Accounting', 25000.79, 1800.33, '2002/10/21', '2016/11/03'),
(19, 'Md.', 'Aslam', 'Marketing', 21000.56, 1500.88, '2005/11/07', '2022/06/02'),
(20, 'Ashraf', 'Khan', 'Sales', 22000.34, 20000.78, '1999/04/23', '2021/05/03')
;
UPDATE Empdetails set Department = 'Sales' where EmpID = 10 --(I used update, Because in Sale,Department was be space in front of Sales That's Why.  )
SELECT * from Empdetails

SELECT First_Name,Salary, ABS(Salary) from Empdetails 
SELECT First_Name,Salary, ceiling(Salary) from Empdetails -- This fucntion Increase 1 no always
SELECT First_Name,Salary, floor(Salary) from Empdetails  -- 
SELECT First_Name,Salary, sign(Salary) from Empdetails
SELECT First_Name,Salary, Round(Salary,5,2) from Empdetails
SELECT First_Name,Salary, power(Salary,1.5) from Empdetails
SELECT First_Name,Salary, sqrt(Salary) from Empdetails
SELECT First_Name, Salary, ceiling(salary) as Ceiling, FLOOR(Salary) as Floor, ROUND(Salary,4) as Round , SIGN(Salary) as Sign  from Empdetails


SELECT First_Name,Salary, POWER(Salary,2)as Power, SIGN(Salary) as sign, CEILING(Salary) as Ceiling, FLOOR(Salary)as Floor, Floor(Bonus)as Floor, 
ROUND(Salary, 89.6,1) as Round  from Empdetails
SELECT round(45.88,1), CEILING(45.10), FLOOR(45.91), SIGN(12), POWER(10,2) 
SELECT First_Name, Salary, ABS(Salary) as ABS, CEILING(Salary) as Cieling, FLOOR(Salary) as Floor ,ROUND(Salary,91.8) as Round,
POWER(Salary, 2) as Power , SQRT(Salary)as SQRT, SIGN(Salary) as Singn from Empdetails 
SELECT First_Name, Bonus, ABS(Bonus) as ABS, CEILING(Bonus) as Ceiling, FLOOR(Bonus) as Floor, ROUND(Bonus,55.55) As Round, 
POWER(Bonus,2) as Power, SQRT(Bonus) as SQRT, SIGN(Bonus) as Sign from Empdetails


--(3):- Date Functions
-- GetDate
-- DateAdd
-- Date IF
-- Date Part
-- Date Name

SELECT GETDATE()  --(After use this output will be excute Same Date, Hrs,Minute, Second as The System Timing)

SELECT DATEADD (yy,2,getdate())
SELECT DATEADD (mm, 4, getdate())
SELECT DATEADD (dd, 5, getdate())

SELECT DATEDIFF (dd, '12/05/2019', getdate())
SELECT DATEDIFF (mm, '12/05/2019', getdate())
SELECT DATEDIFF (yy, '12/05/2019', getdate())

SELECT DOJ , DATEDIFF(dd, '2020/01/05', GETDATE() ) as Date_Diffrence from Empdetails
SELECT DOJ , DATEDIFF(MM, DOJ, GETDATE() ) as Date_Diffrence from Empdetails
SELECT DOJ , DATEDIFF(YY, DOJ, GETDATE() ) as Date_Diffrence from Empdetails

SELECT DOJ, Datepart (YY, DOJ) as Year, DATEDIFF(MM, DOJ,GETDATE()) as Month from Empdetails where DOJ = '2020/01/07'

SELECT * from Empdetails where DATEPART (yy,DOJ) = 2020 and DATENAME (mm,DOJ) = 'January' 

SELECT First_Name,DOJ, DATEDIFF(dd, DOJ , GETDATE()) as Day_Of_Work from Empdetails

SELECT First_Name, DOJ, DATEPART(YY,DOJ), DATENAME(MM, DOJ)  from Empdetails where DATEPART (YY, DOJ) = 2020 and DATENAME(MM, DOJ) = 'January'
SELECT First_Name, DOJ, DATENAME(dd, DOJ) as Day from Empdetails
SELECT First_Name, DOJ, Datepart (MM, DOJ) as Month from Empdetails
SELECT First_Name, DOJ, Datepart (YY, DOJ) as Year from Empdetails
SELECT First_Name, DOJ, DATENAME(DD,DOJ) as Day_Name, DATEPART(MM,DOJ) as Month_Name , DATEPART(yy,DOJ) as Year from Empdetails
SELECT First_Name, Last_Name,DOJ from Empdetails where DATEPART (MM,DOJ) = 6 
SELECT First_Name, DOJ from Empdetails where DATEPART(yy,DOJ) = 2022
SELECT First_Name, DOJ, DATEDIFF(YY,DOJ, GETDATE()) from Empdetails where First_Name = 'Arpita'
SELECT First_Name, Last_Name, DOJ from Empdetails where  DOJ = '2024-02-22'

SELECT DATEDIFF (DD, '2006-07-01','2025-04-01'); 
SELECT DATENAME( dd, GETDATE())
SELECT DATEPART (MM, GETDATE())
SELECT DATENAME(WEEKDAY, '2025/04/01')






SELECT DATEADD(dd, DOJ, getdate()) from Empdetails

SELECT * from Empdetails

SELECT * from Empdetails 

--(4):- Conversion Function
-- Convert

SELECT First_Name, DOJ,  convert(varchar, DOJ, 3)as New_Date from Empdetails  --(3 & 29 Best)

SELECT First_Name, DOB, convert (varchar, DOB , 29) as New_Date from Empdetails --(3 & 29 Best)

SELECT First_Name, DOB, convert (varchar, DOB , 29) as New_Date from Empdetails --(3 & 29 Best)

SELECT  First_Name,'Rs ' + CONVERT(varchar, Salary), CEILING(Salary) as Ceiling, FLOOR(Salary) as Floor from Empdetails


--(5):- Aggrigate Function

-- Group By --
-- Count
-- Maximum
-- Minimum
-- Sum
-- Average

SELECT distinct Department from Empdetails
SELECT Department,COUNT(Salary)  from Empdetails group by Department

SELECT  Department , MAX(Salary) from Empdetails  group by Department

SELECT Department , SUM(Salary) as Salary, SUM(Bonus) as Bonus from Empdetails group by Department

SELECT Department,count(Salary), SUM(Salary), MAX(Salary), Min(Salary), AVG(Salary) from Empdetails group by Department with rollup

SELECT  sum(salary) from Empdetails 

SELECT Department, MAX(Salary) from Empdetails group by Department having SUM(Salary) > 100000 

ALTER TABLE empdetails add Country varchar(10)

SELECT EmpID,First_Name,Country, Department from Empdetails where Department = 'Accounting'
SELECT EmpID,First_Name,Country, Department from Empdetails where Department = 'Sales'
SELECT EmpID,First_Name,Country, Department from Empdetails where Department = 'Marketing'



UPDATE Empdetails set Country = case when EmpID = 14 then 'India' when EmpID = 18 then 'India' end ;  --These are use for multiple value update
UPDATE Empdetails set Country = case when EmpID = 4 then 'Nepal' when EmpID = 9 then 'Nepal' end


SELECT distinct(department) from Empdetails


UPDATE Empdetails set Country = 'India' where EmpID = 1
UPDATE Empdetails set Country = 'Nepal' where EmpID = 14
UPDATE Empdetails set Country = 'India' where EmpID = 18
UPDATE Empdetails set Country = 'Nepal' where EmpID = 4
UPDATE Empdetails set Country = 'Nepal' where EmpID = 9
UPDATE Empdetails set Country = 'China' where EmpID = 13
UPDATE Empdetails set Country = 'China' where EmpID = 10
UPDATE Empdetails set Country = 'China' where EmpID = 15
UPDATE Empdetails set Country = 'USA' where EmpID = 17
UPDATE Empdetails set Country = 'USA' where EmpID = 20
UPDATE Empdetails set Country = 'England' where EmpID = 3
UPDATE Empdetails set Country = 'England' where EmpID = 6
UPDATE Empdetails set Country = 'Canada' where EmpID = 11
UPDATE Empdetails set Country = 'Canada' where EmpID = 12
UPDATE Empdetails set Country = 'Australia' where EmpID = 16
UPDATE Empdetails set Country = 'Australia' where EmpID = 19
UPDATE Empdetails set Country = 'Canada' where EmpID = 2
UPDATE Empdetails set Country = 'Japan' where EmpID = 5
UPDATE Empdetails set Country = 'Japan' where EmpID = 7
UPDATE Empdetails set Country = 'Japan' where EmpID = 8


SELECT * from Empdetails

SELECT Country,Department, SUM(Salary) as SUM, max(Salary)as Max, MIN(Salary)as Min, AVG(Salary)as Avg from Empdetails group by Country, Department with rollup 

SELECT Country , max(Salary)as Max from Empdetails group by Country

SELECT Country,Department, SUM(Salary) as SUM, max(Salary)as Max, MIN(Salary)as Min, AVG(Salary)as Avg from Empdetails group by Country, Department with rollup 

SELECT Country, Department, SUM(Salary) as Sum , MAX(Salary)as Max, MIN(Salary)as Min, avg(Salary)as Avg from Empdetails group by Department, Country with rollup 


 --Multiple Table Query

 CREATE TABLE Course (
 Course_Id int primary key,
 Course_Name varchar (20) )

  CREATE TABLE Student(
 Student_ID int primary key,
 Student_Name varchar(20),
 Course_ID int)


 INSERT into Course values 
 (01, 'Power_Bi'),
 (02, 'Excel'),
 (03, 'SQL'),
 (04, 'Python')

 INSERT into Student values
 (1001, 'Amit', 01),
 (1002, 'Salman', 02),
 (1003, 'Kamal', 02),
 (1004, 'Mohan', 03),
 (1005, 'Shahid', 03),
 (1006, 'Puja', 04),
 (1007, 'Mohit', 04 )


  INSERT into Student(Student_ID,Student_Name) values 
  (1008, 'Krishna'),
  (1009, 'Nida')

 SELECT * from Student
 SELECT * from Course

 --Join--
SELECT * from Student join Course on Student.Course_ID = Course.Course_Id

--Inner join --
SELECT Student_ID,Student_Name, student.Course_Id, Course_Name from Student inner join Course on Student.Course_ID = Course.Course_Id
SELECT Student_ID, Student_Name, Student.Course_ID, Course_Name from Student inner join Course on Student.Course_ID = Course.Course_Id
SELECT * from Student
SELECT * from Course

SELECT Student.Student_Name, Course.Course_Name from Student inner join Course on Student.Course_ID = course.course_Id


-- Left outer Join --
SELECT Student_ID,Student_Name, student.Course_Id, Course_Name from Student  left outer join Course on Student.Course_ID = Course.Course_Id

SELECT Student.Student_Name, Course.Course_Name from Student left join Course on Student.Course_ID = Course.Course_Id
 
-- Right Outer Join -- 
SELECT Student_ID,Student_Name, student.Course_Id, Course_Name from Student  right outer join Course on Student.Course_ID = Course.Course_Id

-- Full Outer Join -- 
SELECT Student_ID,Student_Name, student.Course_Id, Course_Name from Student full outer join Course on Student.Course_ID = Course.Course_Id 


-- Sub_Query (Query Within Query) -- 

SELECT * from Empdetails where Salary > (select Salary from Empdetails where First_Name = 'Qasim')
SELECT * from Empdetails where Bonus < (select Bonus from Empdetails where First_Name = 'Salman')


SELECT * from Empdetails where Salary < (select Bonus from Empdetails where First_Name = 'Salman')
SELECT * from Empdetails where Salary > All (select Salary from Empdetails where Last_Name = 'Sharma')    -- All :-
SELECT * from Empdetails where Salary > Any (select Salary from Empdetails where Last_Name = 'Sharma')    -- Any :- 


SELECT * from Empdetails where Last_Name = 'Sharma'
SELECT * from Empdetails where Last_Name = 'Ansari'

-- Excute, Where Salary more than Accounting Department from minimum salary in accounting
SELECT * from Empdetails where Salary > any (select Salary from Empdetails where Department = 'Accounting')

SELECT * from Empdetails where Salary > all (select Salary from Empdetails where Country = 'China')
SELECT  country, min(Salary) from Empdetails group by Country

-- Excute Department which persons has last name is 'Ansari' 
SELECT * from Empdetails where Department in (select Department from Empdetails where Last_Name = 'Ansari' )

SELECT * from Empdetails where Salary > all (select Salary from Empdetails where Department = 'Sales')

-- Check where max Salary in each Department
SELECT Department, max(Salary) Max_Salary from Empdetails group by Department 

-- Check where min Salary in each Department
SELECT Department, min(Salary) from Empdetails group by Department 


SELECT First_Name, Department, Salary  from Empdetails

SELECT * from Empdetails where Salary > any (select salary from Empdetails where Department = 'Sales')

SELECT Department, min(Salary)  from Empdetails group by Department

SELECT * from Empdetails where Bonus > any (select Salary from Empdetails where Department = 'Sales')

SELECT * from Empdetails where Department = 'Sales'  



-- View --
CREATE View Vempdetails as 
SELECT EmpID,First_Name, Last_Name, Department, Salary, Country from Empdetails where Salary > any (select Salary from Empdetails where Department = 'Accounting')

CREATE view Tempdetails as
SELECT EmpID,First_Name, Last_Name, Department, Salary, Country from Empdetails where Salary > any (select Salary from Empdetails where Department = 'Accounting')


SELECT * from Vempdetails
SELECT * from Tempdetails

DROP View  Vempdetails


CREATE view Edt as 
SELECT EmpID,First_Name	,Department, Salary from Empdetails

SELECT * from Edt


CREATE View edata as 
SELECT EEID,Full_Name,Job_Title,Gender, Country, Annual_Salary from Data


-- Practice -- 
SELECT * from Empdetails
INSERT into Empdetails(EmpID,First_Name,Last_Name,Department,Salary,Bonus,DOB,DOJ) values(21, 'Ashad', 'Khan', 'Sales', 25000.55, 1600.23, '2005/05/12', '2022/02/15'),
(22, 'Mohit', 'Sharma', 'Marketing', 21000.47, 1200.37, '2002/11/11', '2024/05/22');
UPDATE Empdetails set Country = 'India' where EmpID = 21
UPDATE Empdetails set Country = 'India' where EmpID = 22

CREATE View Bonusdata as
SELECT EmpID, First_Name, Bonus from Empdetails


SELECT * FROM Bonusdata

-- Variables -- 
--(1) System Variables  :- Predefined, user can access 
-- system variable start with @@ sign

SELECT @@VERSION
SELECT @@LANGUAGE
SELECT @@SERVERNAME



--(2)-- Local/User :- Defined by user,Temprary storage, User can access
-- user variable start with @ sign 

DECLARE @name varchar(20)
SET @name  = 'Gulam'
SET @name = 'Md'
SELECT @name  as Name

Begin
DECLARE @n1 int
DECLARE @n2 int
DECLARE @n3 int
SET @n1 = 45
SET @n2 = 54
SET @n3 = @n1 + @n2

if @n3 / 2 >= 50
SELECT 'Pass'
else
SELECT 'Fail'
end


-- Storage Processor -- we can add Select, Dml, Conditions , store processor, Varibles and 
--1) System
--2) User Define



--1) System
sp_help
sp_tables
sp_databases

create proc
Dempdetails
as 
SELECT * from Empdetails
exec Dempdetails


create proc
EDempdetails
as 
SELECT EmpID, First_Name,  Last_Name, Department from Empdetails where Department = 'Sales'
exec EDempdetails


create proc
PEDempdetailsDept
@Dept varchar (10)
as 
SELECT EmpID, First_Name,  Last_Name, Department, DOJ from Empdetails where Department = @Dept
exec PEDempdetailsDept 'Marketing'

SELECT * from Empdetails

SELECT First_Name, Last_Name, Salary from Empdetails where Salary < all (select salary from Empdetails where First_Name = 'Qasim')

SELECT First_Name, Last_Name, Salary from Empdetails where Salary > all (select salary from Empdetails where First_Name = 'Qasim')

UPDATE Empdetails set Salary = 10000000 where EmpID = 1
UPDATE Empdetails SET Bonus = 50000.51 WHERE EmpID= 1
UPDATE Empdetails set salary= 5000 where empid=2


-- Order by --

SELECT * from Empdetails order by First_Name asc
SELECT * from Empdetails order by Salary desc
SELECT * from Empdetails order by EmpID desc