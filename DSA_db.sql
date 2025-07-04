create database DSA_db

---------------create table -------------------
create table Employee(
Staffid varchar (10),
FirstName varchar (100),
LastName Varchar (100),
Gender nvarchar (10),
Date_of_Birth date,
HireDate date
primary key (staffid)
);

select * from Employee

-------insert--=----

insert into Employee (staffid, firstname, LastName, gender,Date_of_Birth, hiredate)
values ( 'AB201', 'Ayan', 'Olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female','1982-10-09', '1988-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09')

INSERT INTO Employee (Staffid, FirstName, LastName, Gender, Date_of_Birth, HireDate)
Values ('AB296', 'Yusuf','olaide','Male','1990-10-10', '2022-01-20'),
('AB294', 'olajide','Ayodeji','Female','1976-10-10', '1990-01-20')


SELECT * FROM Employee



create database DSA_db


CREATE TABLE Employee (
staffid varchar (10),
FirstName varchar (255), 
LastName varchar (255),
Gender varchar (10),
Date_of_Birth date,
HireDate datetime,
primary key (staffid)
)

insert into Employee (staffid, firstname, LastName, gender,Date_of_Birth, hiredate)
values ( 'AB401', 'ayan', 'olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09')

select * from Employee

drop table Employee

----truncate table employee

--delete employee	
--where staffid = 'AB212'


------IMPORT CSV FILES INTO DB----
--EMPLOYEE.CSV
--SALARY.CSV
--PAYMENT.CSV

----create table salary-----
CREATE TABLE Salary (
salary_id int identity (1,1)not null,
Staffid varchar (255),
firstname varchar (255),
lastname varchar (255),
department nvarchar(max),
salary decimal (10, 3) ---(10: precision, 3:scale)
)


select * from salary

insert into salary (staffid, firstname, lastname, department, salary)
values ( 'AB401', 'ayan', 'olakun', 'Information Tech.', 45000.45),
( 'AB212', 'okorie', 'mercy','Account',500000.99999),
( 'AB223', 'joshua', 'chukwuemeka', 'Human Resources',100560.9339999),
( 'AB234', 'sanni', 'ibrahim', 'Sales and Marketing',845688.99),
( 'AB254', 'mercy', 'olanipekun', 'Account',8889.999999),
( 'AB249', 'johnson', 'mercy', 'Information Tech.',234000.90909090),
( 'AB298', 'ayomide', 'halleluyah', 'Logistics', 678000.991999),
( 'AB260', 'deborah', 'justin', 'Logistics',900099.00697969),
( 'AB281', 'wale', 'olanipekun', 'Information Tech',873093.2344)

alter table salary
alter column salary decimal (10,3)


-----create table payment

CREATE TABLE Payment (
paymentid int identity (1,1) primary key,
Account_No bigint not null,
staffid int,
Bank varchar (255) default 'Zenith Bank',
Payment_Method varchar (50) check (Payment_Method = 'Cash' or Payment_Method = 'Transfer')
)

select * from Payment

insert into Payment (account_no,staffid,payment_method )
values (2033030303, 'AB200', 'transfer'),
(2123459910, 'AB401',  'transfer'),
(2034562240, 'AB254',  'cash'),
(2234556303, 'AB212',  'transfer'),
(2033037703, 'AB249',  'cash'),
(2033030303, 'AB298',  'cash'),
(2455657503, 'AB260',  'transfer'),
(2045595953, 'AB281',  'cash'),
(2033030303, 'AB273',  'transfer'),
(2077778903, 'AB299',  'transfer'),
(2033030301, 'AB286', 'transfer'),
(2123459911, 'AB260',  'transfer'),
(2034562241, 'AB270',  'cash'),
(2234556302, 'AB104',  'transfer'),
(2033037705, 'AB268',  'cash'),
(2033030306, 'AB270',  'cash'),
(2455657509, 'AB300',  'transfer')


insert into Payment
values (2198773830, 'AB299',  'GT bank', 'transfer'),
(2024656569, 'AB405',  'Access bank', 'cash'),
(2222444933, 'AB200',  'Fidelity bank', 'transfer'),
(5674842300, 'AB278', 'Access bank', 'transfer'),
(2222444933, 'AB200',  'GT bank', 'transfer'),
(2034537300, 'AB278', 'Access bank', 'transfer')

alter table payment
alter column staffid varchar (50)


drop table Payment




