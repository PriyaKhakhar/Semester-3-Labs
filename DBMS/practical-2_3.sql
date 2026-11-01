------LAB 2-----

CREATE DATABASE CSE_3A_122

CREATE TABLE Deposit (
	ACTNO int ,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50) ,
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME 
)

INSERT INTO Deposit 
VALUES
(101 , 'MEET' ,'MAVDI' ,10000, '1-3-2025' ),
(102 , 'JAY', 'MADHAPAR' ,5000, '4-1-2026 '),
(103 ,'RAHUL', 'BEDI' ,3500, '7-1-2026 '),
(104, 'RIYA ','MAVDI' ,1200 ,'7-6-2025 '),
(105,' MANSI', 'KKV HALL', 3000,' 2-3-2024' ),
(106 ,'DIYA ','MADHAPAR ',2000,'1-3-2025 '),
(107 ,'MIRAL' ,'BEDI', 1000, '5-9-2025 '),
(108 ,'UDAY', 'UMIYA CHOWK', 5000, '2-7-2025 '),
(109, 'CHARMI', 'SHITAL PARK', 7000, '2-8-2026 '),
(110 ,'BHAVIN' ,'RING ROAD', 8000, '2-2-2025 '),
(111, 'BANSI', NULL , 9000,'1-1-2025')


CREATE TABLE STUDENT (
STDID INT ,
SNAME VARCHAR(50) ,
CITY VARCHAR(50) ,
SPI DECIMAL(4,2) ,
BRANCH VARCHAR(50) ,
)

INSERT INTO STUDENT
VALUES
(101,' HETVI',' RAJKOT', 7.40 ,'COMPUTER' ),
(102 ,'RAJ',' MORBI ',9.50 ,'MECHANICAL' ),
(103 ,'VISHAL',' RAJKOT', 9.00,'CIVIL' ),
(104 ,'DEEP',' SURAT ',8.80 ,'COMPUTER' ),
(105,' DHARMIK',' BARODA', 8.80,'CHEMICAL '),
(106,' KRUNAL','VAPI ',9.00 ,'CIVIL '),
(107,' RIYA','NAVSARI', 5.50,'COMPUTER '),
(108,' VRUNDA','KUTCH ',7.60,'ELECTRICAL '),
(109,'SMAIR','JAMNAGAR', 6.80 ,'EC '),
(110,'PARAG', 'SURAT ',7.00,'CHEMICAL '),
(111,' HARSH ','RAJKOT ',4.00,NULL )


CREATE TABLE EMPLOYEE
(
	EID INT ,
	FIRSTNAME VARCHAR(50),
	LASTNAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(7,2),
	CITY VARCHAR(50),
	GENDER VARCHAR(50),
	JOININGYEAR INT 
)

INSERT INTO EMPLOYEE 
values

(101 ,'HETVI',' PATEL' ,'ADMIN ',12000.00 ,'RAJKOT',' FEMALE ',2026 ),
(102,' RAJ ','MEHTA', 'IT ',14000.00 ,'AHMEDABAD ','MALE',2022 ),
(103 ,'VISHAL',' SHARMA', 'HR' ,15000.00 ,'BARODA', 'MALE' ,2020 ),
(104 ,'DEEP',' PATEL', 'ADMIN' ,12500.00, 'RAJKOT' ,'MALE',2026 ),
(105 ,'DHAVAL',' SHAH',' IT' ,14000.00 ,'JAMNAGAR', 'MALE' ,2024 ),
(106 ,'RIYA ','KAUR', 'IT' ,5000.00,'AHMEDABAD','FEMALE ',2024 ),
(107 ,'PARAG ','PANDYA' ,'HR ',7000.00 ,'RAJKOT' ,'MALE', 2025) ,
(108 ,'VRUNDA','VYAS' ,'SERVER', 10000.00, 'BARODA', 'FEMALE ',2022 ),
(109 ,'MEHUL',' SINGH' ,'HR' ,12000.00, 'MORBI ','MALE ',2020 ),
(110 ,'MUBIN ','PARMAR' ,'TRANSPORT', 12000.00,' SURAT ','MALE ',2021 ),
(111 ,'MAYANK ','PUROHIT','ACCOUNT' ,13000.00 ,NULL, 'MALE', 2020)

select avg(salary) ,  FIRSTNAME from EMPLOYEE group by firstname having salary < avg(salary)
-----lab 3-----

SELECT * FROM STUDENT

select SNAME , CITY FROM STUDENT

SELECT * FROM STUDENT WHERE BRANCH = 'COMPUTER'

SELECT SNAME FROM STUDENT WHERE STDID < 105

-- Give Student Name, City and SPI of student whose SPI is greater than 6.50.  
	SELECT  SNAME , CITY , SPI FROM STUDENT WHERE SPI > 6.50

---Give name of Student whose branch is COMPUTER and SPI is greater than 8.00
	SELECT  SNAME FROM STUDENT WHERE  BRANCH = 'COMPUTER ' AND SPI > 8.00

-- Give names of students whose ID is greater than 103 and belongs to Rajkot city. 
	SELECT  SNAME FROM STUDENT WHERE  CITY  = 'RAJKOT' AND STDID > 103

--Display names of students who belong to either ‘RAJKOT’ or ‘SURAT’ city (USE OR & IN). 
SELECT  SNAME FROM STUDENT WHERE  CITY  = 'RAJKOT' OR   CITY  = 'SURAT'

-- Display names of students with branch whose SPI is greater than 8.0 and ID is less than 105.
SELECT  SNAME ,BRANCH FROM STUDENT WHERE  STDID <105  AND SPI > 8.00

--Find all students whose SPI is greater than or equal to 7.0 and less than or equal to 9.0 (USE AND & BETWEEN). 
SELECT  SNAME  FROM STUDENT WHERE  SPI >= 7.00 AND SPI <=9.00

SELECT  SNAME  FROM STUDENT WHERE  SPI  BETWEEN 7.0 AND 9.0

-- Find all students who do not belong to ‘COMPUTER’ branch.
SELECT  SNAME  FROM STUDENT WHERE  BRANCH != 'COMPUTER'

--. Display Student ID, Name & SPI of students who belong to ‘COMPUTER’, ‘CIVIL’ or ‘CHEMICAL’ branch and ID is less than 104. 
SELECT  STDID,SNAME,SPI FROM STUDENT WHERE  BRANCH = 'COMPUTER ' OR  BRANCH = ' CIVIL ' OR BRANCH = 'CHEMICAL ' AND STDID <104

--Display all student IDs and names who do not belong to ‘COMPUTER’ or ‘CIVIL’ branch (USE NOT IN).
SELECT  STDID,SNAME,SPI FROM STUDENT WHERE  BRANCH NOT IN ('COMPUTER', 'CIVIL') 

--Display all student names other than ‘DEEP’ from STUDENT table (USE NOT, <>, !=). 

SELECT  SNAME  FROM STUDENT WHERE  SNAME != 'DEEP'

--Display student names whose branch is not available (NULL) in STUDENT table. 
SELECT  SNAME  FROM STUDENT WHERE  BRANCH is NULL

--Retrieve all unique branches name from STUDENT table. 
select DISTINCT BRANCH FROM STUDENT  

--Retrieve first 50% records from STUDENT table. 
SELECT TOP 50 PERCENT * FROM STUDENT 

-- Retrieve first five student IDs from STUDENT table. 
SELECT TOP 5 STDID FROM STUDENT 

--PART B 
-- Display all the details of first five students from STUDENT table. 
SELECT TOP 5 * FROM STUDENT 

--. Display all the details of first three students whose SPI is greater than 8.0.
SELECT TOP 3 * FROM STUDENT WHERE SPI>8.0

-- Display Student ID, Name of first five students whose branch does not belong to ‘COMPUTER’ branch.
SELECT TOP 5 STDID,SNAME FROM STUDENT WHERE BRANCH != 'COMPUTER'

-- Select all details with student IDs not in the range 105 to 109. 
	select * from STUDENT Where STDID NOT between 105 and 109

-- Select all records from STUDENT where SPI is greater than 7.0 and less than or equal to 9.0, and student ID is between 102 and 108.
select * from STUDENT WHERE SPI>7.0 AND SPI <9.0 AND STDID between 102 and 108

--PART c	

-- Retrieve names of students whose city is ‘RAJKOT’ and SPI is less than 8.00. 
	select * from STUDENT Where CITY = 'RAJKOT' and  SPI<8.0

-- Display all details of students who have SPI more than 8.5 without using * from STUDENT table.
SELECT STDID , SNAME, CITY,SPI,BRANCH FROM STUDENT WHERE SPI>8.5

-- Retrieve records from STUDENT table where SPI is greater than 8.0 and student ID is less than 105. 
SELECT *  FROM STUDENT WHERE SPI>8.0 AND STDID <105

--. Retrieve records from STUDENT table where SPI is greater than 7.5 and student ID is between 100 and 110 and city is ‘RAJKOT’ or ‘SURAT’. 
SELECT *  FROM STUDENT WHERE SPI>7.5 AND STDID between 100 and 110 and CITY = 'RAJKOT' OR CITY = 'SURAT'

-- Display details of students who belong to ‘CIVIL’ or ‘MECHANICAL’ branch and SPI is greater than 8.0.
SELECT *  FROM STUDENT WHERE SPI>8.0 AND BRANCH = 'CIVIL'  OR  BRANCH = 'MECHANICAL' 

select * from Deposit
---practical-6---

---part-A

--Copy all records from DEPOSIT where AMOUNT > 3000 into HIGH_AMOUNT. 
select * 
into high_amount 
from Deposit
where AMOUNT>3000

--Copy only CNAME and AMOUNT from DEPOSIT where BNAME = 'MAVDI' into MAVDI_CUSTOMERS.  
select CNAME,amount
into MAVDI_CUSTOMERS
from Deposit
where BNAME='MAVDI'

--Copy records of DEPOSIT where ADATE > '2025-01-01' into RECENT_DEPOSITS.
select * 
into RECENT_DEPOSITS
from Deposit
where ADATE> '2025-01-01'

--Copy distinct BNAME from DEPOSIT into BRANCH_LIST.  
select distinct BNAME
into BRANCH_LIST
from Deposit

--Copy top 5 records from DEPOSIT into TOP_DEPOSITS. 
select top 5 *
into TOP_DEPOSITS
from Deposit

--Copy records where AMOUNT between 2000 and 6000 into MID_RANGE.  
select *
into MID_RANGE
from Deposit
where AMOUNT between 2000 and 6000

--Copy distinct branch names from DEPOSIT into UNIQUE_BRANCH. 
select distinct  BNAME
into UNIQUE_BRANCH
from Deposit

--Copy records with NULL branch into NO_BRANCH_ASSIGNED. 
select *
into NO_BRANCH_ASSIGNED
from Deposit
where BNAME is null

--Copy all records and rename AMOUNT as BALANCE into DEPOSIT_COPY.  
select ACtno,CNAME,BNAME,AMOUNT as balance,ADATE
 into DEPOSIT_COPY
from Deposit

--Copy records where BNAME in ('MAVDI','BEDI') into SELECTED_BRANCH. 
select *
into SELECTED_BRANCH
from Deposit
where BNAME in ('mavdi','bedi')

---part-B

--create a new table STUDENT_BACKUP from STUDENT without copying any data. 
select * 
into STUDENT_BACKUP 
from STUDENT
where 1=2

--Copy SNAME and CITY where BRANCH = 'COMPUTER' into CS_STUDENTS.
select SNAME ,city
into CS_STUDENTS
from student
where BRANCH = 'COMPUTER'
select * from cs_students

--Copy top 3 students based on SPI into TOPPER_LIST. 
select top 3 * 
into TOPPER_LIST
from STUDENT
order by spi 

--Copy distinct CITY from STUDENT into CITY_LIST. 
select distinct city
 into CITY_LIST
from student

--Copy records where STDID between 103 and 108 into MID_STUDENTS.  
select *
into MID_STUDENTS
from STUDENT
where STDID between 103 and 108

--part-C

--copy records with NULL branch into NULL_BRANCH_STUDENTS. 
select *
into NULL_BRANCH_STUDENTS
from student
where branch is null

--Copy all STUDENT records and rename SPI as PERFORMANCE into STUDENT_COPY.
select STDID,SNAME,CITY,branch,spi as PERFORMANCE
into STUDENT1_COPY
from student

-- Copy records where CITY in ('RAJKOT','SURAT') into CITY_WISE.  
select *
into CITY_WISE
from student
where city in('RAJKOT','SURAT')

--Copy students where BRANCH <> 'CIVIL' into NON_CIVIL_STUDENTS.  
select * 
into NON_CIVIL_STUDENTS
from STUDENT
where branch='civil'

--Copy selected columns (SNAME, CITY) from STUDENT table into a new table. 
select sname,city 
into MY_NEW_TABLE
from STUDENT

---practical-7

--part-A

--Display employees detail whose FIRSTNAME starts with ‘H’. 
select * from EMPLOYEE where firstname like 'H%'

--Display employees detail whose FIRSTNAME consists of exactly 5 characters. 
select * from employee where firstname like '_____'

--Display employees detail whose CITY ends with ‘T’ and has 6 characters. 
select * from employee where city like '_____T'

--Display employees detail whose LASTNAME ends with ‘EL’. 
select * from employee where lastname like '%EL'

--Display employees detail whose FIRSTNAME starts with ‘R’ and ends with ‘A’. 
select * from employee where firstname like 'R%A'

--display employees detail whose FIRSTNAME starts with ‘V’ and third character is ‘S’. 
select * from employee where firstname like 'V_S%'

--Display employees detail whose CITY is NULL and FIRSTNAME has 6 characters. 
select * from employee where city is null and firstname like '______'

--Display employees detail whose FIRSTNAME contains ‘AR’. 
select * from employee where firstname like '%AR%'

--Display employees detail whose CITY starts with ‘R’ or ‘B’.
select * from EMPLOYEE where city like '[R,B]%' 

--Display employees detail whose DEPARTMENT is NOT NULL. 
select * from EMPLOYEE where DEPARTMENT is not null

--Display employees detail whose FIRSTNAME starts from alphabet A to H. 
select * from EMPLOYEE where FIRSTNAME like '[A-H]%'

--Display employees detail whose second character of FIRSTNAME is a vowel. 
select * from EMPLOYEE where FIRSTNAME like '_[A,I,E,O,U]%'

--Display employees detail whose FIRSTNAME length ≥ 5. 
select * from EMPLOYEE where len(firstname)>=5

--Display employees detail whose LASTNAME starts with ‘PA’.
select * from EMPLOYEE where LASTNAME like 'PA%'

--Display employees detail whose CITY does not start with ‘B’. 
select * from EMPLOYEE where city like '[^B]%'

--Display employees whose second character of FIRSTNAME is a not vowel. 
select * from EMPLOYEE where FIRSTNAME like '_[^A,I,E,O,U]%'

--Display employees whose JOINING YEAR last digit is 4 or 6.
select * from EMPLOYEE where JOININGYEAR like '%[4,6]'

--Display employees detail whose FIRSTNAME starts with ‘H’, ends with ‘I’, and CITY contains ‘RA’. 
select * from EMPLOYEE where FIRSTNAME like 'H%I' and city like '%RA%'

--Display employees detail whose FIRSTNAME contains ‘A’, CITY ends with ‘D’, and DEPARTMENT is NOT NULL. 
select * from EMPLOYEE where FIRSTNAME like '%A%' and city like '%D' and department is not null

--Display employees whose second and third characters of FIRSTNAME are vowels and CITY starts with ‘R’.
select * from EMPLOYEE where FIRSTNAME like '_[A,I,E,O,U][A,I,E,O,U]%' and city like 'R%'

--part-B

