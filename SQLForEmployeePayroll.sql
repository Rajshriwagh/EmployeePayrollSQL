create database employee_payroll; -- Create database

show databases;
use employee_payroll;
select database();

create table employee_payroll_service( -- Create Table
id int unsigned auto_increment not null,
name varchar(50),
salary double,
start_date date ,
primary key(id)
);
show tables;
describe employee_payroll_service;

insert into employee_payroll_service -- Insert into table
(name,salary,start_date) values("Rajshri",10000,"2022-10-26"),("Ashita",40000,"2020-11-15"),("Chetan",30000,"2020-05-21");

select * from employee_payroll_service; -- RetrieveData

insert into employee_payroll_service
(name,salary,start_date) values("Taksh",50000,"2018-01-01"),("Ashish",40000,"2020-11-15"),("Tina",30000,"2020-05-21");
select * from employee_payroll_service;
select salary from employee_payroll_service where name='Tina';

select * from employee_payroll_service where start_date between cast('2018-01-01' as date) and Date(now()); -- Retrieve data for perticular salary and date name

alter table employee_payroll_service add gender varchar(1) after name; -- Alter table to add gender
select * from employee_payroll_service ;
update employee_payroll_service set gender='M' where name='Ashish' or name='Chetan';
update employee_payroll_service set gender='F' where name='Rajshri' or name='Tina';
select * from employee_payroll_service ;
select sum(salary) from employee_payroll_service where gender='F' group by gender;

select gender,sum(salary) as salary,min(salary) as minimum_salary,max(salary) as maximum_salary,avg(salary) as average_salary,count(salary) as no_of_employees from employee_payroll_service group by gender; -- SQL Function

