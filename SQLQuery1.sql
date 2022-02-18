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
--------------------------UC4----------------------------
select * from employee_payroll;