--Display employees whose CITY contains ‘RA’ and salary less than 13000 and joining year last digit is 6. 
select * from EMPLOYEE where city like '%RA%' and salary <13000 and JOININGYEAR like '%6'

--Display employees whose SALARY between 10000 and 15000 and CITY name contains 'KO' and FIRSTNAME start with H. 
select * from  EMPLOYEE where SALARY between 10000 and 15000 and CITY like '%KO%' and FIRSTNAME like 'H%'

--Display employees whose FIRSTNAME starts with ‘A’ or ‘D’ and SALARY greater than 12000.
select * from EMPLOYEE where firstname like '[A,D]%' and SALARY > 12000

--Display employees whose CITY contains ‘N’ and SALARY less than 15000. 
select * from EMPLOYEE where CITY like '%N%' and SALARY <15000

--Display employees whose FIRSTNAME length = 6 and CITY ends with ‘AR’. 
select * from EMPLOYEE where len(FIRSTNAME)=6 and CITY like '%AR'

--part-C

--Display employees whose FIRSTNAME second character is vowel and LASTNAME ends with ‘R’ and SALARY less than 12000.
select * from EMPLOYEE where FIRSTNAME like '_[A,I,E,O,U]%' and LASTNAME like '%R' and SALARY <12000

--Display employees whose CITY is NOT NULL and FIRSTNAME does not start with vowel and DEPARTMENT not in (‘HR’, ‘IT’). 
select * from EMPLOYEE where city is not null and FIRSTNAME like '[^A,I,E,O,U]%' and DEPARTMENT not in('HR', 'IT')

--Display employees whose CITY is not NULL, FIRSTNAME ends with vowels, and DEPARTMENT is neither ‘HR’ nor ‘IT’. 
select * from EMPLOYEE where CITY is not NULL and FIRSTNAME like '%[A,I,E,O,U]' and DEPARTMENT not in('HR', 'IT')

--Display employees whose FIRSTNAME ends with a vowel, department name start with vowel, and SALARY is between 10000 and 15000. 
select * from EMPLOYEE where FIRSTNAME like '%[A,I,E,O,U]' and DEPARTMENT like '[A,I,E,O,U]%' and SALARY between 10000 and 15000

--Display employees whose LASTNAME contains ‘A’ at least twice, gender is male, and SALARY is not equal to 14000. 
select * from EMPLOYEE where LASTNAME like 'A%A%A' and gender = 'male' and SALARY != 14000

--practical-8

--Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
select min(salary) as minimun,max(salary) as maximum from EMPLOYEE

--Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively. 
select sum(salary) as total_sal, avg(salary) as average_Sal from EMPLOYEE

--Find total number of employees of EMPLOYEE table. 
select count(eid) from EMPLOYEE

--Find highest salary from Rajkot city. 
select max(salary) from EMPLOYEE where city='Rajkot'

--Give maximum salary from IT department. 
select max(salary) from EMPLOYEE where department ='IT'

--Count employee department is HR. 
select count(eid) from EMPLOYEE where department ='HR'

--Display average salary of Admin department. 
select AVG(salary) from EMPLOYEE where department='Admin'

--Display total salary of HR department. 
select sum(salary) from EMPLOYEE where department ='HR'

--Count total number of cities of employee without duplication. 
SELECT COUNT(DISTINCT city) FROM employee
 
--Count unique departments. 
select count(distinct department) from EMPLOYEE

--Display minimum salary of employee who belongs to Ahmedabad. 
select min(salary) from EMPLOYEE where city = 'AHMEDABAD '

--Find city wise highest salary.
select max(salary),city from EMPLOYEE group by city

--Find department wise lowest salary. 
select min(salary),department from EMPLOYEE group by department

--Display minimum salary in each city. 
select min(salary),city from EMPLOYEE group by city

--Display average salary of employees from Surat. 
select avg(salary) from EMPLOYEE where city=' SURAT '

--Display total salary of female employees.
select sum(salary) from EMPLOYEE where GENDER='Female'

--Count number of male employees. 
select count(eid) from EMPLOYEE where GENDER='Male' 

--Display city with the total number of employees belonging to each city.
select city,count(eid) from EMPLOYEE group by city

--Count number of employees in each city where gender is MALE.
select city,count(eid) from EMPLOYEE where gender ='MALE' group by city

--Display maximum salary in each department where city is not Ahmedabad. 
select max(salary),DEPARTMENT from EMPLOYEE where city != 'AHMEDABAD ' group by DEPARTMENT

--PART-B

--Display minimum salary in each city where gender is FEMALE.
select min(salary),city from EMPLOYEE where gender ='FEMALE' group by city

--Give total salary of each department of EMPLOYEE table. 
select sum(salary),department from EMPLOYEE group by DEPARTMENT

--Give average salary of each department of EMPLOYEE table without displaying the respective department name. 
select AVG(salary) from EMPLOYEE group by DEPARTMENT

--Count the number of employees for each department in every city. 
select DEPARTMENT ,city,count(eid)from EMPLOYEE group by DEPARTMENT,city

--Calculate the total salary distributed to male and female employees. 
select sum(salary),gender from EMPLOYEE group by GENDER

--PART-C

--Give city wise maximum and minimum salary of female employees. 
select min(salary),max(salary),city from EMPLOYEE where gender='female' group by city

--Calculate department, city, and gender wise average salary. 
select avg(salary) from EMPLOYEE group by department, city,  gender 

--Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary)-min(salary) ,FIRSTNAME from EMPLOYEE group by FIRSTNAME

--Display sum of salaries of department wise where department name consist 5 letter.
select sum(salary) from EMPLOYEE where DEPARTMENT like '_____' group by DEPARTMENT

--Find the Maximum salary department & city wise in which city name starts with ‘R’.
select max(salary) from EMPLOYEE where city like 'R%' group by DEPARTMENT,CITY 

--Practical-9--

--Display cities where total salary of employees greater than 20000. 
select city,sum(salary) from EMPLOYEE group by city having sum(salary)>20000

--Display departments having average salary greater than 12000. 
select department,avg(salary) from EMPLOYEE group by department having avg(salary)>12000

--Display departments having total salary greater than 20000. 
select department ,sum(salary) from EMPLOYEE group by department having sum(salary)>20000

--Display departments having number of employees greater than 2. 
select department ,count(eid)from EMPLOYEE group by department having count(eid)>2

--Display cities where minimum salary less than 7000. 
select city,min(salary) from EMPLOYEE group by city having min(salary)<7000

--Display cities where average salary less than 12000. 
select city,avg(salary) from EMPLOYEE group by city having avg(salary)<12000

--Display departments where maximum salary greater than 14000. 
select department,max(salary) from EMPLOYEE group by department having max(salary) >14000

--Display cities where total salary greater than equal to 30000. 
select city,sum(salary) from EMPLOYEE group by city having sum(salary)>=30000

--Display departments having number of employees equal to 2. 
select department ,count(eid) from EMPLOYEE group by department having count(eid)=2

--Display cities having number of female employees greater than equal to 1. 
select city,count(eid) from EMPLOYEE where gender='female' group by city having count(eid)>=1

--Display departments where minimum salary of male employees greater than 7000. 
select department, min(salary) from EMPLOYEE where gender='male' group by department having min(salary)>7000
 
--Display cities where maximum salary of female employees less than 13000.
select city ,max(salary) from EMPLOYEE where gender='female' group by city having max(salary)<13000

--Display departments where average salary greater than 10000 and less than 14000. 
select department,avg(salary) from EMPLOYEE group by department having avg(salary) >10000 and avg(salary)<14000

--display cities where number of employee joined before 2023 greater than 1. 
select city,count(eid) from EMPLOYEE where joiningyear <2023 group by city having count(eid)>1

--Display cities where total salary of male employees greater than 15000, ordered by total salary. 
select city ,sum(salary) from EMPLOYEE where gender='male' group by city having sum(salary)>15000 order by sum(salary)

--Display departments where maximum salary greater than 13000, ordered by max salary.
select department, max(salary) from EMPLOYEE group by department having max(salary)>13000 order by max(salary)

--Display cities where total salary of male employees greater than 15000. 
select city ,sum(salary) from EMPLOYEE where gender='male' group by city having sum(salary)>15000 

-- Display departments where employees joined after 2022 and count greater than 1.  
select department ,count(eid) from EMPLOYEE where JOININGYEAR > 2022 group by DEPARTMENT having count(eid)>1

--Display departments where average salary of female employees greater than 8000.    
select department ,avg(salary) from EMPLOYEE where gender ='female' group by department having avg(salary)>8000

-- Display departments having total salary greater than 20000 and less than 40000. 
select department ,sum(salary) from EMPLOYEE group by department having sum(salary) between 20000 and 40000

--part-B--

--Display departments having total salary of employees joined after 2021 greater than 20000.  
select department ,sum(salary) from EMPLOYEE where joiningyear > 2021 group by department having sum(salary)>20000

--Display cities where average salary of employees joined after 2022 greater than 10000.  
select city,avg(salary) from EMPLOYEE where JOININGYEAR > 2022 group by city having avg(salary)>10000

--Display cities having number of distinct departments greater than 1.  
select city,count(distinct department) from EMPLOYEE group by city having count(distinct department)>1 

--Display cities where maximum salary of employees joined before 2022 greater than 12000.  
select city ,max(salary) from EMPLOYEE where joiningyear < 2022 group by city having max(salary)>12000

-- Display departments where total salary of female employees less than 15000.  
select department ,sum(salary) from EMPLOYEE where gender='female' group by department having sum(salary) <15000

--part-c--

--Display cities where number of male employees greater than female employees.  
SELECT city FROM EMPLOYEE GROUP BY city
HAVING COUNT(CASE WHEN gender = 'male' THEN sum(salary) END) > COUNT(CASE WHEN gender = 'female' THEN sum(salary) END)

-- Display departments having number of cities greater than 1.  
select department from EMPLOYEE group by department having count(city)>1

--Display cities where total salary excluding IT department greater than 15000.  
select city from EMPLOYEE where department !='IT' group by  city having sum(salary)>15000

-- Display departments where average salary excluding HR employees greater than 11000.  
select department from EMPLOYEE where DEPARTMENT != 'HR' group by department having avg(salary)>11000

-- Display departments where total salary of male employees greater than female employees. 
SELECT department 
FROM EMPLOYEE 
GROUP BY department
HAVING SUM(CASE WHEN gender = 'male' THEN salary ELSE 0 END) > SUM(CASE WHEN gender = 'female' THEN salary ELSE 0 END)


--PRACTICAL-10--

--PART-A--
--math functions

--Display the result of 5 multiply by 30.
select (5*30) as multiply

--Find out the absolute value of -25, 25, -50 and 50. 
select abs(-25) as abs1,abs(25) as abs2,abs(-50) as abs3,abs(50) as abs4

--Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2. 
select floor(25.2),floor(25.7),floor(-25.2)

--Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--Find out remainder of 5 divided 2 and 5 divided by 3. 
select (5%2), (5%3)

--Find out value of 3 raised to 2nd power and 4 raised 3rd power. 
select power(3,2), power(4,3)

--Find out the square root of 25, 30 and 50. 
select sqrt(25),sqrt(30),sqrt(50)

-- Find out the square of 5, 15, and 25.
select square(5),SQUARE(15),SQUARE(25)

--Find out the value of PI. 
select PI()

--Find out round value of 157.732 for 2, 0 and -2 decimal points. 
select ROUND(157.732,2), round(157.732,0),round(157.732,-2)

-- Find out exponential value of 2 and 3.
select EXP(2),exp(3)

--Find out logarithm having base e of 10 and 2. 
select log(10,2)

-- Find logarithm base 10 of 5 and 100.
select log10(5), log10(100)

--Find sine, cosine and tangent of 3.1415. 
select sin(3.1415),cos(3.1415), tan(3.1415)

--Find sign of -25, 0 and 25. 
select sign(-25),sign(0),sign(25)

--Generate random number using function.
select RAND()

--string function

--part-A

--Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
select len(NULL),len('   hello     '),len(' ')

--Display your name in lower & upper case. 
select lower('JiNkAl'), upper('JiNkAl')

--Display first three characters of your name. 
select substring('jinkal',0,3)

--Display 3rd to 10th character of your name. 
select substring('jinkal makwana',3,10)

--Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select replace('abc123efg','123','xyz')
select replace('abcabcabc','cabcabc','5ab5ab5')

--Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
select ascii('a'),ascii('A'),ascii('z'),ascii('Z'),ascii(0),ascii(9)

--Write a query to display character based on number 97, 65,122,90,48,57. 
select char(97),char(65),char(122),char(90),char(48),char(57)

--Write a query to remove spaces from left of a given string ‘     hello world '
select ltrim('     hello world   ')

-- Write a query to remove spaces from right of a given string ‘ hello world ‘.
select rtrim('  hello world         ')
  
--Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 
select left('SQL Server',4)+right('SQL Server',5)

--Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). 
select CAST('1234.56' AS FLOAT)
select convert(float,1234.56)

--Write a query to convert a float 10.58 to integer (Use cast and convert function). 
select cast(10.58 AS INT)
select convert(int,10.58) 

--Put 10 space before your name using function. 
select space(10)+'jinkal'

--Combine two strings using + sign as well as CONCAT (). 
select concat('hello',' ','world')
select 'hello' + ' '  + 'world'

--Find reverse of “Darshan”.
select REVERSE('darshan')

--Repeat your name 3 times.
select REPLICATE('jinkal',3)

--part-B

--Display FIRSTNAME and LASTNAME in lowercase and uppercase.
select lower(FIRSTNAME), UPPER(LASTNAME) from EMPLOYEE

--Display full name by combining FIRSTNAME and LASTNAME.
select concat(firstname,' ',lastname) from EMPLOYEE

--Display FIRSTNAME with first 3 characters only. 
select left(firstname,3) from EMPLOYEE

--Display LASTNAME with last 2 characters only. 
select right(lastname,2) from EMPLOYEE

--Display length of each employee’s FIRSTNAME. 
select len(firstname) from EMPLOYEE

--Display FIRSTNAME after replacing ‘A’ with ‘@’.
select replace(firstname,'A','@') from EMPLOYEE

--Display FIRSTNAME and LASTNAME with - between them using CONCAT. 
select concat(firstname,'-',lastname) from EMPLOYEE

--part-C

--Display FIRSTNAME without first and last character. 
SELECT firstname,SUBSTRING(FIRSTNAME, 2, LEN(FIRSTNAME)-2) FROM employee

--Display FIRSTNAME after replacing vowels with '*'. 
SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(FIRSTNAME, 'a', '*'), 'e', '*'), 'i', '*'), 'o', '*'), 'u', '*') FROM employee

--Display employees where combined length of FIRSTNAME and LASTNAME is greater than 10. 
select concat(firstname,' ',lastname) from EMPLOYEE where len(concat(firstname,' ',lastname))>10

--Display FIRSTNAME and its reverse. 
select firstname,reverse(firstname) from EMPLOYEE

--Display employees whose FIRSTNAME and LASTNAME start with same character using LEFT() 
SELECT FIRSTNAME, LASTNAME FROM employee WHERE LEFT(FIRSTNAME, 1) = LEFT(LASTNAME, 1)

--PRACTICAL-11

--PART-A

--Write a query to display the current date & time. Label the column Today_Date. 
select GETDATE() AS Today_Date

--Write a query to find new date after 365 day with reference to today. 
SELECT DATEADD(day, 365, GETDATE()) AS NewDate 

--Display the current date in a format that appears as may 5 1994 12:00AM. 
select FORMAT(GETDATE(), 'MMM d yyyy h:mmtt')

--Display the current date in a format that appears as 03 Jan 1995. 
select format(getdate(),'dd MMM yyyy')

--Display the current date in a format that appears as Jan 04, 96. 
select format(getdate(),'MMM dd, yy')

--Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 
select DATEDIFF(month,'31-Dec-08','31-Mar-09')

--Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
select DATEDIFF(hour,'25-Jan-12 7:00','26-Jan-12 10:30')

--Write a query to extract Day, Month, Year from given date 12-May-16.
select DATEPART(day,'12-May-16'),DATEPART(month,'12-May-16'),DATEPART(year,'12-May-16')

--Write a query that adds 5 years to current date.
select DATEADD(year,5,getdate())

--Write a query to subtract 2 months from current date. 
select dateadd(month,-2,getdate())

--Extract month from current date using datename () and datepart () function. 
select datepart(month,getdate()),datename(month,getdate())

--Write a query to find out last date of current month. 
select eomonth(getdate())

--Calculate your age in years and months. 
select datediff(year,'2008-06-20',getdate()),datediff(month,'2008-06-20',getdate())

--PART-B
select * from Deposit

--display all records where account date is in the year 2025. 
select * from Deposit where datepart(year,ADATE)=2025

--Display all records where account date is in the month of March. 
select * from Deposit where datepart(month,adate)=2

--Display records where account date is after ‘01-Jan-2025’. 
select * from Deposit where ADATE > '2025-01-01'

--Display records where account date is before ‘01-Jan-2025’. 
select * from Deposit where ADATE < '2025-01-01'

--Display records where day of account date is 1.
select * from Deposit where datepart(day,adate)=1

--Display records where month of account date is greater than 6. 
select * from Deposit where datepart(month,adate) > 6

--Display records where year of account date is 2026. 
select * from Deposit where datepart(year,adate)=2026

--Display number of accounts opened in each year. 
select DATEPART(year,adate),count(*) from Deposit group by DATEPART(year,adate)

--Display number of accounts opened in each month. 
select DATEPART(month,adate),count(*) from Deposit group by DATEPART(month,adate)

--Display maximum amount deposited in each year. 
select DATEPART(year,adate),max(AMOUNT) from Deposit group by DATEPART(year,adate)

--PART-C

-- Display minimum amount deposited in each month. 
select DATEPART(month,adate),max(AMOUNT) from Deposit group by DATEPART(month,adate)

--Display total amount deposited in each year. 
select DATEPART(year,adate),sum(AMOUNT) from Deposit group by DATEPART(year,adate)

--Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’. 
select * from Deposit where adate between '01-Mar-2025' and '31-Dec-2025'

--Display records where account date is in the current year. 
select * from Deposit where datepart(year,adate) = datepart(year,getdate())

--Display difference in days between today’s date and account date. 
select abs(datediff(day,getdate(),adate)) from Deposit 

--PRACTICAL-12

--PART-A

create table STUDENT_INFO(
	RNO INT PRIMARY KEY,
	NAME VARCHAR(20) Not Null,
	BRANCH VARCHAR(20) DEFAULT 'CE'
)

create table RESULT
(
	RESULTID INT PRIMARY KEY ,
	SPI DECIMAL(4,2) CHECK (SPI BETWEEN 0 AND 10 ),
	RNO INT FOREIGN KEY REFERENCES STUDENT_INFO (RNO)
)

INSERT INTO STUDENT_INFO VALUES
(101,'RAJU','CE'),
(102,'AMIT','CE'),
(103,'SANJAY','ME'),
(104,'NEHA','EC'),
(105,'MEERA','EE'),
(106,'MAHESH','ME')

INSERT INTO RESULT VALUES 
(11, 8.8, 101),
(12, 9.2, 102),
(13, 7.6, 103),
(14, 8.2, 104),
(15, 7.0, 105),
(16, 8.9, 106)

CREATE TABLE DEPARTMENT
(
	DEPARTMENTID INT PRIMARY KEY,
	DEPARTMENTNAME VARCHAR (100) NOT NULL UNIQUE ,
	DEPARTMENTCODE VARCHAR (50) NOT NULL UNIQUE ,
	LOCATION VARCHAR (50) NOT NULL 
)

CREATE TABLE PERSON(
	PERSONID INT PRIMARY KEY,
	PERSONNAME VARCHAR (100) NOT NULL, 
	DEPARTMENTID INT FOREIGN KEY REFERENCES DEPARTMENT(DEPARTMENTID),
	SALARY DECIMAL (8,2) NOT NULL ,
	JOININGDATE DATETIME NOT NULL ,
	CITY VARCHAR(100) NOT NULL 
)

INSERT INTO DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME,DEPARTMENTCODE,LOCATION) VALUES 
(2, 'ADMIN', 'ADM', 'A-BLOCK'),
(3, 'COMPUTER', 'CE', 'C-BLOCK'),
(4, 'CIVIL', 'CI', 'G-BLOCK'),
(5, 'ELECTRICAL', 'EE', 'E-BLOCK'),
(6, 'MECHANICAL', 'ME', 'B-BLOCK'),
(1, 'CHEMICAL', 'CH', 'D-BLOCK')

INSERT INTO PERSON VALUES 
(101, 'RAHUL TRIPATHI', 2, 56000, '2000-01-01', 'RAJKOT'),
(102, 'HARDIK PANDYA', 3, 18000, '2001-09-25', 'AHMEDABAD'),
(103, 'BHAVIN KANANI', 4, 25000, '2000-05-14', 'BARODA'),
(104, 'BHOOMI VAISHNAV', 1, 39000, '2005-02-08', 'RAJKOT'),
(105, 'ROHIT TOPIYA', 2, 17000, '2001-07-23', 'JAMNAGAR'),
(106, 'PRIYA MENPARA', NULL, 9000, '2000-10-18', 'AHMEDABAD'),
(107, 'NEHA SHARMA', 2, 34000, '2002-12-25', 'RAJKOT'),
(108, 'NAYAN GOSWAMI', 3, 25000, '2001-07-01', 'RAJKOT'),
(109, 'MEHUL BHUNDIYA', 4, 13500, '2005-01-09', 'BARODA'),
(110, 'MOHIT MARU', 5, 14000, '2000-05-25', 'JAMNAGAR')

--PART-B

CREATE TABLE PUBLISHER
(
	PUBLISHERID INT PRIMARY KEY ,
	PUBLISHERNAME VARCHAR(100) NOT NULL UNIQUE ,
	CITY VARCHAR(50) NOT NULL
)

CREATE TABLE AUTHOR
(
	AUTHORID INT PRIMARY KEY ,
	AUTHORNAME VARCHAR(100) NOT NULL ,
	COUNTRY VARCHAR(50) NULL 
)

CREATE TABLE BOOK
(
	BOOKID INT PRIMARY KEY ,
	TITLE VARCHAR(200) NOT NULL,
	AUTHORID INT FOREIGN KEY REFERENCES AUTHOR(AUTHORID),
	PUBLISHERID INT FOREIGN KEY REFERENCES PUBLISHER(PUBLISHERID),
	PRICE DECIMAL(8,2) NOT NULL ,
	PUBLICATIONYEAR INT NOT NULL 
)

INSERT INTO PUBLISHER (PUBLISHERID, PUBLISHERNAME, CITY)
VALUES 
(1, 'RUPA PUBLICATIONS', 'NEW DELHI'),
(2, 'PENGUIN INDIA', 'GURUGRAM'),
(3, 'HARPERCOLLINS INDIA', 'NOIDA'),
(4, 'ALEPH BOOK COMPANY', 'NEW DELHI')

INSERT INTO AUTHOR (AUTHORID, AUTHORNAME, COUNTRY)
VALUES 
(1, 'CHETAN BHAGAT', 'INDIA'),
(2, 'ARUNDHATI ROY', 'INDIA'),
(3, 'AMISH TRIPATHI', 'INDIA'),
(4, 'RUSKIN BOND', 'INDIA'),
(5, 'JHUMPA LAHIRI', 'INDIA'),
(6, 'PAULO COELHO', 'BRAZIL'),
(7, 'SUDHA MURTY', 'INDIA')

INSERT INTO BOOK (BOOKID, TITLE, AUTHORID, PUBLISHERID, PRICE, PUBLICATIONYEAR)
VALUES 
(101, 'FIVE POINT SOMEONE', 1, 1, 250.00, 2004),
(102, 'THE GOD OF SMALL THINGS', 2, 2, 350.00, 1997),
(103, 'IMMORTALS OF MELUHA', 3, 3, 300.00, 2010),
(104, 'THE BLUE UMBRELLA', 4, 1, 180.00, 1980),
(105, 'THE LOWLAND', 5, 2, 400.00, 2013),
(106, 'REVOLUTION 2020', 1, 1, 275.00, 2011),
(107, 'SITA: WARRIOR OF MITHILA', 3, 3, 320.00, 2017),
(108, 'THE ROOM ON THE ROOF', 4, 4, 200.00, 1956)

CREATE TABLE STADIUM
(
	Stadium_id INT PRIMARY KEY ,
	Stadium_name VARCHAR(200) NOT NULL UNIQUE, 
	Stadium_capacity INT NOT NULL ,
	Stadium_city VARCHAR(200) NOT NULL 
)

CREATE TABLE TEAM
(
	TEAM_ID INT PRIMARY KEY ,
	TEAM_NAME VARCHAR(200) NOT NULL UNIQUE ,
	TEAM_COACH VARCHAR(200) NOT NULL ,
	TEAM_WINS INT NOT NULL ,
	TEAM_TOTAL_MATCHES INT NULL ,
	HOME_STADIUM_ID INT FOREIGN KEY REFERENCES STADIUM(STADIUM_ID)
)

CREATE TABLE PLAYER(
	PLAYER_ID INT PRIMARY KEY ,
	PLAYER_FIRST_NAME VARCHAR(200) NOT NULL ,
	PLAYER_LAST_NAME VARCHAR(200) NOT NULL ,
	TEAM_ID INT FOREIGN KEY REFERENCES TEAM(TEAM_ID),
	PLAYER_ROLE VARCHAR(200) NULL ,
	PLAYER_JERSEY_NUMBER INT NOT NULL ,
	PLAYER_MATCHES_PLAYED INT NULL
)

INSERT INTO STADIUM (Stadium_id, Stadium_name, Stadium_capacity, Stadium_city)
VALUES 
(101, 'Wankhede Stadium', 55000, 'Mumbai'),
(102, 'Chepauk Stadium', 50000, 'Chennai'),
(103, 'Chinnaswamy Stadium', 45000, 'Bangalore'),
(104, 'Eden Gardens', 68000, 'Kolkata'),
(105, 'Sawai Mansingh Stadium', 30000, 'Jaipur'),
(106, 'Arun Jaitley Stadium', 42000, 'Delhi'),
(107, 'Bindra Stadium', 38000, 'Mohali'),
(108, 'Rajiv Gandhi Stadium', 55000, 'Hyderabad')

INSERT INTO TEAM (TEAM_ID, TEAM_NAME, TEAM_COACH, TEAM_WINS, TEAM_TOTAL_MATCHES, HOME_STADIUM_ID)
VALUES 
(1, 'Mumbai Indians', 'Mark Boucher', 12, 14, 101),
(2, 'Chennai Super Kings', 'Stephen Fleming', 10, 14, 102),
(3, 'Royal Challengers Bangalore', 'Faf du Plessis', 9, 14, 103),
(4, 'Kolkata Knight Riders', 'Gautam Gambhir', 11, 14, 104),
(5, 'Rajasthan Royals', 'Rahul Dravid', 8, 14, 105),
(6, 'Delhi Capitals', 'Ricky Ponting', 7, 14, 106),
(7, 'Punjab Kings', 'Anil Kumble', 6, 14, 107),
(8, 'Sunrisers Hyderabad', 'Brian Lara', 9, 14, 108)

INSERT INTO PLAYER (PLAYER_ID, PLAYER_FIRST_NAME, PLAYER_LAST_NAME, TEAM_ID, PLAYER_ROLE, PLAYER_JERSEY_NUMBER, PLAYER_MATCHES_PLAYED)
VALUES 
(201, 'Virat', 'Kohli', 3, 'Batsman', 18, 25),
(202, 'Rohit', 'Sharma', 1, 'Batsman', 45, 28),
(203, 'Jasprit', 'Bumrah', 1, 'Bowler', 93, 26),
(204, 'MS', 'Dhoni', 2, 'Wicketkeeper', 7, 30),
(205, 'Ravindra', 'Jadeja', 2, 'All-rounder', 8, 27),
(206, 'Andre', 'Russell', 4, 'All-rounder', 12, 24),
(207, 'Sanju', 'Samson', 5, 'Batsman', 11, 23),
(208, 'Yuzvendra', 'Chahal', 5, 'Bowler', 3, 22),
(209, 'Glenn', 'Maxwell', 3, 'All-rounder', 32, 21),
(210, 'Sunil', 'Narine', 4, 'Bowler', 74, 29),
(211, 'David', 'Warner', 6, 'Batsman', 31, 26),
(212, 'Rishabh', 'Pant', 6, 'Wicketkeeper', 17, 24),
(213, 'Kagiso', 'Rabada', 6, 'Bowler', 25, 23),
(214, 'Shikhar', 'Dhawan', 7, 'Batsman', 42, 27),
(215, 'Liam', 'Livingstone', 7, 'All-rounder', 23, 22),
(216, 'Arshdeep', 'Singh', 7, 'Bowler', 2, 21),
(217, 'Aiden', 'Markram', 8, 'Batsman', 4, 23),
(218, 'Bhuvneshwar', 'Kumar', 8, 'Bowler', 15, 28),
(219, 'Rahul', 'Tripathi', 8, 'Batsman', 52, 24),
(220, 'Abdul', 'Samad', 8, 'All-rounder', 11, 29);

--PRACTICAL-13

--PART-A

--Combine information from Student and Result table using cross join (Cartesian product). 
SELECT * FROM STUDENT , RESULT

--Perform inner join on Student and Result tables. 
SELECT * FROM 
STUDENT INNER JOIN RESULT 
ON STUDENT.STDID = RESULT.RNO

--Perform the left outer join on Student and Result tables. 
SELECT * FROM
STUDENT LEFT OUTER JOIN RESULT
ON STUDENT.STDID = RESULT.RNO

--Perform the right outer join on Student and Result tables. 
SELECT * FROM
STUDENT RIGHT OUTER JOIN RESULT
ON STUDENT.STDID = RESULT.RNO

--Perform the full outer join on Student and Result tables. 
SELECT * FROM
STUDENT FULL OUTER JOIN RESULT
ON STUDENT.STDID = RESULT.RNO

--Display Rno, Name, Branch and SPI of all students. 
SELECT RNO,SNAME,BRANCH FROM 
STUDENT FULL OUTER JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO

--Display Rno, Name, Branch and SPI of CE branch students only. 
SELECT RESULT.RNO,STUDENT.SNAME,STUDENT.BRANCH FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE BRANCH='COMPUTER'

--Display Rno, Name, Branch and SPI of students other than EC branch. 
SELECT RESULT.RNO,STUDENT.SNAME,STUDENT.BRANCH,RESULT.SPI FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE NOT BRANCH='ELECTRICAL'

--Display Rno, Name and SPI of students whose SPI is greater than 8. 
SELECT RESULT.RNO,STUDENT.SNAME,STUDENT.BRANCH,RESULT.SPI FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE RESULT.SPI > 8

--Display Rno, Name and Branch of students whose SPI is less than 8. 
SELECT RESULT.RNO,STUDENT.SNAME,STUDENT.BRANCH FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE RESULT.SPI < 8

--Display average result of each branch. 
SELECT STUDENT.BRANCH ,AVG(RESULT.SPI) FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH

--Display average result of CE and ME branch. 
SELECT STUDENT.BRANCH ,AVG(RESULT.SPI) FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE BRANCH='COMPUTER' OR BRANCH='MECHANICAL'
GROUP BY STUDENT.BRANCH

--Display maximum and minimum SPI of each branch. 
SELECT STUDENT.BRANCH ,MIN(RESULT.SPI) AS MINSPI , MAX(RESULT.SPI) AS MAXSPI FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH

