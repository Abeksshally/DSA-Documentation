create database DSA_db

-----table
create table Employee(
Staffid varchar (10),
FirstName varchar (100),
LastName varchar (100),
Gender nvarchar (10),
Date_of_Birth date, 
HireDate date 
primary key (staffid)
)

select * from Employee

-----insert-----

insert into Employee (Staffid, FirstName, LastName, Gender, Date_of_Birth, HireDate)
Values ( 'AB201', 'Ayan', 'Olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'Okorie', 'Mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'Joshua', 'Chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'Sanni', 'Ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'Mercy', 'Olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'Johnson', 'Mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'Ayomide', 'Halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'Deborah', 'Justin', 'female','1982-10-09', '1988-02-09'),
( 'AB281', 'Wale', 'Olanipekun', 'male','1982-10-09', '2018-02-09')

INSERT INTO Employee (Staffid, FirstName, LastName, Gender, Date_of_Birth, HireDate)
Values ('AB296', 'Yusuf','olaide','Male','1990-10-10', '2022-01-20'),
('AB294', 'Olajide','Ayodeji','Female','1976-10-10', '1990-01-20')

select * from Employee

-----drop table Employee

select * from salary

select * from Payment

---USE OF SQL COMMAND---

--UPDATE


UPDATE Employee
set LastName = 'Abubakar'
where staffid = 'AB234'


UPDATE salary
set department = 'information tech'
where staffid = 'AB223'

Alter Table Employee
Add [State of Origin] varchar (100)

Select * from employee

update employee
set [state of origin] = 'Lagos'
where staffid = 'AB200'


---Analysis---
---Total number of staff---

select count (staffid) as TotalEmployee 
from employee


