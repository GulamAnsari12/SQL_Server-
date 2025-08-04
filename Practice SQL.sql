CREATE table company (
ID int primary key,
Name varchar (20),
Gender varchar (10),
Salary int ,
)

SELECT * from company
 

INSERT into  company values (101, 'Ankush', 'Male', 15000),
(102, 'Pritam', 'Male', 17000),
(103, 'Amar', 'Male', 16000),
(104, 'Shahid', 'Male', 20000),
(105, 'Neelu', 'Female', 18000),
(106, 'Puja', 'Female', 22000),
(107, 'Amit', 'Male', 25000),
(108, 'Ankita', 'Female', 22000),
(109, 'Umar', 'Male' , 15000),
(110, 'Atik', 'Male' , 17000), 
(111, 'Fatima', 'Female', 21000),
(112, 'Vaibhv', 'Male', 25000),
(113, 'Muskan', 'Female' , 18000),
(114, 'Zainab', 'Female', 20000),
(115, 'Abdul', 'Male', 22000);

SELECT ID,Name, Salary from company where Salary >= 20000
SELECT ID,Name,Salary from company where Salary = 16000
SELECT ID, Name , Salary from company where Salary <=15000
SELECT ID, Name, Salary from company where Gender = 'Male'
SELECT * from company where Gender = 'female'
SELECT * from company where ID <= 105
SELECT * from company where ID  >= 110
SELECT * from company where Gender = 'MALE' AND Salary >= 20000
SELECT * from company where Gender = 'Female' and Salary >= 20000
SELECT * from company where Gender = 'Male' and Salary = 20000


SELECT * from company where Name like '[A-B-C]%'
SELECT * from company where Name like '[A,B,C]%'
SELECT * from company where Name like '_a%'
SELECT * from company where Name like '__i%'
SELECT * from company where Name like '[A-B-Z]%'
SELECT * from company where Name like '[A,B,Z]%'
SELECT * from company where Name like 'p%'
SELECT * from company where Name like 'p%' and Salary >= 20000


SELECT 'Mr' + ' ' + name, 'Rs' + ' ' + convert(varchar,Salary), Salary/12  from company 


SELECT *, ceiling(Salary), FLOOR(Salary), POWER(Salary,2), SQRT(Salary) from company

INSERT into company values (116, 'Mohit', 'Male' , 20000),
(117, 'Aryan', 'Male' , 18000),
(118, 'Monika', 'Female', 16000),
(119, 'Usha', 'Female', 19000),
(120, 'Nilu', 'Female', 22000)
;

SELECT * from company

SELECT Gender,SUM(Salary)as Salary  from company group by Gender
SELECT Gender,avg(Salary)as Salary  from company group by Gender
SELECT Gender,min(Salary)as Salary  from company group by Gender
SELECT Gender,max(Salary)as Salary  from company group by Gender
SELECT 'Rs'+ ' ' + CONVERT (varchar, Salary) from company
SELECT id, Name, Salary, CEILING(Salary) from company



INSERT into company values (0011, 'Hurry', 'Female', 1500000)
delete  from company where ID= 11




SELECT ROUND(454.454,1)
SELECT ROUND (11.33,1)
SELECT ROUND (444.55,2)
SELECT ROUND(4.56766,5)
SELECT GETDATE()
SELECT DATEADD(DAY, 28, '2025/03/24')

INSERT into company values (121, 'Fatima', 'Female', 18000),
(122, 'Kamal', 'Male', 22000),
(123, 'Sana', 'Female', 20000),
(124, 'Suhani' , 'Female', 25000),
(125, 'Mohit', 'Male', 24000);

SELECT * from company 
SELECT * from Empdetails

SELECT First_Name, Department, DATEDIFF('DAY', '01/05/2022') from Empdetails

insert into company values (126, 'Atul', 'Male', 20000),
(127, 'Mohsin', 'Male', 22000),
(128,'Kamal', 'Male', 18000),
(129, 'Priti', 'Female', 25000),
(130, 'Fasal', 'Male' , 23000);

SELECT Name,Salary from company WHERE Salary >=25000 AND Gender = 'MALE'
SELECT Name,Salary from company where Salary <= 15000

alter table Company add Department varchar(20)

SELECT * from company

UPDATE company set Department = 'Marketing' where ID = 2

UPDATE company set department = 'Sales' 
UPDATE company set department = 'Marketing' where ID = 101
UPDATE company set department = 'Marketing' where ID = 102
UPDATE company set department = 'Marketing' where ID = 107
UPDATE company set department = 'Marketing' where ID = 109
UPDATE company set department = 'Marketing' where ID = 111
UPDATE company set department = 'Finance' where ID = 106
UPDATE company set department = 'Finance' where ID = 108
UPDATE company set department = 'Finance' where ID = 113
UPDATE company set department = 'Finance' where ID = 116
UPDATE company set department = 'Finance' where ID = 120


