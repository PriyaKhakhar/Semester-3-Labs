
--1. Create Table

Create Table Emp(
	EmpID INT, 
	EmpName VARCHAR(50) NOT NULL, 
	Department VARCHAR(30), 
	City VARCHAR(30), 
	Salary INT, 
	Experience INT, 
	Gender CHAR(1) 
)

--2.
Insert into Emp
VALUES
(1, 'Rahul', 'IT', 'Rajkot', 55000, 4, 'M'), 
(2, 'Amit', 'HR', 'Ahmedabad', 45000, 3, 'M'), 
(3, 'Neha', 'IT', 'Rajkot', 55000, 5, 'F'), 
(4, 'Priya', 'Sales', 'Surat', 70000, 7, 'F'), 
(5, 'Jay', 'IT', 'Vadodara', 35000, 2, 'M'),
(6, 'Karan', 'HR', 'Rajkot', 42000, 3, 'M'), 
(7, 'Meera', 'IT', 'Surat', 80000, 8, 'F'), 
(8, 'Vijay', 'Sales', 'Ahmedabad', 60000, 6, 'M'), 
(9, 'Pooja', 'IT', 'Rajkot', 90000, 10, 'F'), 
(10, 'Ravi', 'Finance', 'Jamnagar', 50000, 5, 'M'), 
(11, 'Nisha', 'HR', 'Surat', 38000, 2, 'F'), 
(12, 'Harsh', 'IT', 'Ahmedabad', 65000, 7, 'M'), 
(13, 'Riya', 'Sales', 'Rajkot', 45000, 4, 'F'), 
(14, 'Dhruv', 'Finance', 'Surat', 75000, 9, 'M'), 
(15, 'Mihir', 'IT', 'Rajkot', 48000, 3, 'M')

--3.Display the names and salaries of employees whose salary is greater than ₹60,000.

SELECT EmpName,Salary FROM Emp where Salary > 60000

--4. Display employees who:   Work in the IT department  Have salary greater than ₹50,000  Have more than 3 years of experience 
select EmpName From Emp 
where Department = 'IT'
AND Salary > 50000
AND Experience > 3 

--5 Display employees who are either: From Rajkot OR from Ahmedabad
select * from  Emp 
where City = 'Rajkot' OR City = 'Ahmedabad'

--6 Display employees who:  Work in IT and earn more than ₹60,000  OR work in HR and earn more than ₹40,000
SELECT *
FROM Emp
WHERE (Department='IT' AND Salary>60000)
OR (Department='HR' AND Salary>40000);

--7.Display employees whose city is either Rajkot, Ahmedabad, or Surat using IN
SELECT *
FROM Emp
WHERE City IN ('Rajkot','Ahmedabad','Surat');

--8.Display employees who:  Belong to IT, HR, or Sales  AND earn more than ₹50,000. 
SELECT *
FROM Emp
WHERE Department IN ('IT','HR','Sales')
AND Salary>50000;

--9. Display employees whose salary is between ₹40,000 and ₹70,000. 
SELECT *
FROM Emp
WHERE Salary BETWEEN 40000 AND 70000;


--10.Display employees who:  Have salary between ₹40,000 and ₹80,000  OR have experience between 3 and 8 years.
SELECT *
FROM Emp
WHERE Salary BETWEEN 40000 AND 80000
AND Experience BETWEEN 3 AND 8;


--11.Display employees who: Have salary between ₹30,000 and ₹50,000  OR have experience between 10 and 15 years. 
SELECT *
FROM Emp
WHERE Salary BETWEEN 30000 AND 50000
AND Experience BETWEEN 10 AND 15;

--12. Display employees who: Are from Rajkot, Ahmedabad, or Surat  AND have salary between ₹40,000 and ₹80,000.
Select * FROM Emp 
where City IN ('Rajkot' , 'Ahmedabad' , 'Surat') 
and Salary BETWEEN 40000 AND 80000;

--13.Display employees who: Are from Rajkot or Ahmedabad  AND belong to IT or HR  AND salary is between ₹50,000 and ₹90,000.
SELECT *
FROM Emp
WHERE City IN ('Rajkot','Ahmedabad')
AND Department IN ('IT','HR')
AND Salary BETWEEN 50000 AND 90000;

--14.Write a query to display employees who: Belong to IT with salary greater than ₹70,000  OR belong to HR with salary greater than ₹50,000  OR are from Rajkot with experience greater than 10.
SELECT *
FROM Emp
WHERE (Department='IT' AND Salary>70000)
OR (Department='HR' AND Salary>50000)
OR (City='Rajkot' AND Experience>10);

--15. Increase the salary of all employees by 20%.
Update Emp set Salary= Salary* 0.2;

--16.. Increase salary by 15% for employees whose salary is below ₹40,000. 
UPDATE Emp SET Salary = Salary * 1.15
WHERE Salary < 40000

--17. Increase salary by 20% for employees who: Work in IT  Have more than 5 years of experience  Earn less than ₹60,000. 
UPDATE Emp set Salary = Salary * 0.2 
where  Department='IT'
AND Experience>5
AND Salary<60000;

--18. Increase salary by 10% for employees working in IT, HR, or Sales. 
update Emp set Salary= Salary * 1.10
where  Department IN ('IT','HR','Sales');

--19. Decrease salary by 10% for employees working in Finance. 
UPDATE Emp
SET Salary = Salary - (Salary * 0.1 )
WHERE Department='Finance';

--20.Increase salary by 15% for employees whose salary is between ₹40,000 and ₹60,000 and  whose experience is between 3 and 7 years. 
UPDATE Emp
SET Salary = Salary * 1.15
WHERE Salary BETWEEN 40000 AND 60000
AND Experience BETWEEN 3 AND 7;

--21.Change the city to Rajkot for employees who: Currently live in Ahmedabad or Jamnagar  AND earn more than ₹50,000. 
UPDATE Emp
SET City='Rajkot'
WHERE City IN ('Ahmedabad','Jamnagar')
AND Salary>50000;

--22. Delete employees whose salary is below ₹25,000.\
delete  from Emp
where Salary < 25000

--23. Delete employees who belong to either the HR or Sales department.
DELETE FROM Emp
WHERE Department IN ('HR','Sales')

--24.Delete employees whose experience is between 0 and 2 years and salary is below ₹30,000.
DELETE FROM Emp
WHERE Experience BETWEEN 0 AND 2
AND Salary < 30000;


--25. Delete employees who: Are from Rajkot or Ahmedabad  AND have salary below ₹35,000.
DELETE FROM Emp
WHERE City IN ('Rajkot','Ahmedabad')
AND Salary < 35000;

--26. Add a new column Email of type VARCHAR(100) to the Employee table. 
ALTER TABLE Emp
ADD Email VARCHAR(100);

--27. Change the datatype of EmpName from VARCHAR(50) to VARCHAR(100).
ALTER TABLE Emp
Alter COLUMN EmpName VARCHAR(100)

--28. Rename the column EmpName to EmployeeName. 
SP_RENAME  'Emp.EmpName' ,'EmployeeName'

 --29. Remove all records from the Employee table while keeping the table structure. (USE TRUNCATE) 
 TRUNCATE TABLE Emp

 --30.Delete the Employee table completely from the database.
 drop table Emp



