CREATE table Empl (
Emp_ID int primary key,
First_Name varchar (20),
Last_Name  varchar (20),
Department_ID  int )



INSERT into Empl values 
(101, 'Rahul', 'Kumar', 1),
(102, 'Shahjad', 'Khan', 2),
(103, 'Priya', 'Yadav' , 3),
(104, 'Mohit', 'Panday', null),
(105, 'Salam' ,'Ansari', 1)

SELECT * from Empl
SELECT * from Depart

CREATE table Depart (
Department_ID int primary key ,
Department_Name varchar (10))

SELECT * from Depart 

INSERT into Depart values 
(1, 'Sales'),
(2, 'Marketing'),
(3, 'IT'),
(4, 'HR' )


--1):- INNER JOIN -- 
SELECT e.Emp_ID, e.First_Name, e.Last_Name, d.Department_ID, d.Department_Name from Empl e 
JOIN Depart d on e.Department_ID = d.Department_ID

--2):- LEFT JOIN --
SELECT e.Emp_ID, e.First_Name, e.Last_Name, d.Department_ID, d.Department_Name from Empl e 
LEFT JOIN Depart d on e.Department_ID = d.Department_ID

--3):- RIGHT JOIN --
SELECT e.Emp_ID, e.First_Name, e.Last_Name, d.Department_ID, d.Department_Name from Empl e 
RIGHT JOIN Depart d on e.Department_ID = d.Department_ID

--4):- INNER JOIN (Retrieve Emp_Name, Department_Name Which ='Sales') --
SELECT e.First_Name, d.Department_Name from Empl e
join Depart d
on e.Department_ID=d.Department_ID
where Department_Name = 'Sales'



--5):- List all employees along with the names of their departments.
Select concat(e.First_Name,' ',e.Last_Name) as Emp_Name , d.Department_Name from Empl e
join Depart d on e.Department_ID=d.Department_ID



--6):- Find employees who work in a department named 'HR'.
Select e.First_Name from Empl e join Depart d
on e.Department_ID=d.Department_ID 
where Department_Name = 'HR'


--7):- Show how many employees work in each department.
Select COUNT(e.Emp_ID)  Total_Emp ,d.Department_Name from Empl e
join Depart d on e.Department_ID=d.Department_ID
Group by Department_Name


--8):- List all departments and the employees in them, including departments that have no employees.
Select d.Department_Name, COUNT(e.Emp_ID) as Emp from Depart d 
left join Empl e on d.Department_ID=e.Department_ID Group by d.Department_Name 


--9):- Identify departments that currently have no employees assigned.
Select top 1 d.Department_Name, COUNT(e.Emp_ID) as Emp from Depart d  
left join Empl e on d.Department_ID=e.Department_ID
group by d.Department_Name  



--10):- List all employees and their departments, even if an employee is assigned to a non-existent department.
Select CONCAT(e.First_Name, ' ',e.Last_Name) as Full_Name, d.Department_Name from Empl e 
Left Join Depart d on e.Department_ID=d.Department_ID



--11):- Show all possible combinations of employees and departments. (Cartesian product / CROSS JOIN)
Select e.First_Name, d.Department_Name from Empl e cross join Depart d 


--12):- Find employees whose department names start with a specific letter (e.g., 'I').
Select CONCAT(e.first_Name,e.last_Name) as Full_Name, d.Department_Name from Empl e 
join Depart d on e.Department_ID=d.Department_ID where Department_Name like 'I%'



--13):- Show departments that have two or more than two employees.
Select d.Department_Name, count(e.Emp_ID) as Total_Emp from Depart d join Empl e
on d.Department_ID=e.Department_ID group by Department_Name Having COUNT(e.Emp_ID) >= 2



--14):- Display the department with the highest number of employees.
Select Top 1 d.Department_Name, COUNT(e.Emp_ID) as Total_Emp from Depart d
join Empl e on d.Department_ID=e.Department_ID Group by Department_Name Order By Total_Emp Desc


--?? More Analytical JOIN Questions -- 

--15):- List full names of employees along with their department, sorted alphabetically by department.
Select CONCAT(e.First_Name,e.Last_Name) as Full_Name, d.Department_Name from Empl e
join Depart d on e.Department_ID=d.Department_ID  Order by Department_Name Asc

--16):- Find employees working in departments that have more than one employee.
Select d.Department_Name, COUNT(e.Emp_ID) as Total_Emp from Empl e
join Depart d on e.Department_ID=d.Department_ID Group by Department_Name Having COUNT(e.Emp_ID) > 1



--17):- Identify the department that has the fewest employees.
Select Top 1 d.Department_Name, COUNT(e.Emp_ID) as Total_Emp  from Depart d
join Empl e on d.Department_ID=e.Department_ID Group by Department_Name Order by Total_Emp Asc


--18):- List all departments and how many employees they have, including those with zero employees, sorted from most to least.
Select d.Department_Name, COUNT(e.Emp_ID) as Total_Emp from Depart d
Left Join Empl e on d.Department_ID=e.Department_ID Group by Department_Name Order by Total_Emp Desc



--19):- Retrieve all Data From Both Tables
Select * from Empl e
left outer join Depart d
on e.Department_ID=d.Department_ID
