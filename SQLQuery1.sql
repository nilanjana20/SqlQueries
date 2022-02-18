------------UC1 CREATE DATABASE---------------
CREATE DATABASE payroll_service;
USE payroll_service;
------------CREATE TABLE UC2----------------
CREATE TABLE employee_payroll (
       Id int IDENTITY(1,1) PRIMARY KEY,
	   Name varchar(200),
	   Salary float,
	   StartDate Date
);