--Display branch-wise student count in descending order. 
SELECT STUDENT.BRANCH ,COUNT(RESULT.SPI) AS COUNT FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH
ORDER BY COUNT(RESULT.SPI) DESC 

--Display branch-wise total SPI of students.
SELECT STUDENT.BRANCH ,SUM(RESULT.SPI) AS TOTAL FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH 

--PART-B

--Display branch-wise number of students having SPI greater than 8. 
SELECT STUDENT.BRANCH ,COUNT(RESULT.SPI) AS NUMSTUDENTS FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE RESULT.SPI > 8
GROUP BY STUDENT.BRANCH

--Display branch-wise number of students having SPI less than 8. 
SELECT STUDENT.BRANCH ,COUNT(RESULT.SPI) AS NUMSTUDENTS FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE RESULT.SPI < 8
GROUP BY STUDENT.BRANCH

-- Display branch-wise average SPI greater than 7. 
SELECT STUDENT.BRANCH ,AVG(RESULT.SPI) AS AVGSPI FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
WHERE RESULT.SPI > 7
GROUP BY STUDENT.BRANCH 

--Display branches having more than 1 students. 
SELECT STUDENT.BRANCH ,COUNT(STUDENT.BRANCH) FROM
STUDENT JOIN RESULT  
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH 
HAVING COUNT(STUDENT.BRANCH) > 1

--Display branches where maximum SPI is greater than 9. 
SELECT STUDENT.BRANCH ,MAX(RESULT.SPI) AS MAXSPI FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH 
HAVING MAX(RESULT.SPI) > 9

--PART-C

--Display average result of each branch and sort them in ascending order by SPI. 
SELECT STUDENT.BRANCH ,AVG(RESULT.SPI) FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH
ORDER BY AVG(RESULT.SPI)

--Display highest SPI from each branch and sort them in descending order. 
SELECT STUDENT.BRANCH ,MAX(RESULT.SPI) FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH
ORDER BY MAX(RESULT.SPI) DESC

--Display average result of each branch and sort them in ascending order by SPI. 
SELECT STUDENT.BRANCH ,AVG(RESULT.SPI) FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH
ORDER BY AVG(RESULT.SPI) 

--Display highest SPI from each branch and sort them in descending order. 
SELECT STUDENT.BRANCH ,MAX(RESULT.SPI) FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH
ORDER BY MAX(RESULT.SPI) DESC

--Display branches where difference between max and min SPI is greater than 1.
SELECT STUDENT.BRANCH ,MAX(RESULT.SPI)-MIN(RESULT.SPI) FROM
STUDENT JOIN RESULT 
ON  STUDENT.STDID = RESULT.RNO
GROUP BY STUDENT.BRANCH
HAVING MAX(RESULT.SPI)-MIN(RESULT.SPI) > 1

--PRACTICAL-14

--PART-A

--Combine information from Person and Department table using cross join or Cartesian product. 
SELECT * FROM PERSON, DEPARTMENT 

--Find all persons with their department name 
SELECT PERSON.PERSONNAME ,DEPARTMENT.DEPARTMENTNAME  FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID 

--Find all persons with their department name & code.
SELECT PERSON.PERSONNAME ,DEPARTMENT.DEPARTMENTNAME,DEPARTMENT.DEPARTMENTCODE  FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID 

--Find all persons with their department code and location. 
SELECT PERSON.PERSONNAME ,DEPARTMENT.DEPARTMENTCODE ,DEPARTMENT.LOCATION FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID 

--Find the detail of the person who belongs to Mechanical department.
SELECT *  FROM
PERSON LEFT JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID  
WHERE DEPARTMENT.DEPARTMENTNAME='MECHANICAL'

--Final person’s name, department code and salary who lives in Ahmedabad city.  
SELECT PERSON.PERSONNAME ,DEPARTMENT.DEPARTMENTCODE ,PERSON.SALARY FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE PERSON.CITY = 'AHMEDABAD' 

--Find the person's name whose department is in C-Block. 
SELECT PERSON.PERSONNAME FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE DEPARTMENT.LOCATION = 'C-BLOCK' 

--Retrieve person name, salary & department name who belongs to Jamnagar city. 
SELECT PERSON.PERSONNAME ,DEPARTMENT.DEPARTMENTNAME ,PERSON.SALARY FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE PERSON.CITY = 'JAMNAGAR' 

--Retrieve person’s detail who joined the Civil department after 1-Aug-2001. 
SELECT * FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE DEPARTMENT.DEPARTMENTNAME='CIVIL' AND PERSON.JOININGDATE > '1-Aug-2001'

--Display all the person's name with the department whose joining date difference with the current date is more than 25 years. 
SELECT PERSON.PERSONNAME ,DEPARTMENT.DEPARTMENTNAME FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE DATEDIFF(YEAR,PERSON.JOININGDATE,GETDATE()) > 25

--Find department wise person counts. 
SELECT DEPARTMENT.DEPARTMENTNAME, COUNT(PERSON.PERSONNAME) FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
GROUP BY DEPARTMENT.DEPARTMENTNAME

--Give department wise maximum & minimum salary with department name. 
SELECT DEPARTMENT.DEPARTMENTNAME, MAX(PERSON.SALARY) AS MAXSALARY ,MIN(PERSON.SALARY) AS MINSALARY FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
GROUP BY DEPARTMENT.DEPARTMENTNAME

--Find city wise total, average, maximum and minimum salary. 
SELECT PERSON.CITY, MAX(PERSON.SALARY) AS MAXSALARY ,MIN(PERSON.SALARY) AS MINSALARY ,SUM(PERSON.SALARY) AS MAXSALARY,AVG(PERSON.SALARY) AS MAXSALARY  FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
GROUP BY PERSON.CITY 

--Find the average salary of a person who belongs to Ahmedabad city. 
SELECT PERSON.CITY,AVG(PERSON.SALARY) AS AVGSALARY FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE PERSON.CITY='AHMEDABAD'
GROUP BY PERSON.CITY

--Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column) 
SELECT PERSON.PERSONNAME+' LIVES IN '+PERSON.CITY+' AND WORKS IN '+DEPARTMENT.DEPARTMENTNAME+' DEPARTMENT' AS PERSONDATA FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID

--PART-B

--Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column) 
SELECT PERSON.PERSONNAME+' EARNS '+CAST(PERSON.SALARY AS VARCHAR)+' FROM '+DEPARTMENT.DEPARTMENTNAME+' DEPARTMENT MONTHLY' AS PERSONDATA FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID

--Find city & department wise total, average & maximum salaries. 
SELECT PERSON.CITY,DEPARTMENT.DEPARTMENTNAME, MAX(PERSON.SALARY) AS MAXSALARY ,SUM(PERSON.SALARY) AS TOTALSALARY,AVG(PERSON.SALARY) AS AVGSALARY  FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
GROUP BY PERSON.CITY ,DEPARTMENT.DEPARTMENTNAME

--Find all persons who do not belong to any department. 
SELECT DEPARTMENT.DEPARTMENTNAME, COUNT(DEPARTMENT.DEPARTMENTNAME)  FROM
PERSON JOIN DEPARTMENT
ON  PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE DEPARTMENT.DEPARTMENTNAME IS NULL
GROUP BY DEPARTMENT.DEPARTMENTNAME

--Find all departments whose total salary is exceeding 100000. 
select DEPARTMENT.DEPARTMENTNAME,sum(person.SALARY)
FROM PERSON JOIN DEPARTMENT
ON PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
GROUP BY DEPARTMENT.DEPARTMENTNAME
HAVING SUM(PERSON.SALARY)>100000

--PART-C

--List all departments who have no person.
select DEPARTMENT.DEPARTMENTNAME,COUNT(person.PERSONID)
FROM PERSON JOIN DEPARTMENT
ON PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
GROUP BY DEPARTMENT.DEPARTMENTNAME
HAVING COUNT(PERSON.PERSONID) = 0

--List out department names in which more than two persons are working. 
select DEPARTMENT.DEPARTMENTNAME,COUNT(person.PERSONID)
FROM PERSON JOIN DEPARTMENT
ON PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
GROUP BY DEPARTMENT.DEPARTMENTNAME
HAVING COUNT(PERSON.PERSONID) > 2

--give a 10% increment in the computer department employee’s salary. (Use Update) 
UPDATE PERSON  SET SALARY= SALARY+(30*100) 
FROM PERSON JOIN DEPARTMENT
ON PERSON.DEPARTMENTID = DEPARTMENT.DEPARTMENTID
WHERE DEPARTMENT.DEPARTMENTNAME = 'COMPUTER'

--PRACTICAL-15

--PART-A

--List all books with their authors. 
SELECT BOOK.TITLE,AUTHOR.AUTHORNAME
FROM BOOK INNER JOIN AUTHOR
ON BOOK.AUTHORID = AUTHOR.AUTHORID

--List all books with their publishers.
SELECT BOOK.TITLE,PUBLISHER.PUBLISHERNAME
FROM BOOK INNER JOIN PUBLISHER
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID

--List all books with their authors and publishers. 
SELECT BOOK.TITLE,AUTHOR.AUTHORNAME,PUBLISHER.PUBLISHERNAME
FROM PUBLISHER INNER JOIN AUTHOR INNER JOIN BOOK
ON BOOK.AUTHORID = AUTHOR.AUTHORID
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID

--List all books published after 2010 with their authors and publisher and price. 
SELECT BOOK.TITLE,AUTHOR.AUTHORNAME,PUBLISHER.PUBLISHERNAME,BOOK.PRICE
FROM PUBLISHER INNER JOIN AUTHOR INNER JOIN BOOK
ON BOOK.AUTHORID = AUTHOR.AUTHORID
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID
WHERE BOOK.PUBLICATIONYEAR > 2010

--List all authors and the number of books they have written. 
SELECT AUTHOR.AUTHORNAME,COUNT(BOOK.BOOKID) AS NUMBER_OF_BOOKS
FROM AUTHOR INNER JOIN BOOK
ON BOOK.AUTHORID = AUTHOR.AUTHORID
GROUP BY AUTHOR.AUTHORNAME

--List all publishers and the total price of books they have published.
SELECT PUBLISHER.PUBLISHERNAME,SUM(BOOK.PRICE)
FROM PUBLISHER INNER JOIN BOOK
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID
GROUP BY PUBLISHER.PUBLISHERNAME

--List authors who have not written any books. 
SELECT AUTHOR.AUTHORNAME,COUNT(BOOK.BOOKID) AS NUMBER_OF_BOOKS
FROM AUTHOR INNER JOIN BOOK
ON BOOK.AUTHORID = AUTHOR.AUTHORID
GROUP BY AUTHOR.AUTHORNAME
HAVING COUNT(BOOK.BOOKID) = 0

--Display the total number of books written by each author along with the average price of their books. 
SELECT AUTHOR.AUTHORNAME,COUNT(BOOK.BOOKID)  AS NUMBER_OF_BOOKS,AVG(BOOK.PRICE) AS AVG_PRICE
FROM AUTHOR INNER JOIN BOOK
ON BOOK.AUTHORID = AUTHOR.AUTHORID
GROUP BY AUTHOR.AUTHORNAME

--lists each publisher along with the total number of books they have published, sorted from highest to lowest. 
SELECT PUBLISHER.PUBLISHERNAME,COUNT(BOOK.BOOKID)
FROM PUBLISHER INNER JOIN BOOK
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID
GROUP BY PUBLISHER.PUBLISHERNAME
ORDER BY COUNT(BOOK.BOOKID) DESC

--Display number of books published each year.
SELECT BOOK.PUBLICATIONYEAR,COUNT(BOOK.BOOKID)
FROM PUBLISHER INNER JOIN BOOK
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID
GROUP BY BOOK.PUBLICATIONYEAR

--PART-B

CREATE TABLE EMPLOYEE_MASTER(
	EmployeeNo INT,
	Name VARCHAR(50),
	ManagerNo INT
)

INSERT INTO EMPLOYEE_MASTER VALUES
('E01','Tarun',NULL),
('E02','Rohan','E02'),
('E03','Priya','E01'),
('E04','Milan','E03'),
('E05','Jay','E01'),
('E06','Anjana','E04')

--List the publishers whose total book prices exceed 500, ordered by the total price. 
SELECT PUBLISHER.PUBLISHERNAME,SUM(BOOK.PRICE)
FROM PUBLISHER INNER JOIN BOOK
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID
GROUP BY PUBLISHER.PUBLISHERNAME
HAVING SUM(BOOK.PRICE) > 500
ORDER BY SUM(BOOK.PRICE)

--List most expensive book for each author, sort it with the highest price. 
SELECT AUTHOR.AUTHORNAME,MAX(BOOK.PRICE)
FROM BOOK INNER JOIN AUTHOR 
ON BOOK.AUTHORID = AUTHOR.AUTHORID
GROUP BY AUTHOR.AUTHORNAME
ORDER BY MAX(BOOK.PRICE) DESC

--Display publisher name and difference between maximum and minimum book price. 
SELECT PUBLISHER.PUBLISHERNAME , MAX(BOOK.PRICE)-MIN(BOOK.PRICE)
FROM PUBLISHER INNER JOIN BOOK
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID
GROUP BY PUBLISHER.PUBLISHERNAME

--List publisher name and total price of books published each year.
SELECT PUBLISHER.PUBLISHERNAME , BOOK.PUBLICATIONYEAR ,SUM(BOOK.PRICE)
FROM PUBLISHER INNER JOIN BOOK
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID
GROUP BY PUBLISHER.PUBLISHERNAME, BOOK.PUBLICATIONYEAR

--Display author name and total price of books sorted by highest total price.
SELECT AUTHOR.AUTHORNAME , SUM(BOOK.PRICE)
FROM AUTHOR INNER JOIN BOOK
ON BOOK.AUTHORID = AUTHOR.AUTHORID
GROUP BY AUTHOR.AUTHORNAME
ORDER BY SUM(BOOK.PRICE) DESC 

--PART-C

--Retrieve the names of employee along with their manager’s name from the Employee table. 
SELECT E.NAME AS EMPLOYEE , M.NAME AS MANAGER
FROM EMPLOYEE_MASTER E INNER JOIN EMPLOYEE_MASTER M
ON M.ManagerNo = E.EmployeeNo

--Display employees who are managers. 
SELECT E.NAME AS EMPLOYEE , M.NAME AS MANAGER
FROM EMPLOYEE_MASTER E INNER JOIN EMPLOYEE_MASTER M
ON M.ManagerNo = E.EmployeeNo
WHERE E.NAME = M.NAME

--Display number of employees working under each manager. 
SELECT M.NAME AS MANAGER, COUNT(E.NAME) AS TOTAL_EMPLOYEE
FROM EMPLOYEE_MASTER E INNER JOIN EMPLOYEE_MASTER M
ON M.ManagerNo = E.EmployeeNo
GROUP BY M.NAME

--Display the employee’s name along with their manager’s name and senior manager name. 
SELECT E.NAME AS EMPLOYEE , M.NAME AS MANAGER, S.NAME AS SENIORMANAGER
FROM EMPLOYEE_MASTER E INNER JOIN EMPLOYEE_MASTER M INNER JOIN EMPLOYEE_MASTER S
ON M.ManagerNo = S.ManagerNo
ON M.ManagerNo = E.EmployeeNo

--Display managers and count of employees under them in descending order. 
SELECT M.NAME AS MANAGER,COUNT(E.NAME)
FROM EMPLOYEE_MASTER E INNER JOIN EMPLOYEE_MASTER M 
ON M.ManagerNo = E.EmployeeNo
GROUP BY M.Name
ORDER BY COUNT(E.Name) DESC

--PRACTICAL-16

--PART-A