-----------15/05/2025----------------------------------------

select * from salary

select * from payment

---USE OF SQL COMMAND---------

--UPDATE

UPDATE Employee
set lastname = 'Abubakar'
where staffid = 'AB234'

UPDATE salary
set department = 'Information Tech'
where staffid = 'AB223'

--CREATE STATE-OF-ORIGIN--

ALTER TABLE EMPLOYEE
ADD [State of Origin] varchar (100)

select * from employee

update employee
set [state of origin] = 'Delta'
where staffid = 'AB298'

---------Analysis----

---total number of staff

select count(staffid) as TotalEmployee 
from employee

----calculate total number of staff from each state

select [STATE OF ORIGIN], count(distinct staffid) as TotalEmployee 
from EMPLOYEE
group by [STATE OF ORIGIN]
order by TotalEmployee asc

----calculate total number of staff from each department

select  DEPARTMENT, count(distinct staffid) as TotalEmployee 
from salary
group by department
order by TotalEmployee desc

select * from salary

update salary
set department = 'Information Tech'
where Staffid IN ('AB401', 'AB249')

---HAVING-

select  DEPARTMENT, count(distinct staffid) as TotalEmployee 
from salary
group by department
HAVING count(distinct staffid) >3


-----RELATIONAL OPERATORS/COMPARISON OPERATORS
----LESS THAN <
---GREATER THAN >

SELECT * FROM  salary
WHERE salary > 500000

SELECT * FROM  salary
WHERE salary < 500000


----RANGE OPERATORS
----BETWEEN
----NOT BETWEEN

SELECT * FROM  salary
WHERE salary BETWEEN 50000 AND 200000

SELECT * FROM  salary
WHERE salary NOT BETWEEN 100000 AND 500000


----19/05/2025
----LIST OPERATORS
-----1. IN
-----2. NOT IN

SELECT * FROM EMPLOYEE
WHERE STAFFID  NOT IN ('AB270', 'AB286', 'AB401')


SELECT * FROM EMPLOYEE
WHERE FIRSTNAME IN ('johnson', 'mercy', 'okorie')

----LOGICAL OPERATOR
----AND
----OR

SELECT * FROM EMPLOYEE
WHERE FIRSTNAME = 'ADEBOWALE' AND GENDER = 'FEMALE'

SELECT * FROM EMPLOYEE
WHERE FIRSTNAME = 'ADEBOWALE' AND GENDER = 'MALE'


-------OR

SELECT * FROM EMPLOYEE
WHERE FIRSTNAME = 'ADEBOWALE' OR GENDER = 'BOY'


SELECT * FROM SALARY
WHERE FIRSTNAME = 'JOHNSON' OR department = 'INFORMATION TECH'

SELECT * FROM EMPLOYEE
WHERE GENDER = 'MALE' AND DATE_OF_BIRTH > '1990-01-01' 
AND [STATE OF ORIGIN] = 'LAGOS'


------UPDATE--
UPDATE salary
SET Staffid = 'AB350'
WHERE Staffid = 'AB401'

----5% OR 0.05

---UPDATE salary
--SET salary  = salary * 0.05

UPDATE salary
SET salary  = salary * 1.05

CREATE VIEW NEW_SALARY AS
UPDATE salary
SET salary  = salary + (salary * 0.05)


----SQL JOIN
SELECT * FROM EMPLOYEE

SELECT * FROM salary

SELECT * FROM PAYMENT
----JOIN----

SELECT employee.staffid,
       employee.firstname,
	   employee.gender,
	   employee.hiredate,
	   salary.salary_id,
	   salary.department,
	   salary.salary
from employee
full outer join salary
on salary.Staffid = employee.staffid


employee e
salary s

---sql query optimization
SELECT e.staffid,
       e.firstname,
	   e.gender,
	   e.hiredate,
	   s.salary_id,
	   s.department,
	   s.salary
from employee e
join salary s
on s.Staffid = e.staffid    


-----3 tables
SELECT employee.staffid,salary.salary_id,payment.paymentid,
       employee.firstname,employee.gender,employee.hiredate,
	   salary.department,salary.salary,payment.account_no,
	   payment.bank, payment.payment_method
from employee
left join salary
on salary.Staffid = employee.staffid
left join payment
on payment.staffid = employee.staffid


-------21/05/2025





