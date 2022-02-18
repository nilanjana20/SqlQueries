--------------UC1 CREATE DATABASE-----------------
CREATE DATABASE payroll_service;
USE payroll_service;
-----------------CREATE TABLE UC2-------------------
CREATE TABLE employee_payroll(
       Id int IDENTITY(1,1) PRIMARY KEY,
	   Name varchar(200),
	   Salary float,
	   StartDate Date
);
----------UC3 Insert record or Employee into Table----------
insert into employee_payroll (Name,Salary,StartDate)
values('Nilanjana',41000,'03-01-2022'),
('Shruti',40000,'01-01-2022'),
('Altu',75000,'09-03-2020'),
('Neel',66000,'05-01-2021'),
('Biu',20000,'08-01-2021');
--------------------------UC4-------------------------------
select * from employee_payroll;
------------------------UC5----------------------------------
select Salary from employee_payroll where name = 'Nilanjana';
select Salary from employee_payroll where name = 'Biu';
------------------------UC6----------------------------------
ALTER TABLE employee_payroll ADD Gender char(1);
update employee_payroll set Gender = 'F' where name = 'Nilanjana' or name= 'Shruti'or name = 'Biu';
update employee_payroll set Gender = 'M' where name = 'Altu' or name= 'Neel';
--------------------------UC7--------------------------------
select sum(Salary) from employee_payroll where gender = 'M' group by Gender;
select avg(Salary) from employee_payroll where gender = 'F' group by Gender;
select min(Salary) from employee_payroll where gender = 'M' group by Gender;
select max(Salary) from employee_payroll;
select count(Salary) from employee_payroll ;