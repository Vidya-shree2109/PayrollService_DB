--UC1 Creating Database--

create database Payroll_service

--Using Database--

use Payroll_service

--UC2 Creating Table--

create table Employee_payroll(Id int NOT NULL primary key Identity(101,1),Name varchar(35) NOT NULL,Salary decimal NOT NULL, StartDate date);


--UC3 Inserting Data Into The Table--

insert into Employee_payroll
values
('Vidya',1000,'2022.06.01'),
('Neha',2500,'2022.05.01'),
('Siri',800,'2021.10.01'),
('Sharanya',1500,'2022.08.01'),
('Teju',3000,'2022.01.01');

--UC4 Reteiving Data From Employee_Payroll Table--

select *from Employee_payroll

--UC5 Retreiving Data For A Particular Employee From Employee_Payroll--

select Salary from Employee_payroll where Name='Vidya'

select StartDate from Employee_payroll where (StartDate between '2022.02.01' and '2022.10.15');

--UC6 Adding New Column As Gender In Employee_Payroll--

Alter table Employee_payroll add Gender varchar(1);

Update Employee_payroll set Gender='M' where Id=104
Update Employee_payroll set Name='Surya' where Id=104


--UC7 Using Pre-defined Functions To Calculate Sum,Avg,Min,Max,Count--

select SUM(Salary) from Employee_payroll where Gender='F'
select AVG(Salary) from Employee_payroll 
select MIN(Salary) from Employee_payroll
select MAX(Salary) from Employee_payroll
select Count(Gender) from Employee_payroll where Gender='M'

--UC8 Adding Three New columns In Employee_Payroll--

Alter table Employee_payroll add Phone varchar(10),Address varchar(20),Department varchar(20);

update Employee_payroll 
set 
Phone='9878896543',
Address='Pune',
Department='Testing' where Id=105;

--UC9 Adding 5 New Columns In Employee_payroll Table--

Alter table Employee_payroll add BasicPay decimal(10),Deduction decimal(20),TaxablePay decimal(20),IncomeTax decimal(20),NetPay decimal(20);

update Employee_payroll 
set 
BasicPay=1500,
Deduction=500,
TaxablePay=400,
IncomeTax=200,
NetPay=2600 where Id=105;