-----3 tables
SELECT employee.staffid,
       salary.salary_id,
	   payment.paymentid,
       employee.firstname,
	   employee.gender,
	   employee.hiredate,
	   salary.department,
	   salary.salary,
	   payment.account_no,
	   payment.bank, 
	   payment.payment_method
from employee
join salary
on salary.Staffid = employee.staffid
join payment
on payment.staffid = salary.staffid

----sub-queries : queries inside queries

select * from employee
select * from salary
---------
select * from (
    select staffid, firstname, lastname, gender, hiredate, 
	[state of origin] 
	       from employee) As Emp
join (
    select staffid, salary_id, department, salary
	    from salary) as Sal
on emp.staffid = sal.Staffid
 
--analysis

select * from salary

--- top 3 highest paid employee 
---Using sub query---
select top 3 * from (
       select staffid, firstname, lastname, salary
	          from salary) AS Sal
order by salary desc


select top 3 * from (
       select staffid, firstname, lastname, salary
	          from salary) AS Sal
order by salary desc

----Normal SQL query----
select top 3
      staffid, firstname, lastname, salary
	  from salary
	  order by salary desc


---- 3 lowest paid employee 
select top 3
     staffid, firstname, lastname, salary
     from salary
     order by salary asc

---average salary by department
select department, AVG(salary) AS AverageSalary
    from (
	     select department, salary
		     from salary ) AS DeptSalary
group by  department

-------
select department, AVG(salary) as averagesalary
from salary
group by department


------sql view------
create view vw_emplysalary_tbl
as
SELECT employee.staffid,
       employee.firstname,
	   employee.gender,
	   employee.hiredate,
	   salary.salary_id,
	   salary.department,
	   salary.salary
from employee
join salary
on salary.Staffid = employee.staffid
 

 select * from vw_emplysalary_tbl


 DROP vw_emplysalary_tbl


 -----UNION & UNION ALL

create table  DSA_Mall_Ghana (
CustomerID INT not null,
FirstName varchar (max),
LastName  varchar (max),
Customer_gender nvarchar(max),
TransactionDate DATE DEFAULT GETDATE(),
[Address] varchar (max),
Transaction_Amount decimal (18, 4)
)

SELECT * FROM DSA_Mall_Ikeja

insert into DSA_Mall_Ikeja ( customerID,FirstName, lastname, Customer_gender,address, transaction_amount)
values ( 200,'Femk', 'abdukl',  'male', '9 old road', 88000.00),
   (201, 'isaiah', 'john','male',  '22 alaly stree, okun', 1590.33),
    ( 206,'emma', 'abu','male',  '7 ababa street, makunn', 6788.33),
	 (210, 'kara', 'ogun','female' , '10 hahroh road, ottawa', 3400.33),
	  ( 211,'sunkanmi', 'osagie', 'female' , '9 agric butstop street, okun', 89875.00),
	   (209,'oge', 'kunle', 'male', '10 iwo street, liverpool', 7860.33),
	    (204, 'igbayin', 'elizabeth', 'female', '100 kukuma street, epe', 89100.69)




select * from [dbo].[DSA_Mall_Ghana]


------highest salary----

SELECT TOP 1 staffid, firstname, lastname, salary AS second_highest_salary
FROM salary
WHERE salary = (SELECT MAX(salary) FROM salary)
ORDER BY salary DESC;


----22/05/2025

select * from [dbo].[DSA_Mall_Ghana]

select * from [dbo].[DSA_Mall_Ikeja]

select * from [dbo].[DSA_Mall_Port Harcourt]

---union---

select * from [dbo].[DSA_Mall_Ghana]
union
select * from [dbo].[DSA_Mall_Ikeja]
union
select * from [dbo].[DSA_Mall_Port Harcourt]


---union all----

select * from [dbo].[DSA_Mall_Ghana]
union all
select * from [dbo].[DSA_Mall_Ikeja]
union all
select * from [dbo].[DSA_Mall_Port Harcourt]

----create column (Branch)
CREATE VIEW vw_DSA_Mall_Transaction
as
select 
    'DSA MALL GHANA' AS BRANCH, customerid as [CUSTOMER ID],
	firstname as [FIRST NAME], lastname as [LAST NAME],
	customer_gender as GENDER, TRANSACTIONDATE AS [DATE],
	[ADDRESS], transaction_amount AS [TRANSACTION AMOUNT]