--Display players who belong to teams located in ‘Mumbai’. 
SELECT PLAYER.PLAYER_FIRST_NAME,TEAM.TEAM_NAME 
FROM TEAM INNER JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.TEAM_ID
WHERE TEAM.TEAM_NAME = 'Mumbai Indians'

--Display all teams and players. 
SELECT PLAYER.PLAYER_FIRST_NAME,TEAM.TEAM_NAME 
FROM TEAM INNER JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.TEAM_ID

--Display players along with team wins and stadium city. 
SELECT * FROM STADIUM,TEAM,PLAYER

SELECT PLAYER.PLAYER_FIRST_NAME, TEAM.TEAM_NAME, STADIUM.STADIUM_CITY
FROM PLAYER INNER JOIN TEAM INNER JOIN STADIUM
ON TEAM.HOME_STADIUM_ID = STADIUM.STADIUM_ID
ON TEAM.TEAM_ID = PLAYER.TEAM_ID

--Display team name and number of players in each team. 
SELECT TEAM.TEAM_NAME , COUNT(PLAYER.PLAYER_FIRST_NAME)
FROM PLAYER INNER JOIN TEAM
ON TEAM.TEAM_ID = PLAYER.TEAM_ID
GROUP BY TEAM.TEAM_NAME

--Display team name, coach, and number of bowlers in each team. 
SELECT TEAM.TEAM_NAME, TEAM.TEAM_COACH , COUNT(PLAYER.PLAYER_ROLE)
FROM TEAM INNER JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.TEAM_ID
WHERE PLAYER.PLAYER_ROLE = 'BOLWER'
GROUP BY TEAM.TEAM_NAME ,TEAM.TEAM_COACH
ORDER BY COUNT(PLAYER.PLAYER_ROLE)

--Display team name with count of batsmen, bowlers, and all-rounders. 
SELECT TEAM.TEAM_NAME, COUNT(PLAYER.PLAYER_ROLE)
FROM TEAM  JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.TEAM_ID
GROUP BY TEAM.TEAM_NAME , PLAYER.PLAYER_ROLE

--Display stadiums where teams have won more than 10 matches. 
SELECT STADIUM.Stadium_name
FROM STADIUM INNER JOIN TEAM
ON TEAM.HOME_STADIUM_ID = STADIUM.Stadium_id
WHERE TEAM.TEAM_TOTAL_MATCHES > 10

--Display team name and number of players whose matches played is greater than 25. 
SELECT TEAM.TEAM_NAME, COUNT(PLAYER.PLAYER_ID),SUM(PLAYER.PLAYER_MATCHES_PLAYED)
FROM TEAM INNER JOIN PLAYER
ON PLAYER.TEAM_ID = TEAM.TEAM_ID
GROUP BY TEAM.TEAM_NAME 
HAVING SUM(PLAYER.PLAYER_MATCHES_PLAYED) > 25

--Display team name and total number of players having jersey number greater than 30. 
SELECT TEAM.TEAM_NAME, COUNT(PLAYER.PLAYER_ID),COUNT(PLAYER.PLAYER_JERSEY_NUMBER)
FROM TEAM INNER JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.PLAYER_ID
GROUP BY TEAM.TEAM_NAME
HAVING count(PLAYER.PLAYER_JERSEY_NUMBER) > 30

--Display team name and total matches played by its players.
SELECT TEAM.TEAM_NAME, SUM(TEAM.TEAM_TOTAL_MATCHES)
FROM TEAM INNER JOIN PLAYER
ON PLAYER.TEAM_ID = TEAM.TEAM_ID
GROUP BY TEAM.TEAM_NAME

--PART-B

--Display stadium city and total number of teams in each city. 
SELECT STADIUM.Stadium_city ,SUM(TEAM.TEAM_ID)
FROM STADIUM INNER JOIN TEAM 
ON STADIUM.Stadium_id = TEAM.HOME_STADIUM_ID
GROUP BY STADIUM.Stadium_city

--Display team name and average matches played by players in each team. 
SELECT TEAM.TEAM_NAME, AVG(PLAYER.PLAYER_MATCHES_PLAYED)
FROM TEAM INNER JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.TEAM_ID
GROUP BY TEAM.TEAM_NAME

--Display team name and maximum matches played by any player in each team. 
SELECT TEAM.TEAM_NAME, MAX(PLAYER.PLAYER_MATCHES_PLAYED)
FROM TEAM INNER JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.TEAM_ID
GROUP BY TEAM.TEAM_NAME

--Display team name and minimum matches played by any player in each team. 
SELECT TEAM.TEAM_NAME, MIN(PLAYER.PLAYER_MATCHES_PLAYED)
FROM TEAM INNER JOIN PLAYER
ON TEAM.TEAM_ID = PLAYER.TEAM_ID
GROUP BY TEAM.TEAM_NAME

--Display stadium name and total number of players playing under teams of that stadium.
SELECT STADIUM.Stadium_name , TEAM.TEAM_NAME,COUNT(PLAYER.PLAYER_ID)
FROM STADIUM INNER JOIN TEAM INNER JOIN PLAYER
ON PLAYER.TEAM_ID = TEAM.TEAM_ID
ON STADIUM.Stadium_id = TEAM.HOME_STADIUM_ID
GROUP BY STADIUM.Stadium_name, TEAM.TEAM_NAME

--PRACTICAL-17

--PART-A

--Create a view Employee_All with all columns.
CREATE VIEW Employee_All
AS
SELECT * FROM EMPLOYEE

--Create a view Employee_NameDeptSalary having columns FirstName, Department and Salary. 
CREATE VIEW Employee_NameDeptSalary 
AS
SELECT FIRSTNAME,DEPARTMENT,SALARY FROM EMPLOYEE

--Create a view Employee_Basic having columns EID, FirstName and City. 
CREATE VIEW Employee_Basic 
AS
SELECT EID,FIRSTNAME,CITY FROM EMPLOYEE

--Create a view IT_Employees that displays IT department data only. 
CREATE VIEW IT_Employees 
AS
SELECT * FROM EMPLOYEE WHERE DEPARTMENT='IT'

--Create a view HR_Employees that displays HR department data only. 
CREATE VIEW HR_Employees
AS 
SELECT * FROM EMPLOYEE WHERE DEPARTMENT='HR'

--Create a view Employee_2026 that displays employees joined in 2026 only. 
CREATE VIEW Employee_2026
AS 
SELECT * FROM EMPLOYEE WHERE JOININGYEAR= 2026

--Create a view Patel_Employees that displays employees whose last name is PATEL. 
CREATE VIEW Patel_Employees
AS
SELECT * FROM EMPLOYEE WHERE LASTNAME='PATEL'

--Create a view High_Salary_Emp having all columns but employees whose salary is more than 12000.
CREATE VIEW High_Salary_Emp
AS
SELECT * FROM EMPLOYEE WHERE SALARY > 12000

--Create a view that displays information of all employees whose salary is above 14000. 
CREATE VIEW EMP_SAL
AS 
SELECT * FROM EMPLOYEE WHERE SALARY > 14000

--Create a view that displays employees having salary below 10000. 
CREATE VIEW EMP_BELOW
AS
SELECT * FROM EMPLOYEE WHERE SALARY < 10000

--Create a view Server_Dept that displays Server department employees only. 
CREATE VIEW SERVER_DEPT
AS
SELECT * FROM EMPLOYEE WHERE DEPARTMENT = 'SERVER'

--Insert a new record into Employee_Basic view. (111, MEET, SURAT) 
INSERT INTO Employee_Basic VALUES(111,'MEET','SURAT')

--Update the department of DEEP from ADMIN to IT in Employee_NameDeptSalary view. 
UPDATE Employee_NameDeptSalary
SET DEPARTMENT = 'IT'
WHERE FIRSTNAME = 'DEEP'

--Delete an employee whose EID is 107 from Employee_Basic view. 
DELETE Employee_Basic
WHERE EID=107

--Drop IT_Employees view from the database. 
DROP VIEW IT_Employees

--PART-B

-- Create a view Admin_Employees that displays ADMIN department employees only. 
CREATE VIEW Admin_Employees
AS 
SELECT * FROM DEPARTMENT='ADMIN'

--Create a view Female_Employees that displays female employee data only. 
CREATE VIEW Female_Employees 
AS
SELECT * FROM EMPLOYEE WHERE GENDER='FEMALE'

--Create a view Male_Employees that displays male employee data only. 
CREATE VIEW Male_Employees 
AS
SELECT * FROM EMPLOYEE WHERE GENDER='MALE'

--Create a view Rajkot_Employees that displays employees from Rajkot city only. 
CREATE VIEW Rajkot_Employees 
AS
SELECT * FROM EMPLOYEE WHERE CITY = 'RAJKOT'

--Create a view Ahmedabad_Employees that displays employees from Ahmedabad city only. 
CREATE VIEW Ahmedabad_Employees 
AS
SELECT * FROM EMPLOYEE WHERE CITY = 'Ahmedabad'

--Create a view Salary_Between that displays employees whose salary is between 10000 and 14000. 
CREATE VIEW Salary_Between
AS
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 10000 AND 14000

--Create a view Recent_Employees that displays employees joined after 2023. 
CREATE VIEW Recent_Employees
AS
SELECT * FROM EMPLOYEE WHERE JOININGYEAR > 2023

--Create a view Old_Employees that displays employees joined before 2023. 
CREATE VIEW Old_Employees
AS
SELECT * FROM EMPLOYEE WHERE JOININGYEAR < 2023

--Create a view Employees_Start_R that displays employees whose first name starts with R. 
CREATE VIEW Employees_Start_R 
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('R%')

--Create a view Employees_End_A that displays employees whose first name ends with A.
CREATE VIEW Employees_End_A
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('%A')

--PART-C

--Create a view Employees_NameContains_H that displays employees whose first name contains H. 
CREATE VIEW Employees_NameContains_H
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('%H%') 

--Create a view for the employees whose first name contains vowels. 
CREATE VIEW Employees_NameContains
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('%[A,E,I,O,U]%') 

--Create a view FourLetter_Name having EID, FirstName and Department columns in which FirstName consists of four letters. 
CREATE VIEW FourLetter_Name
AS
SELECT EID,FIRSTNAME,DEPARTMENT FROM EMPLOYEE WHERE FIRSTNAME LIKE('____') 

--Create a view for the employees whose name starts with M and ends with N. 
CREATE VIEW VIEW_MN
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('M%N') 

--Create a view Transport_Dept that displays Transport department employees only. 
CREATE VIEW Transport_Dept
AS 
SELECT * FROM EMPLOYEE WHERE DEPARTMENT = 'TRANSPORT'

--PRACTICAL-18

--PART-A

--Display the details of students whose SPI is greater than the average SPI. 
SELECT * FROM STUDENT WHERE SPI > (SELECT AVG(SPI) FROM STUDENT)

--Display the names of students whose SPI is less than the average SPI. 
SELECT SNAME FROM STUDENT WHERE SPI < (SELECT AVG(SPI) FROM STUDENT)

--Display the student details who has the highest SPI. 
SELECT * FROM STUDENT WHERE SPI = (SELECT MAX(SPI) FROM STUDENT)

--Display the student details who has the lowest SPI. 
SELECT * FROM STUDENT WHERE SPI = (SELECT MIN(SPI) FROM STUDENT)

--Display the students whose SPI is greater than SPI of student DHARMIK. 
SELECT SNAME FROM STUDENT WHERE SPI > (SELECT SPI FROM STUDENT WHERE SNAME = ' DHARMIK')

--Display the students whose SPI is less than SPI of student RIYA. 
SELECT SNAME FROM STUDENT WHERE SPI < (SELECT SPI FROM STUDENT WHERE SNAME = ' RIYA')

--Display the students who belong to the same branch as KRUNAL. 
SELECT SNAME FROM STUDENT WHERE BRANCH IN (SELECT BRANCH FROM STUDENT WHERE SNAME = ' KRUNAL')

--Display the students whose branch is different from HETVI. 
SELECT SNAME FROM STUDENT WHERE BRANCH NOT IN (SELECT BRANCH FROM STUDENT WHERE SNAME = ' HETVI')

--Display the second highest SPI from RESULT table.  
SELECT MAX(SPI) FROM RESULT WHERE SPI < (SELECT MAX(SPI) FROM RESULT)

--Display the second lowest SPI from RESULT table.  
SELECT MIN(SPI) FROM RESULT WHERE SPI > (SELECT MIN(SPI) FROM RESULT)

--Display the names of students whose SPI is above branch-wise average SPI.  
SELECT SNAME FROM STUDENT WHERE EXISTS (SELECT BRANCH,AVG(SPI) FROM STUDENT GROUP BY BRANCH)

--Display the branch having maximum average SPI. 
SELECT BRANCH, AVG(SPI) AS Average_SPI
FROM STUDENT
GROUP BY BRANCH
HAVING AVG(SPI) = (
    SELECT MAX(Avg_SPI)
    FROM (
        SELECT AVG(SPI) AS Avg_SPI
        FROM STUDENT
        GROUP BY BRANCH
    ) AS Branch_Averages
)

-- Display the branch having minimum average SPI. 
SELECT BRANCH, AVG(SPI) AS Average_SPI
FROM STUDENT
GROUP BY BRANCH
HAVING AVG(SPI) = (
    SELECT MIN(Avg_SPI)
    FROM (
        SELECT AVG(SPI) AS Avg_SPI
        FROM STUDENT
        GROUP BY BRANCH
    ) AS Branch_Averages
)

--PART-B

