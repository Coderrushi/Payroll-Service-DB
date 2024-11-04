create database payroll_service;

select name from sys.databases; --to see available databases

use payroll_service;

Create Table employee_payroll (
	empId int identity(1,1) PRIMARY KEY,
	empName varchar(50) not null,
	empSalary decimal(10,2) not null,
	startDate date not null
);
