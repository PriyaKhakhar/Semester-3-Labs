------LAB 2-----

CREATE DATABASE CSE_3A_138

CREATE TABLE Deposit (
	ACTNO int ,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50) ,
	AMOUNT DECIMAL(8,2) ,
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
(111, 'BANSI', NULL, 9000,'1-1-2025')


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


-----lab 3-----

SELECT * FROM STUDENT

select SNAME , CITY FROM STUDENT

SELECT * FROM STUDENT WHERE BRANCH = 'COMPUTER'

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
select substring('SQL Server',4,5)

-- 11. Write a query to convert a string ‘1234.56’ to number
-- (Use CAST and CONVERT function).

SELECT CAST('1234.56' AS DECIMAL(10,2)) AS Number_Value;
SELECT CONVERT(DECIMAL(10,2), '1234.56') AS Number_Value;


-- 12. Write a query to convert a float 10.58 to integer
-- (Use CAST and CONVERT function).

SELECT CAST(10.58 AS INT) AS Integer_Value;
SELECT CONVERT(INT, 10.58) AS Integer_Value;


-- 13. Put 10 spaces before your name using function.

SELECT SPACE(10) + 'Priya' AS Name_With_Spaces;


-- 14. Combine two strings using + sign as well as CONCAT().

SELECT 'Priya' + ' Khakhar' AS Using_Plus;

SELECT CONCAT('Priya', ' Khakhar') AS Using_Concat;


-- 15. Find reverse of “Darshan”.

SELECT REVERSE('Darshan') AS Reverse_String;


-- 16. Repeat your name 3 times.

SELECT REPLICATE('Priya ', 3) AS Repeated_Name;