--Display the students whose SPI is greater than all students of ME branch.  
SELECT * FROM STUDENT WHERE SPI > (SELECT SUM(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')

--Display the students whose SPI is less than any student of ME branch.  
SELECT * FROM STUDENT WHERE SPI < (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')

--Display the student details whose SPI is not equal to any SPI of EC branch students.  
SELECT * FROM STUDENT WHERE SPI != (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'ELECTRICAL ')

--Display the names of students who scored higher SPI than student of RNO 103.  
SELECT SNAME FROM STUDENT WHERE SPI > (SELECT SPI FROM STUDENT WHERE STDID = 103)

--Display the students whose SPI is greater than average SPI of their own branch.
SELECT * FROM STUDENT AS OUTER_STUDENT 
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)

--Display the students whose SPI is greater than the average SPI of CE branch but greater than the maximum SPI of ME branch.  
SELECT * FROM STUDENT
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT WHERE BRANCH = 'COMPUTER')
AND SPI > (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')

--Display the branch names whose average SPI is greater than the overall average SPI.
SELECT BRANCH,AVG(SPI) FROM STUDENT 
GROUP BY BRANCH 
HAVING AVG(SPI) > (SELECT AVG(SPI) FROM STUDENT)

--Display the students who have maximum SPI in their respective branch. 
SELECT * FROM STUDENT AS OUTER_STUDENT
WHERE SPI = (SELECT MAX(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)

--Display the students whose SPI is greater than their average SPI of their branch and greater than overall average SPI.  
SELECT * FROM STUDENT AS OUTER_STUDENT
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)
AND SPI > (SELECT AVG(SPI) FROM STUDENT)

--PART-C

--Display the students whose SPI is greater than at least one student of every branch.  
SELECT * FROM STUDENT AS OUTER_STUDENT
WHERE SPI > (SELECT MIN(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)

--Display the students whose SPI is less than all students of CE branch.  
SELECT * FROM STUDENT WHERE SPI < ALL(SELECT SPI FROM STUDENT WHERE BRANCH = 'COMPUTER')

--Display the branch that contains the student with highest SPI.  
SELECT DISTINCT * FROM STUDENT WHERE SPI = (SELECT MAX(SPI) FROM STUDENT)

--Display the students whose SPI is less than the SPI of every student in CE branch and greater than every student in ME branch.
SELECT * FROM STUDENT WHERE SPI < (SELECT MIN(SPI) FROM STUDENT WHERE BRANCH = 'COMPUTER')
AND SPI > (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')

--PRACTICAL-19

--PART-A

CREATE TABLE ONLINE_CUSTOMER (
    CID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE OFFLINE_CUSTOMER (
    CID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE CUSTOMER (
    CID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    MEMBERSHIP VARCHAR(50)
);

INSERT INTO ONLINE_CUSTOMER (CID, Name, City) VALUES
(101, 'RAHUL', 'RAJKOT'),
(103, 'PTIYA', 'SURAT'),
(106, 'DHARMIK', 'SURAT'),
(107, 'MEHUL', 'MORBI')

INSERT INTO OFFLINE_CUSTOMER (CID, Name, City) VALUES
(102, 'AMIT', 'AHMEDABAD'),
(104, 'HETVI', 'BARODA'),
(105, 'RIYA', 'RAJKOT'),
(106, 'DHARMIK', 'SURAT')

INSERT INTO CUSTOMER (CID, Name, City, MEMBERSHIP) VALUES
(101, 'RAHUL', 'RAJKOT', 'GOLD'),
(102, 'AMIT', 'AHMEDABAD', 'SILVER'),
(103, 'PTIYA', 'SURAT', 'GOLD'),
(104, 'HETVI', 'BARODA', 'PLATINUM'),
(105, 'RIYA', 'RAJKOT', 'SILVER'),
(106, 'DHARMIK', 'SURAT', 'GOLD'),
(108, 'ISHITA', 'RAJKOT', 'GOLD')

--Display all unique customer names from ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
SELECT * FROM ONLINE_CUSTOMER 
UNION
SELECT * FROM OFFLINE_CUSTOMER

--Display all unique customer cities from ONLINE_CUSTOMER and OFFLINE_CUSTOMER.
SELECT CITY FROM ONLINE_CUSTOMER 
UNION
SELECT CITY FROM OFFLINE_CUSTOMER

--Display duplicate customer names from both tables ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
SELECT * FROM ONLINE_CUSTOMER 
INTERSECT 
SELECT * FROM OFFLINE_CUSTOMER

--Display unique customer IDs from both tables.
SELECT CID FROM ONLINE_CUSTOMER 
UNION
SELECT CID FROM OFFLINE_CUSTOMER

--Display all GOLD membership customer names and online customer names using UNION. 
SELECT NAME FROM CUSTOMER WHERE MEMBERSHIP = 'GOLD' 
UNION 
SELECT NAME FROM ONLINE_CUSTOMER

--Display all customer names from CUSTOMER and ONLINE_CUSTOMER using UNION. 
SELECT NAME FROM CUSTOMER
UNION 
SELECT NAME FROM ONLINE_CUSTOMER

--Display all cities from CUSTOMER and OFFLINE_CUSTOMER using UNION.
SELECT CITY FROM CUSTOMER  
UNION 
SELECT CITY FROM ONLINE_CUSTOMER

--Display all customer IDs from CUSTOMER and OFFLINE_CUSTOMER using UNION ALL.
SELECT ID FROM CUSTOMER
UNION 
SELECT ID FROM OFFLINE_CUSTOMER

--Display all customer names from RAJKOT city using UNION.
SELECT NAME FROM CUSTOMER WHERE CITY = 'RAJKOT'
UNION
SELECT NAME FROM OFFLINE_CUSTOMER WHERE CITY = 'RAJKOT'
UNION 
SELECT NAME FROM ONLINE_CUSTOMER WHERE CITY = 'RAJKOT'

--Display all customer names starting with R from both tables using UNION.
SELECT NAME FROM OFFLINE_CUSTOMER WHERE NAME LIKE ('R%')
UNION 
SELECT NAME FROM ONLINE_CUSTOMER WHERE NAME LIKE ('R%')

--Display customers who are both ONLINE and OFFLINE.
SELECT NAME FROM ONLINE_CUSTOMER
INTERSECT
SELECT NAME FROM OFFLINE_CUSTOMER

--Display customer IDs existing in both ONLINE_CUSTOMER and OFFLINE_CUSTOMER.
SELECT CID FROM ONLINE_CUSTOMER
INTERSECT
SELECT CID FROM OFFLINE_CUSTOMER

--Display customer names existing only in ONLINE_CUSTOMER.
SELECT NAME FROM ONLINE_CUSTOMER
EXCEPT
SELECT NAME FROM CUSTOMER

--Display customer names existing only in OFFLINE_CUSTOMER.
SELECT NAME FROM OFFLINE_CUSTOMER
EXCEPT
SELECT NAME FROM CUSTOMER 

--Display cities available in both ONLINE_CUSTOMER and OFFLINE_CUSTOMER.
SELECT CITY FROM OFFLINE_CUSTOMER
INTERSECT
SELECT CITY FROM ONLINE_CUSTOMER 

--PART-B

--Display customer names who are GOLD members and online customers. 
SELECT NAME FROM CUSTOMER WHERE MEMBERSHIP = 'GOLD'
UNION 
SELECT NAME FROM ONLINE_CUSTOMER

--Display customer names who are PLATINUM members but not online customers. 
SELECT NAME FROM CUSTOMER WHERE MEMBERSHIP = 'PLATINUM'
EXCEPT
SELECT NAME FROM ONLINE_CUSTOMER

--Display customer IDs who are online customers but not offline customers. 
SELECT CID FROM ONLINE_CUSTOMER
EXCEPT
SELECT CID FROM OFFLINE_CUSTOMER

--Display customer IDs who are offline customers but not online customers. 
SELECT CID FROM OFFLINE_CUSTOMER
EXCEPT
SELECT CID FROM ONLINE_CUSTOMER

--Display customers who are present in CUSTOMER table but not in ONLINE_CUSTOMER. 
SELECT * FROM CUSTOMER
EXCEPT
SELECT * FROM ONLINE_CUSTOMER

--Display customers who are both GOLD members and available in OFFLINE_CUSTOMER. 
SELECT NAME FROM CUSTOMER WHERE MEMBERSHIP = 'GOLD'
INTERSECT 
SELECT NAME FROM OFFLINE_CUSTOMER

--Display all distinct cities from all three tables. 
SELECT  DISTINCT CITY FROM CUSTOMER
UNION
SELECT  DISTINCT CITY FROM ONLINE_CUSTOMER
UNION
SELECT  DISTINCT CITY FROM OFFLINE_CUSTOMER

--Display customers who are online customers and belong to SURAT city using INTERSECT. 
SELECT NAME FROM CUSTOMER WHERE CITY = 'SURAT'
INTERSECT 
SELECT NAME FROM ONLINE_CUSTOMER

--Display customers who are offline customers but not from RAJKOT city using MINUS. 
SELECT NAME FROM CUSTOMER WHERE CITY != 'RAJKOT' 
EXCEPT
SELECT NAME FROM OFFLINE_CUSTOMER

--Display customers who are GOLD members, online customers, and from SURAT city using INTERSECT. 
SELECT NAME FROM CUSTOMER WHERE MEMBERSHIP = 'GOLD'
INTERSECT
SELECT NAME FROM ONLINE_CUSTOMER WHERE CITY = 'SURAT'

--PART-C

--Display customer names who are present in at least two tables. 
SELECT NAME FROM CUSTOMER 
INTERSECT
SELECT NAME FROM ONLINE_CUSTOMER
INTERSECT
SELECT NAME FROM OFFLINE_CUSTOMER

--Display all customer names from CUSTOMER table excluding customers available in both ONLINE_CUSTOMER and OFFLINE_CUSTOMER.
SELECT NAME FROM CUSTOMER
EXCEPT
SELECT NAME FROM ONLINE_CUSTOMER
EXCEPT
SELECT NAME FROM OFFLINE_CUSTOMER

--Display customer names who are present in both ONLINE_CUSTOMER and OFFLINE_CUSTOMER but not PLATINIUM members. 
(SELECT NAME FROM ONLINE_CUSTOMER
INTERSECT
SELECT NAME FROM OFFLINE_CUSTOMER)
UNION
SELECT NAME FROM CUSTOMER WHERE MEMBERSHIP = 'PLATINUM'

--Display customer names who are either online or offline but not both. 
SELECT NAME FROM ONLINE_CUSTOMER EXCEPT SELECT NAME FROM OFFLINE_CUSTOMER
UNION
SELECT NAME FROM OFFLINE_CUSTOMER EXCEPT SELECT NAME FROM ONLINE_CUSTOMER

--Display customer IDs present in CUSTOMER table but missing from both ONLINE_CUSTOMER and OFFLINE_CUSTOMER.
SELECT CID FROM ONLINE_CUSTOMER INTERSECT SELECT CID FROM OFFLINE_CUSTOMER
UNION
SELECT CID FROM OFFLINE_CUSTOMER INTERSECT SELECT CID FROM ONLINE_CUSTOMER

--PRACTICAL-20

--Display rank of students based on SPI. 
SELECT STDID,SNAME,SPI,
RANK() OVER (ORDER BY SPI) AS [RANK]
FROM STUDENT

--Display dense rank of students based on SPI. 
SELECT STDID,SNAME,SPI,
DENSE_RANK() OVER (ORDER BY SPI) AS [RANK]
FROM STUDENT

--Display sequential number for each student record. 
SELECT STDID,SNAME,SPI,
ROW_NUMBER() OVER (ORDER BY SPI) AS [RANK]
FROM STUDENT

--Display branch-wise rank of students. 
SELECT STDID,SNAME,BRANCH,
RANK() OVER (ORDER BY BRANCH) AS [B_RANK]
FROM STUDENT

--Display branch-wise dense ranking of students. 
SELECT STDID,SNAME,BRANCH,
DENSE_RANK() OVER (ORDER BY BRANCH) AS [B_RANK]
FROM STUDENT

--Display branch-wise sequential numbering of students. 
SELECT STDID,SNAME,BRANCH,
ROW_NUMBER() OVER (ORDER BY BRANCH) AS [B_RANK]
FROM STUDENT

--Display SNAME, Current SPI, Previous SPI and SPI Difference with previous student in ascending order of SPI. 
SELECT STDID,SNAME,SPI AS Current_SPI,
LAG(SPI) OVER (ORDER BY SPI) AS Previous_SPI,
SPI-LAG(SPI) OVER (ORDER BY SPI) AS Difference
FROM STUDENT

--Display SNAME, Current SPI, Next SPI and SPI Difference with next student in descending order of SPI. 
SELECT STDID,SNAME,SPI AS Current_SPI,
LEAD(SPI) OVER (ORDER BY SPI) AS Next_SPI,
SPI-LEAD(SPI) OVER (ORDER BY SPI DESC) AS Difference
FROM STUDENT

--Display top 3 students based on SPI.
SELECT TOP 3 STDID,SNAME,SPI,
RANK() OVER (ORDER BY SPI) AS [RANK]
FROM STUDENT 

--Display top 2 students from each branch.
SELECT TOP 2 STDID,SNAME,BRANCH,
RANK() OVER (ORDER BY BRANCH) AS [B_RANK]
FROM STUDENT 

--PART-B

-- Display 5th highest SPI.
WITH STUDENTRANK AS
(SELECT STDID,SNAME,SPI,
DENSE_RANK() OVER (ORDER BY SPI DESC) AS RANKNO
FROM STUDENT)
SELECT * FROM STUDENTRANK 

-- Display 6th highest SPI. 
WITH STUDENTRANK AS
(SELECT STDID,SNAME,SPI,
DENSE_RANK() OVER (ORDER BY SPI DESC) AS RANKNO
FROM STUDENT)
SELECT * FROM STUDENTRANK WHERE RANKNO = 6

--Display students having same ranking. 
WITH STUDENTRANK AS
(SELECT STDID,SNAME,SPI,
DENSE_RANK() OVER (ORDER BY SPI DESC) AS RANKNO
FROM STUDENT)
SELECT * FROM STUDENTRANK 

--Display SNAME, Previous SPI, Current SPI and Next SPI based on ascending order of SPI. 
WITH STUDENTRANK AS
(SELECT STDID,SNAME,SPI,
LAG(SPI) OVER (ORDER BY spi) AS Previous_SPI,
LEAD(SPI) OVER (ORDER BY SPI) AS Current_SPI
FROM STUDENT)
SELECT * FROM STUDENTRANK

--Display topper of each branch. 
WITH STUDENTRANK AS
(SELECT STDID,SNAME,BRANCH,
DENSE_RANK() OVER (PARTITION BY BRANCH ORDER BY BRANCH) AS [B_RANK]
FROM STUDENT)
SELECT * FROM STUDENTRANK WHERE B_RANK = 1

--practical-21

--Display all students whose SPI is greater than 8. 
WITH STU_SPI AS
(SELECT * FROM STUDENT WHERE SPI > 8)
SELECT * FROM STU_SPI

--Display average SPI of all students. 
WITH STU_AVG_SPI AS
(SELECT STDID,AVG(SPI) AS AVG_SPI FROM STUDENT GROUP BY STDID)
SELECT * FROM STU_AVG_SPI

--Display total number of students in each branch. 
WITH TOTAL_STUDENT AS
(SELECT BRANCH ,COUNT(STDID) AS NUMBER_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM TOTAL_STUDENT

--Display students who belong to RAJKOT city. 
WITH RAJKOT_STU  AS
(SELECT * FROM STUDENT WHERE CITY IN ('RAJKOT'))
SELECT * FROM RAJKOT_STU

--Find branch names that appear more than once. 
WITH TOTAL_BRANCH AS
(SELECT BRANCH ,COUNT(BRANCH) AS NUMBER_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM TOTAL_BRANCH WHERE NUMBER_STU > 1

--Display row number for each student. 
WITH ROW_NUMBER_STUDENT AS 
(SELECT STDID,SNAME,BRANCH,
ROW_NUMBER() OVER (ORDER BY SNAME) AS [S_RANK]
FROM STUDENT)
SELECT * FROM ROW_NUMBER_STUDENT

--Display top 3 students based on SPI. 
WITH ROW_NUMBER_STUDENT AS 
(SELECT STDID,SNAME,BRANCH,SPI,
DENSE_RANK() OVER (ORDER BY SPI DESC) AS [S_RANK]
FROM STUDENT)
SELECT * FROM ROW_NUMBER_STUDENT WHERE S_RANK <= 3

--Display students having maximum SPI. 
WITH MAX_SPI AS 
(SELECT BRANCH,MAX(SPI) AS MAX_SPI_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM MAX_SPI 

--Display students having minimum SPI.
WITH MIN_SPI AS 
(SELECT BRANCH,MIN(SPI) AS MIN_SPI_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM MIN_SPI 

--Display branch-wise rank of students. 
WITH BRANCH_WISE AS
(SELECT STDID,SNAME,BRANCH,
DENSE_RANK() OVER(PARTITION BY BRANCH ORDER BY STDID) AS BRANCH_WISE_RANK
FROM STUDENT)
SELECT * FROM BRANCH_WISE

--PART-B

--Display students SPI average belonging to Computer branch. 
WITH ComputerStudents AS (
    SELECT SPI
    FROM Student
    WHERE Branch = 'Computer'
)
SELECT AVG(SPI) AS Average_SPI
FROM ComputerStudents;

--Display students whose SPI is greater than average SPI of his/her branch. 
WITH BranchAverage AS (
    SELECT Branch, AVG(SPI) AS Avg_SPI
    FROM Student
    GROUP BY Branch
)
SELECT S.*
FROM Student S
JOIN BranchAverage B
ON S.Branch = B.Branch
WHERE S.SPI > B.Avg_SPI;

--Display branch having more than 2 students. 
WITH BranchCount AS (
    SELECT Branch, COUNT(*) AS Total_Students
    FROM Student
    GROUP BY Branch
)
SELECT *
FROM BranchCount
WHERE Total_Students > 2;

--Display branches having average SPI between 7 and 9
WITH BranchAverage AS (
    SELECT Branch, AVG(SPI) AS Avg_SPI
    FROM Student
    GROUP BY Branch
)
SELECT *
FROM BranchAverage
WHERE Avg_SPI BETWEEN 7 AND 9;

--PRATICAL-22

CREATE TABLE CUSTOMER_ALL (
    ORDERID INT PRIMARY KEY,
    CNAME VARCHAR(50),
    PRODUCT VARCHAR(50),
    CATEGORY VARCHAR(50),
    AMOUNT INT,
    ORDERYEAR INT,
    CITY VARCHAR(50)
);

INSERT INTO CUSTOMER_ALL
(ORDERID, CNAME, PRODUCT, CATEGORY, AMOUNT, ORDERYEAR, CITY)
VALUES
(101, 'RAHUL', 'LAPTOP', 'ELECTRONICS', 65000, 2024, 'RAJKOT'),
(102, 'PRIYA', 'MOBILE', 'ELECTRONICS', 25000, 2023, 'SURAT'),
(103, 'AMIT', 'TABLE', 'FURNITURE', 12000, 2022, 'AHMEDABAD'),
(104, 'NEHA', 'CHAIR', 'FURNITURE', 8000, 2024, 'BARODA'),
(105, 'VISHAL', 'TV', 'ELECTRONICS', 45000, 2025, 'MORBI'),
(106, 'RIYA', 'SOFA', 'FURNITURE', 30000, 2023, 'SURAT'),
(107, 'MEHUL', 'AC', 'ELECTRONICS', 40000, 2022, 'RAJKOT'),
(108, 'KRUNAL', 'BED', 'FURNITURE', 40000, 2025, 'JAMNAGAR');

--Display top 3 highest amount orders. 
WITH CTE AS (
    SELECT TOP 3 * FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
ORDER BY AMOUNT DESC


--Display second highest order amount. 
WITH CTE AS (
    SELECT DISTINCT AMOUNT
    FROM CUSTOMER_ALL
)
SELECT AMOUNT
FROM CTE
ORDER BY AMOUNT DESC


--Display customers whose order amount is greater than category average amount. 
WITH CTE AS (
    SELECT CATEGORY, AVG(AMOUNT) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT C.*
FROM CUSTOMER_ALL C
JOIN CTE T
ON C.CATEGORY = T.CATEGORY
WHERE C.AMOUNT > T.AVG_AMOUNT;

--Display categories having average amount greater than 30000. 
WITH CTE AS (
    SELECT CATEGORY, AVG(AMOUNT) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT *
FROM CTE
WHERE AVG_AMOUNT > 30000;

--Display highest amount order from each category. 
WITH CTE AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY AMOUNT DESC
           ) AS R
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R = 1;

--Display lowest amount order from each category. 
WITH CTE AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY AMOUNT ASC
           ) AS R
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R = 1;

--Display categories having more than 3 orders. 
WITH CTE AS (
    SELECT CATEGORY, COUNT(*) AS TOTAL_ORDERS
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT *
FROM CTE
WHERE TOTAL_ORDERS > 3;

--Display city-wise total order amount. 
WITH CTE AS (
    SELECT CITY, SUM(AMOUNT) AS TOTAL_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CITY
)
SELECT *
FROM CTE;

--Display category having highest average order amount. 
WITH CTE AS (
    SELECT CATEGORY, AVG(AMOUNT) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT *
FROM CTE
WHERE AVG_AMOUNT = (
    SELECT MAX(AVG_AMOUNT)
    FROM CTE
);

-- Display cumulative order amount in ascending order of amount.
WITH CTE AS (
    SELECT *,
           SUM(AMOUNT) OVER (
               ORDER BY AMOUNT
               ROWS BETWEEN UNBOUNDED PRECEDING
               AND CURRENT ROW
           ) AS CUMULATIVE_AMOUNT
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
ORDER BY AMOUNT

--Display category-wise top 2 highest amount orders. 
WITH CTE AS (
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY AMOUNT DESC
           ) AS R
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R <= 2;

--Display customers whose amount is closest to category average amount. 
WITH CTE AS (
    SELECT *,
           AVG(AMOUNT) OVER (
               PARTITION BY CATEGORY
           ) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
),
CTE2 AS (
    SELECT *,
           ABS(AMOUNT - AVG_AMOUNT) AS DIFFERENCE
    FROM CTE
),
CTE3 AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY DIFFERENCE
           ) AS R
    FROM CTE2
)
SELECT *
FROM CTE3
WHERE R = 1;

-- Display previous, current and next order amount together. 
WITH CTE AS (
    SELECT ORDERID, CNAME, AMOUNT,
           LAG(AMOUNT) OVER (
               ORDER BY ORDERID
           ) AS PREVIOUS_AMOUNT,
           LEAD(AMOUNT) OVER (
               ORDER BY ORDERID
           ) AS NEXT_AMOUNT
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE;

--Display customers whose amount is greater than previous customer's amount. 
WITH CTE AS (
    SELECT ORDERID, CNAME, AMOUNT,
           LAG(AMOUNT) OVER (
               ORDER BY ORDERID
           ) AS PREVIOUS_AMOUNT
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE AMOUNT > PREVIOUS_AMOUNT;

--Display customers whose rank and dense rank are different. 
WITH CTE AS (
    SELECT ORDERID, CNAME, AMOUNT,
           RANK() OVER (
               ORDER BY AMOUNT DESC
           ) AS R,
           DENSE_RANK() OVER (
               ORDER BY AMOUNT DESC
           ) AS DR
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R <> DR;

--PRACTICAL-23

CREATE PROCEDURE SP_INSERT_STUDENT
    @P_STDID INT,
    @P_SNAME VARCHAR(50),
     @P_CITY VARCHAR(50),
     @P_SPI DECIMAL(4,2),
    @P_BRANCH VARCHAR(50)
AS
BEGIN
    INSERT INTO STUDENT(STDID, SNAME, CITY, SPI, BRANCH)
    VALUES(@P_STDID, @P_SNAME, @P_CITY, @P_SPI, @P_BRANCH);
END 

EXEC SP_INSERT_STUDENT 115, 'PUSHTI', 'RAJKOT', 9.48, 'CHEMICAL'

EXEC SP_INSERT_STUDENT 116, 'NIKUNJ', 'SURAT', 8.80, 'COMPUTER'

CREATE PROCEDURE SP_INSERT_DEPOSIT
    @ACTNO INT,
    @CNAME VARCHAR(20),
    @BNAME VARCHAR(20),
    @AMOUNT DECIMAL(10,2),
    @ADATE DATE
AS
BEGIN
    INSERT INTO DEPOSIT
    VALUES (@ACTNO, @CNAME, @BNAME, @AMOUNT, @ADATE);
END;

EXEC SP_INSERT_DEPOSIT 118, 'HEMENT', 'BEDI', 16000, '2025-05-05';

EXEC SP_INSERT_DEPOSIT 119, 'RAVI', 'MAVDI', 24000, '2024-07-09';

CREATE PROCEDURE SP_UPDATE_STUDENT
    @STDID INT,
    @BRANCH VARCHAR(50)
AS
BEGIN
    UPDATE STUDENT
    SET BRANCH = @BRANCH
    WHERE STDID = @STDID;
END;

EXEC SP_UPDATE_STUDENT 115, 'ELECTRICAL';

EXEC SP_UPDATE_STUDENT 116, 'MECHANICAL';

CREATE PROCEDURE SP_DELETE_STUDENT
AS
BEGIN
    DELETE FROM STUDENT
    WHERE SNAME = 'RAVI';
END;

EXEC SP_DELETE_STUDENT;

CREATE PROCEDURE SP_SELECT_STUDENT_BY_ID
    @STDID INT
AS
BEGIN
    SELECT *
    FROM STUDENT
    WHERE STDID = @STDID;
END;

EXEC SP_SELECT_STUDENT_BY_ID 115;

CREATE PROCEDURE SP_TOP5_STUDENTS
AS
BEGIN
    SELECT TOP 5 *
    FROM STUDENT
    ORDER BY SPI DESC;
END;

EXEC SP_TOP5_STUDENTS;

--PART-B

CREATE PROCEDURE SP_SELECT_EMPLOYEE
AS
BEGIN
    SELECT * FROM EMPLOYEE;
END;

EXEC SP_SELECT_EMPLOYEE;

CREATE PROCEDURE SP_SELECT_EMPLOYEE_BY_DEPT
    @DEPTNAME VARCHAR(50)
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE DEPARTMENT = @DEPTNAME;
END;

EXEC SP_SELECT_EMPLOYEE_BY_DEPT 'COMPUTER';

--PRACTICAL-24

--Create a stored procedure to generate department-wise salary statistics like total salary, average salary, minimum salary, and maximum salary. (User enter only department name) 
CREATE PROCEDURE SP_DEPT_SALARY
    @DEPTNAME VARCHAR(50)
AS
BEGIN
    SELECT
        SUM(SALARY) AS TOTAL_SALARY,
        AVG(SALARY) AS AVG_SALARY,
        MIN(SALARY) AS MIN_SALARY,
        MAX(SALARY) AS MAX_SALARY
    FROM EMPLOYEE
    WHERE DEPARTMENT = @DEPTNAME;
END;

EXEC SP_DEPT_SALARY 'COMPUTER';

--Create a stored procedure that accepts a joining year and displays employees who joined that year.
CREATE PROCEDURE SP_EMPLOYEE_BY_YEAR
    @YEAR INT
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE YEAR(JOININGYEAR) = @YEAR;
END;

EXEC SP_EMPLOYEE_BY_YEAR 2024;

--Create a stored procedure for dynamic employee search using parameters (User may enter partial city name). 
CREATE PROCEDURE SP_SEARCH_EMPLOYEE
    @CITY VARCHAR(50)
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE CITY LIKE '%' + @CITY + '%';
END;

EXEC SP_SEARCH_EMPLOYEE 'RAJ';

---Create a stored procedure that accepts a salary amount and displays employees earning more than the entered salary. 
CREATE PROCEDURE SP_EMPLOYEE_SALARY
    @SALARY DECIMAL(10,2)
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE SALARY > @SALARY;
END;

EXEC SP_EMPLOYEE_SALARY 30000;

-- Create a stored procedure to display top N highest paid employees from each department (Value of N is entered by user).
CREATE PROCEDURE SP_TOP_N_EMPLOYEES
    @N INT
AS
BEGIN
    WITH CTE AS
    (
        SELECT *,
               ROW_NUMBER() OVER (
                   PARTITION BY DEPTNAME
                   ORDER BY SALARY DESC
               ) AS R
        FROM EMPLOYEE
    )
    SELECT *
    FROM CTE
    WHERE R <= @N;
END;

EXEC SP_TOP_N_EMPLOYEES 2;

--Create a stored procedure to increase salary department-wise by a given percentage. (User Enter Department Name and %, e.g. Computer 10). 
CREATE PROCEDURE SP_INCREASE_SALARY
    @DEPTNAME VARCHAR(50),
    @PERCENTAGE DECIMAL(5,2)
AS
BEGIN
    UPDATE EMPLOYEE
    SET SALARY = SALARY + (SALARY * @PERCENTAGE / 100)
    WHERE DEPARTMENT = @DEPTNAME;
END;

--Create a stored procedure to display employees having experience greater than or equal to the entered years.
CREATE PROCEDURE SP_EMPLOYEE_EXPERIENCE
    @YEARS INT
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE DATEDIFF(YEAR, JOININGYEAR, GETDATE()) >= @YEARS;
END;

--Create a stored procedure that accepts a number as input and displays details of the last N employees who joined the organization.
CREATE PROCEDURE SP_LAST_N_EMPLOYEES
    @N INT
AS
BEGIN
    SELECT TOP (@N) *
    FROM EMPLOYEE
    ORDER BY JOININGYEAR DESC
END;

--PRACTICAL-25

--Implement scalar function to return "Welcome to DBMS Lab". 
CREATE FUNCTION FN_WELCOME()
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN 'Welcome to DBMS Lab';
END;

-- Implement scalar function to calculate simple interest. 
CREATE FUNCTION FN_SIMPLE_INTEREST
(
    @P INT,
    @R FLOAT,
    @T INT
)
RETURNS FLOAT
AS
BEGIN
    RETURN (@P * @R * @T) / 100;
END;

--Implement scalar function to find difference in days between two dates. 
CREATE FUNCTION FN_DATE_DIFF
(
    @D1 DATE,
    @D2 DATE
)
RETURNS INT
AS
BEGIN
    RETURN ABS(DATEDIFF(DAY, @D1, @D2));
END;

--Implement scalar function to check whether number is odd or even. 
CREATE FUNCTION FN_ODD_EVEN
(
    @N INT
)
RETURNS VARCHAR(10)
AS
BEGIN
    IF @N % 2 = 0
        RETURN 'EVEN';

    RETURN 'ODD';
END;

--Implement scalar function to print numbers from 1 to N. 
CREATE FUNCTION FN_NUMBERS
(
    @N INT
)
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @I INT = 1;
    DECLARE @S VARCHAR(500) = '';

    WHILE @I <= @N
    BEGIN
        SET @S = @S + CAST(@I AS VARCHAR(10)) + ' ';
        SET @I = @I + 1;
    END;

    RETURN @S;
END;
 
--PART-B

--Implement scalar function to calculate factorial of given number. 
CREATE FUNCTION FN_FACTORIAL
(
    @N INT
)
RETURNS INT
AS
BEGIN
    DECLARE @I INT = 1;
    DECLARE @F INT = 1;

    WHILE @I <= @N
    BEGIN
        SET @F = @F * @I;
        SET @I = @I + 1;
    END;

    RETURN @F;
END;

--Implement scalar function to check palindrome number. 
CREATE FUNCTION FN_PALINDROME
(
    @N INT
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @TEMP INT = @N;
    DECLARE @REV BIGINT = 0;
    DECLARE @REM INT;

    IF @N < 0
        RETURN 'NOT PALINDROME';

    WHILE @TEMP > 0
    BEGIN
        SET @REM = @TEMP % 10;
        SET @REV = @REV * 10 + @REM;
        SET @TEMP = @TEMP / 10;
    END;

    IF @N = @REV
        RETURN 'PALINDROME';

    RETURN 'NOT PALINDROME';
END;

--Implement scalar function to find maximum of three numbers. 
CREATE FUNCTION FN_MAX
(
    @A INT,
    @B INT,
    @C INT
)
RETURNS INT
AS
BEGIN
    DECLARE @M INT;

    SET @M = @A;

    IF @B > @M
        SET @M = @B;

    IF @C > @M
        SET @M = @C;

    RETURN @M;
END;

--Implement scalar function to calculate square and cube of a number. 
CREATE FUNCTION FN_SQUARE
(
    @N INT
)
RETURNS BIGINT
AS
BEGIN
    RETURN CAST(@N AS BIGINT) * @N;
END;

--PRACTICAL-26

--Create a table valued function to display all student records.
CREATE FUNCTION FN_ALL_STUDENTS()
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM STUDENT
);

--Create a table valued function that accepts CITY and returns all students from that city. 
CREATE FUNCTION FN_STUDENT_CITY
(
    @CITY VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE CITY = @CITY
);


-- Create a table valued function that accepts BRANCH and returns all students of that branch. 
CREATE FUNCTION FN_STUDENT_BRANCH
(
    @BRANCH VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE BRANCH = @BRANCH
);

--Create a table valued function that accepts SPI and returns students whose SPI is greater than entered SPI. 
CREATE FUNCTION FN_STUDENT_SPI
(
    @SPI DECIMAL(4,2)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE SPI > @SPI
);

-- Create a table valued function that accepts MIN_SPI and MAX_SPI and returns students whose SPI lies between given range. 
CREATE FUNCTION FN_STUDENT_SPI_RANGE
(
    @MIN_SPI DECIMAL(4,2),
    @MAX_SPI DECIMAL(4,2)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE SPI BETWEEN @MIN_SPI AND @MAX_SPI
);

--Part – B

--Create a table valued function that accepts STDID and returns details of that student. 
CREATE FUNCTION FN_STUDENT_BY_ID
(
    @STDID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE STDID = @STDID
);

--Create a table valued function that accepts CITY and returns students whose SPI is greater than 7 from that city. 
CREATE FUNCTION FN_CITY_SPI
(
    @CITY VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE CITY = @CITY
      AND SPI > 7;
);

-- Create a table valued function that accepts BRANCH and returns students whose SPI is less than 8 from that branch. 
CREATE FUNCTION FN_BRANCH_SPI
(
    @BRANCH VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE BRANCH = @BRANCH
      AND SPI < 8;
);

--Create a table valued function that accepts TOPN and returns top N students based on SPI. 
CREATE FUNCTION FN_TOP_STUDENTS
(
    @TOPN INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP (@TOPN) *
    FROM STUDENT
    ORDER BY SPI DESC
);

--Create a table valued function that accepts BRANCH and returns highest SPI student from that branch.
CREATE FUNCTION FN_HIGHEST_SPI
(
    @BRANCH VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP 1 *
    FROM STUDENT
    WHERE BRANCH = @BRANCH
    ORDER BY SPI DESC
);

--PRACTICAL-27

--Create a cursor Employee_Cursor to fetch all rows from EMPLOYEE table and display them.
DECLARE Employee_Cursor CURSOR FOR
SELECT * FROM EMPLOYEE;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor;

WHILE @@FETCH_STATUS = 0
BEGIN
    FETCH NEXT FROM Employee_Cursor;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

--Create a cursor to display all female employees from EMPLOYEE table. 
DECLARE Employee_Cursor CURSOR FOR
SELECT * FROM EMPLOYEE
WHERE Gender = 'Female';

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor;

WHILE @@FETCH_STATUS = 0
BEGIN
    FETCH NEXT FROM Employee_Cursor;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor Employee_Cursor_Fetch to fetch records in form of EID_FirstName_LastName. 
DECLARE Employee_Cursor_Fetch CURSOR FOR
SELECT EID, FirstName, LastName
FROM EMPLOYEE;

DECLARE @ID INT, @FNAME VARCHAR(50), @LNAME VARCHAR(50);

OPEN Employee_Cursor_Fetch;

FETCH NEXT FROM Employee_Cursor_Fetch
INTO @ID, @FNAME, @LNAME;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, '_', @FNAME, '_', @LNAME);

    FETCH NEXT FROM Employee_Cursor_Fetch
    INTO @ID, @FNAME, @LNAME;
END;

CLOSE Employee_Cursor_Fetch;
DEALLOCATE Employee_Cursor_Fetch;

-- Create a cursor to find and display all employees with Salary greater than 12000. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, JOINING_DATE
FROM EMPLOYEE
WHERE YEAR(JOINING_DATE) >= 2022;

DECLARE @ID INT, @NAME VARCHAR(50), @DATE DATE;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @DATE;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @DATE);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @DATE;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

--Create a cursor to display all employees who joined in year 2022 or later.
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, JOINING_DATE
FROM EMPLOYEE
WHERE YEAR(JOINING_DATE) >= 2022;

DECLARE @ID INT, @NAME VARCHAR(50), @DATE DATE;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @DATE;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @DATE);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @DATE;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to fetch Employee Name with Department Name. 
DECLARE Employee_Cursor CURSOR FOR
SELECT FirstName, LastName, DEPTNAME
FROM EMPLOYEE;

DECLARE @FNAME VARCHAR(50), @LNAME VARCHAR(50),
        @DEPT VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @FNAME, @LNAME, @DEPT;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@FNAME, ' ', @LNAME,
                 ' works in ', @DEPT, ' Department');

    FETCH NEXT FROM Employee_Cursor
    INTO @FNAME, @LNAME, @DEPT;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;
 
-- Create a cursor to update CITY as ‘AHMEDABAD’ for employees whose CITY value is NULL. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID FROM EMPLOYEE
WHERE CITY IS NULL;

DECLARE @ID INT;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor INTO @ID;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE EMPLOYEE
    SET CITY = 'AHMEDABAD'
    WHERE EID = @ID;

    FETCH NEXT FROM Employee_Cursor INTO @ID;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display Employee Name with City Name. 
DECLARE Employee_Cursor CURSOR FOR
SELECT FirstName, LastName, CITY
FROM EMPLOYEE;

DECLARE @FNAME VARCHAR(50), @LNAME VARCHAR(50),
        @CITY VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @FNAME, @LNAME, @CITY;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@FNAME, ' ', @LNAME,
                 ' lives in ', @CITY);

    FETCH NEXT FROM Employee_Cursor
    INTO @FNAME, @LNAME, @CITY;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

--Create a cursor to delete employees whose Salary is less than 5000. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID FROM EMPLOYEE
WHERE Salary < 5000;

DECLARE @ID INT;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor INTO @ID;

WHILE @@FETCH_STATUS = 0
BEGIN
    DELETE FROM EMPLOYEE
    WHERE EID = @ID;

    FETCH NEXT FROM Employee_Cursor INTO @ID;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display employees department-wise. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, DEPTNAME
FROM EMPLOYEE
ORDER BY DEPTNAME;

DECLARE @ID INT, @NAME VARCHAR(50),
        @DEPT VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @DEPT;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @DEPT);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @DEPT;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;
 
--Part – B 

--Create a cursor to count total employees from each department. 
DECLARE Employee_Cursor CURSOR FOR
SELECT DEPTNAME, COUNT(*) AS TOTAL
FROM EMPLOYEE
GROUP BY DEPTNAME;

DECLARE @DEPT VARCHAR(50), @TOTAL INT;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @DEPT, @TOTAL;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@DEPT, ' Department: ', @TOTAL, ' Employees');

    FETCH NEXT FROM Employee_Cursor
    INTO @DEPT, @TOTAL;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display employees whose CITY starts with letter ‘R’. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, CITY
FROM EMPLOYEE
WHERE CITY LIKE 'R%';

DECLARE @ID INT, @NAME VARCHAR(50),
        @CITY VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @CITY;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @CITY);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @CITY;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display top 3 highest salary employees from EMPLOYEE table. 
DECLARE Employee_Cursor CURSOR FOR
SELECT TOP 3 EID, FirstName, Salary
FROM EMPLOYEE
ORDER BY Salary DESC;

DECLARE @ID INT, @NAME VARCHAR(50),
        @SALARY DECIMAL(10,2);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @SALARY;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @SALARY);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @SALARY;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to calculate total salary department-wise. 
DECLARE Employee_Cursor CURSOR FOR
SELECT DEPTNAME, SUM(Salary) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY DEPTNAME;

DECLARE @DEPT VARCHAR(50), @TOTAL DECIMAL(12,2);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @DEPT, @TOTAL;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@DEPT, ' Department total salary = ', @TOTAL);

    FETCH NEXT FROM Employee_Cursor
    INTO @DEPT, @TOTAL;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to calculate average salary city-wise. 
DECLARE Employee_Cursor CURSOR FOR
SELECT CITY, AVG(Salary) AS AVG_SALARY
FROM EMPLOYEE
GROUP BY CITY;

DECLARE @CITY VARCHAR(50), @AVG DECIMAL(12,2);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @CITY, @AVG;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@CITY, ' Average salary = ', @AVG);

    FETCH NEXT FROM Employee_Cursor
    INTO @CITY, @AVG;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

--PRACTICAL-28

--Create trigger for printing message after employee record insertion. 
CREATE TRIGGER TR_INSERT_EMPLOYEE
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    PRINT 'Employee record inserted successfully';
END;

--Create trigger for printing message after employee record update. 
CREATE TRIGGER TR_UPDATE_EMPLOYEE
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN
    PRINT 'Employee record updated successfully';
END;

-- Create trigger for printing message after employee record deletion. 
CREATE TRIGGER TR_DELETE_EMPLOYEE
ON EMPLOYEE
AFTER DELETE
AS
BEGIN
    PRINT 'Employee record deleted successfully';
END;

--Create trigger for printing message after employee salary increment. 
CREATE TRIGGER TR_SALARY_INCREMENT
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN
    IF UPDATE(SALARY)
    BEGIN
        PRINT 'Employee salary updated successfully';
    END;
END;

-- Create trigger for automatically converting CITY names into uppercase during insertion. 
 CREATE TRIGGER TR_CITY_UPPERCASE
ON EMPLOYEE
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO EMPLOYEE
    SELECT EID, FirstName, LastName, Gender,
           UPPER(CITY), DEPARTMENT, SALARY, JOININGYEAR
    FROM inserted;
END;

--Part – B: 

-- Create trigger for updating employee city and printing old city and new city name. 
CREATE TRIGGER TR_CITY_CHANGE
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN
    IF UPDATE(CITY)
    BEGIN
        SELECT
            d.EID,
            d.CITY AS OLD_CITY,
            i.CITY AS NEW_CITY
        FROM deleted d
        JOIN inserted i
            ON d.EID = i.EID;
    END;
END;

-- Create trigger for automatically setting CITY as 'RAJKOT' if no city value is entered during employee insertion. 
CREATE TRIGGER TR_DEFAULT_CITY
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    UPDATE EMPLOYEE
    SET CITY = 'RAJKOT'
    WHERE CITY IS NULL
      AND EID IN (SELECT EID FROM inserted);
END;

-- Create trigger for automatically adding current year in JOININGYEAR if no value is entered. 
CREATE TRIGGER TR_DEFAULT_JOININGYEAR
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    UPDATE EMPLOYEE
    SET JOININGYEAR = YEAR(GETDATE())
    WHERE JOININGYEAR IS NULL
      AND EID IN (SELECT EID FROM inserted);
END;

-- Create trigger for printing employee full name after new employee insertion. 
CREATE TRIGGER TR_EMPLOYEE_FULLNAME
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    SELECT
        CONCAT(FirstName, ' ', LastName) AS FULL_NAME
    FROM inserted;
END;

--Create trigger for automatically assigning department as ‘GENERAL’ if DEPARTMENT value is NULL. 
CREATE TRIGGER TR_DEFAULT_DEPARTMENT
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    UPDATE EMPLOYEE
    SET DEPARTMENT = 'GENERAL'
    WHERE DEPARTMENT IS NULL
      AND EID IN (SELECT EID FROM inserted);
END;

--PRACRTICAL-29

--Create trigger for preventing removal of employees from the table. 
CREATE TRIGGER TR_Prevent_Delete
ON EMPLOYEE
INSTEAD OF DELETE
AS
BEGIN
    PRINT 'Employee records cannot be deleted';
END;

-- Create INSTEAD OF DELETE trigger to prevent deletion of employee records and store deleted data into EMPLOYEE_LOG table. 
CREATE TABLE EMPLOYEE_LOG
(
    EID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    CITY VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    SALARY DECIMAL(10,2),
    JOININGYEAR INT,
    ACTION_TYPE VARCHAR(20),
    ACTION_DATE DATETIME
);

CREATE TRIGGER TR_Prevent_Delete_Log
ON EMPLOYEE
INSTEAD OF DELETE
AS
BEGIN
    INSERT INTO EMPLOYEE_LOG
    (
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        ACTION_TYPE, ACTION_DATE
    )
    SELECT
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        'DELETE', GETDATE()
    FROM deleted;

    PRINT 'Deletion prevented. Employee data stored in log table.';
END

--Create INSTEAD OF trigger to log all operations on EMPLOYEE table (INSERT/UPDATE/DELETE) into EMPLOYEE_LOG table.
CREATE TRIGGER TR_Log_Insert
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    INSERT INTO EMPLOYEE_LOG
    (
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        ACTION_TYPE, ACTION_DATE
    )
    SELECT
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        'INSERT', GETDATE()
    FROM inserted;
END;

-- Create trigger to block employees from updating their JOININGYEAR and print message ‘Employees are not allowed to update their joining year’. 
CREATE TRIGGER TR_Prevent_JoiningYear_Update
ON EMPLOYEE
INSTEAD OF UPDATE
AS
BEGIN
    IF UPDATE(JOININGYEAR)
    BEGIN
        PRINT 'Employees are not allowed to update their joining year';
        RETURN;
    END;

    UPDATE EMPLOYEE
    SET FirstName = i.FirstName,
        LastName = i.LastName,
        Gender = i.Gender,
        CITY = i.CITY,
        DEPARTMENT = i.DEPARTMENT,
        SALARY = i.SALARY
    FROM EMPLOYEE e
    INNER JOIN inserted i ON e.EID = i.EID;
END;

-- Create trigger for preventing duplicate employee records having same FIRSTNAME, LASTNAME, and CITY. 
CREATE TRIGGER TR_Prevent_Duplicate_Employee
ON EMPLOYEE
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS
    (
        SELECT 1
        FROM inserted i
        INNER JOIN EMPLOYEE e
            ON i.FirstName = e.FirstName
            AND i.LastName = e.LastName
            AND i.CITY = e.CITY
    )
    BEGIN
        PRINT 'Duplicate employee record is not allowed';
        RETURN;
    END;

    INSERT INTO EMPLOYEE
    (
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR
    )
    SELECT
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR
    FROM inserted;
END;


--PRACTICAL-30

--Handle Divide by Zero Error and Print message like: Error occurs that is - Divide by zero error. 
BEGIN TRY
    DECLARE @A INT = 10, @B INT = 0;

    PRINT @A / @B;
END TRY
BEGIN CATCH
    PRINT 'Error occurs that is - Divide by zero error.';
END CATCH;

--Try to convert string to integer and handle the error using try…catch block. 
BEGIN TRY
    DECLARE @STR VARCHAR(20) = 'ABC';
    DECLARE @NUM INT;

    SET @NUM = CAST(@STR AS INT);

    PRINT @NUM;
END TRY
BEGIN CATCH
    PRINT 'Error: String cannot be converted into integer.';
END CATCH;

--Create a procedure that prints the sum of two numbers: take both numbers as integer & handle 
--exception with all error functions if any one enters string value in numbers otherwise print result. 
CREATE PROCEDURE PR_Sum
    @A INT,
    @B INT
AS
BEGIN
    BEGIN TRY
        PRINT 'Sum = ' + CAST(@A + @B AS VARCHAR(20));
    END TRY
    BEGIN CATCH
        PRINT 'Error Message: ' + ERROR_MESSAGE();
        PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(20));
        PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(20));
        PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(20));
        PRINT 'Error Line: ' + CAST(ERROR_LINE() AS VARCHAR(20));
        PRINT 'Error Procedure: ' + ISNULL(ERROR_PROCEDURE(), 'N/A');
    END CATCH;
END;

-- Handle a Primary Key Violation while inserting data into STUDENT_INFO table and print the error 
--details such as the error message, error number, severity, and state.
BEGIN TRY
    INSERT INTO STUDENT_INFO (RNO, SNAME)
    VALUES (1, 'RAHUL');
END TRY
BEGIN CATCH
    PRINT 'Error Message: ' + ERROR_MESSAGE();
    PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(20));
    PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(20));
    PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(20));
END CATCH;

--Throw custom exception using stored procedure which accepts RNO as input & that throws Error like no RNO is available in database. 
CREATE PROCEDURE PR_Check_RNO
    @RNO INT
AS
BEGIN
    BEGIN TRY
        IF NOT EXISTS
        (
            SELECT 1
            FROM STUDENT_INFO
            WHERE RNO = @RNO
        )
        BEGIN
            THROW 50001, 'No RNO is available in database.', 1;
        END;

        PRINT 'RNO is available in database.';
    END TRY
    BEGIN CATCH
        PRINT 'Error Message: ' + ERROR_MESSAGE();
        PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(20));
        PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(20));
        PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(20));
    END CATCH;
END;