SELECT * from company
SELECT * from data
SELECT * from Student

create table School (
RollNo int primary key,
Name varchar (20),
Gender varchar (10),
Address varchar (20))

SELECT * from School
sp_help school

insert into School values(1001, 'Aman', 'Male', 'Khalilabad'),
(1002, 'Moid', 'Male', 'Gorakhpur'),
(1003, 'Kamal', 'Male', 'Noida'),
(1004, 'Priti', 'Female', 'Azamgarh'),
(1005, 'Payal', 'Female', 'Balrampur');

SELECT * from School

SELECT * from School where Gender = 'Male'
SELECT * from school where Gender = 'Male' and Address = 'Khalilabad' and RollNo = 1001
SELECT * from School where Gender = 'Male' or RollNo = 10056
SELECT * from School where Gender = 'female' or RollNo = 1001 
SELECT * from School where RollNo > 1002
SELECT * from School where RollNo between 1003 and 1005

create table Puma(
ModelNo varchar(10) primary key,
Brand varchar(10),
Price int ,
Discount int ) 

sp_help puma

INSERT into puma(ModelNo,Brand,Price,Discount) values
('P1001', 'Puma', 3500, 5),
('M1002', 'Reebook', 4000, 10),
('S1003', 'Campus', 2500, 5),
('P1004', 'Puma', 5500, 10),
('V1005', 'Reebook', 3500, 5)

SELECT * from Puma

SELECT Brand, SUM(Price*Discount/100) from Puma group by Brand

SELECT * from Data
SELECT * from data where Gender = 'Female'
SELECT Department,COUNT('Director') from Data group by Department 
SELECT Department , count('Sales') from Data group by department
SELECT SUM(65+41+79+70+15+11)

SELECT * from Data where Country = 'BRAZIL' And Annual_Salary >= 200000

create table Tech (
ProID varchar (10) primary key,
Name varchar(20) ,
Price int ,
Company varchar (10)
)

ALTER table Tech drop column Dell
SELECT * from Tech
ALTER table tech add Company varchar (20)


INSERT into Tech values
('P101', 'Mouse', 350, 'Dell'),
('P102', 'Mouse', 400, 'Dell'),
('P103', 'Keyboard', 450, 'Dell'),
('P104', 'Keyboard', 500, 'Dell'),
('P105', 'Monitor', 2700, 'Dell'),
('P106', 'Monitor', 3100, 'Dell'),
('P107', 'CPU', 7000, 'Dell'),
('P108', 'CPU', 8500, 'Dell'),
('P109', 'CPU', 9000, 'Dell'),
('P110', 'Mouse', 300, 'Lenovo'),
('P111', 'Mouse', 450, 'Lenovo'),
('P112', 'Keyboard', 550, 'Lenovo'),
('P113', 'Keyboard', 600, 'Lenovo'),
('P114', 'Monitor', 3500, 'Lenovo'),
('P115', 'Monitor', 3800, 'Lenovo'),
('P116', 'Monitor', 3900, 'Lenovo'),
('P117', 'CPU', 7500, 'Lenovo'),
('P118', 'CPU', 8000, 'Lenovo'),
('P119', 'CPU', 8500, 'Lenovo'),
('P120', 'CPU', 8500, 'Lenovo'),
('M121', 'Mouse', 450, 'Hp'),
('M122', 'Mouse', 500, 'Hp'),
('M123', 'Mouse', 550, 'Hp'),
('M124', 'Keyboard', 600, 'Hp'),
('M125', 'Keyboard', 650, 'Hp'),
('M126', 'Monitor', 3500, 'Hp'),
('M127', 'Monitor', 3700, 'Hp'),
('M128', 'CPU', 8500, 'Hp'),
('M129', 'CPU', 9000, 'Hp'),
('M130', 'CPU', 9500, 'Hp')

SELECT * from Tech

SELECT * from Tech where company = 'dell'
SELECT * from Tech where company = 'dell' and Price <= 400
SELECT * from Tech where company = 'dell' and price >= 3000
SELECT * from Tech where Name = 'monitor' and company = 'dell'
SELECT * from Tech where company like '[_l]%'
SELECT * from Tech where Name = 'cpu'
SELECT * from Tech where Price >= 8000


SELECT * from Course
SELECT * from Student

SELECT s.Student_Name, c.Course_Name
FROM Student s
join Course c on  s.Course_ID = c.Course_Id


SELECT s.Student_Name, c.Course_Name
FROM Student s
left join Course c on  s.Course_ID = c.Course_Id



SELECT s.Student_Name, c.Course_Name
FROM Student s
right join Course c on  s.Course_ID = c.Course_Id



SELECT s.Student_Name, c.Course_Name
FROM Student s
inner join Course c on  s.Course_ID = c.Course_Id