FROM [dbo].[DSA_Mall_Ghana]
UNION
select 
    'DSA MALL PORT HARCOURT' AS BRANCH, customerid as [CUSTOMER ID],
	firstname as [FIRST NAME], lastname as [LAST NAME],
	customer_gender as GENDER, TRANSACTIONDATE AS [DATE],
	[ADDRESS], transaction_amount AS [TRANSACTION AMOUNT]
FROM [dbo].[DSA_Mall_Ikeja]
UNION
select 
    'DSA MALL IKEJA' AS BRANCH, customerid as [CUSTOMER ID],
	firstname as [FIRST NAME], lastname as [LAST NAME],
	customer_gender as GENDER, TRANSACTIONDATE AS [DATE],
	[ADDRESS], transaction_amount AS [TRANSACTION AMOUNT]
FROM [dbo].[DSA_Mall_Port Harcourt]


select * from [dbo].[vw_DSA_Mall_Transaction]

----total sales per branch

select branch, sum([transaction amount]) as [Total sales]
from  [dbo].[vw_DSA_Mall_Transaction]
group by BRANCH
order by [Total sales] desc


select branch, AVG([transaction amount]) as [Average sales]
from  [dbo].[vw_DSA_Mall_Transaction]
group by BRANCH
order by [Average sales] desc

-----total sales by gender

select GENDER, sum([transaction amount]) as [Total sales]
from  [dbo].[vw_DSA_Mall_Transaction]
group by GENDER
order by [Total sales] desc

----date analysis

select * from [dbo].[vw_DSA_Mall_Transaction]
where [date] = '2025-04-15'

select gender, sum([transaction amount])
from [dbo].[vw_DSA_Mall_Transaction]
where [date]  = '2025-04-15'
group by GENDER

---analysis base branch (ghana)

select branch, sum([transaction amount]) as Revenue
from [dbo].[vw_DSA_Mall_Transaction]
where BRANCH = 'DSA MALL GHANA'
group by BRANCH

----add gender--

select gender, branch, sum([transaction amount]) as Revenue
from [dbo].[vw_DSA_Mall_Transaction]
where BRANCH = 'DSA MALL PORT HARCOURT' and [DATE] = '2025-05-21'
group by BRANCH, GENDER



476677.243764648


[DATE]
[TRANSACTION]
[ADDRESS]


[TRANSACTION DATE]

[CUSTOMER ID]



----26/05/2025----

---CASE WHEN---

select * from EMPLOYEE

ALTER TABLE EMPLOYEE
DROP COLUMN [STATE OF ORIGIN]

ALTER TABLE EMPLOYEE
ADD [State of Origin] varchar (255)

 update EMPLOYEE
set [State Of Origin] = 
CASE
   WHEN Staffid = 'AB200' THEN 'Delta'
   WHEN Staffid = 'AB212' THEN 'Lagos'
   WHEN Staffid = 'AB223' THEN 'Oyo'
   WHEN Staffid = 'AB234' THEN 'Bauchi'
   WHEN Staffid = 'AB240' THEN 'Port Harcourt'
   WHEN Staffid = 'AB249' THEN 'Lagos'
   WHEN Staffid = 'AB254' THEN 'Edo'
   WHEN Staffid = 'AB260' THEN 'Ekiti'
   WHEN Staffid = 'AB268' THEN 'Delta'
   WHEN Staffid = 'AB270' THEN 'Lagos'
   WHEN Staffid = 'AB278' THEN 'Kano'
   WHEN Staffid = 'AB281' THEN 'Kano'
   WHEN Staffid = 'AB282' THEN 'Ekiti'
   WHEN Staffid = 'AB286' THEN 'Lagos'
   WHEN Staffid = 'AB298' THEN 'Delta'
   WHEN Staffid = 'AB299' THEN 'Edo'
   WHEN Staffid = 'AB401' THEN 'Oyo'
   WHEN Staffid = 'AB405' THEN 'Delta'
   ELSE 'UNKNOWN'
   END

   ---GET THE STAFF AGE---

ALTER TABLE EMPLOYEE
ADD Age AS DATEDIFF(YEAR, Date_of_Birth, HireDate) -
  CASE
   WHEN MONTH(HireDate) < MONTH(Date_of_Birth)
   OR (MONTH(HireDate) = MONTH(Date_of_Birth)
   AND DAY(HireDate) < DAY(Date_of_Birth))
   THEN 1
      ELSE 0
	  END
 select * from employee

---

