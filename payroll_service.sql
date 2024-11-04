create database payroll_service;

select name from sys.databases; --to see available databases

use payroll_service;

Create Table employee_payroll (
	empId int identity(1,1) PRIMARY KEY,
	empName varchar(50) not null,
	empSalary decimal(10,2) not null,
	startDate date not null
);

Insert Into employee_payroll Values 
('Raj', 40000, '2023-01-15'),
('Ayush', 35000, '2023-02-20'),
('Kalpesh', 45000, '2023-03-10'),
('Rushi', 50000, '2023-04-05');

Select * from employee_payroll;

Select empSalary
From employee_payroll
Where empName = 'Kalpesh';

Select empId, empName, startDate
From employee_payroll
Where startDate BETWEEN CAST('2023-02-10'as date) AND GETDATE();



