create table Department(
Id int,
Name Varchar (100));
insert into Department
values (1, 'HR' ),
(1,'Admin')
select * from Department
CREATE CLUSTERED INDEX idx_dept_id
ON Department(Id)
insert into Department values (2, 'IT' ),
(3,'Transport' ),
(2, 'Information Tech' )
insert into Department (Name) values ('Insurance')

CREATE TABLE tblEmployee(
Id int Primary Key,
Name nvarchar(30),
Salary int,
Gender nvarchar(10),
DepartmentId int)

-- SQL Script to create tblDepartment table:
CREATE TABLE tblDepartment(
DeptId int Primary Key,
DeptName nvarchar(20))
-- Insert data into tblDepartment table
Insert into tblDepartment values (1, 'IT')
Insert into tblDepartment values (2, 'Payroll' )
Insert into tblDepartment values (3, 'HR')
Insert into tblDepartment values (4, 'Admin')
-- Insert data into tblEmployee table

Insert into tblEmployee values (1, 'john', 5000, 'Male', 3)
Insert into tblEmployee values (2, 'Mike', 3400 , 'Male', 2)
Insert into tblEmployee values (3, 'Pam', 6000, 'Female', 1)
Insert into tblEmployee values (4, 'Todd', 4800, 'Male', 4)
Insert into tblEmployee values (5, 'Sara', 3200, 'Female', 1)
Insert into tblEmployee values (6, 'Ben', 4800, 'Male', 3)


select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment 
on tblEmployee.DepartmentId = tblDepartment.DeptId

--creating view using joins query we have written 
create view vWEmployeesByDepartment 
as 
select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment 
on tblEmployee.DepartmentId = tblDepartment.DeptId

select * from vWEmployeesByDepartment
select * from tblEmployee
update vWEmployeesByDepartment set Name='adarsh' where Id=1

Create View vWEmployeesNonConfidentialData
as
Select Id, Name, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee. DepartmentId = tblDepartment. DeptId

Create View vWEmployeesCountByDepartment
as
Select DeptName, COUNT (Id) as TotalEmployees
from tblEmployee
join tblDepartment
on tblEmployee. DepartmentId = tblDepartment.DeptId
Group By DeptName
select * from vWEmployeesCountByDepartment
sp_helptext
VWEmployeesCountByDepartment



create table orders(
order_id int primary key,
customer_id int,
order_date Date 
);

create table order_audit(
audit_id int identity primary key,
order_id int,
customer_id int,
order_date Date,
audit_date Datetime default GetDate()
);

alter table Order_Audit add audit_informatio varchar(max)

--example for after or for trigger with insert
select * from Orders
select * from order_audit

alter trigger trgAfterInsertOrder
on Orders
after insert
create trigger trgAfterInsertOrder
on
orders
after insert
as
begin
declare @auditInfo nvarchar(1000)
set @auditInfo = 'Data Inserted'
insert into order_audit (order_id,customer_id,order_date,audit_informatio)
select order_id, customer_id, order_date, @auditInfo
from inserted
end

insert into orders values (1001,31,'8-10-2024')
insert into orders values (1002,41,'8-8-2024')
update orders set customer_id = 32 where order_id=1
update orders set customer_id = 31 where order_id=1001

--example for after or for trigger with update

alter trigger trgAfterUpdateOrder
on Orders
for update
as
begin
declare @auditInfo nvarchar(1000)



set @auditInfo ='Data changed'
insert into order_Audit(order_id, customer_id, order_date, audit_information)
select order_id, customer_id, order_date, @auditInfo
from inserted
end


update orders set customer_id=33, order_date='10-10-2020'
where order_id=1001

update orders set customer_id=32, order_date=


--exmple for instead of trigger
create view vWEmployeeDetails
as
select







begin  transaction
insert into sales.orders(customer_id, order_status,order_date, required_date,shipped_date, store_id, staff_id)
values (49, 4, '20170228', '20170301', '20170302', 2, 6);
insert into sales.order_items(order_id,item_id,product_id,quantity,list_price,discount)
values (105, 6, 8, 2, 269.99, 0.07);
if @@ERROR=0
begin 
commit transaction 
print 'insertion successful...'
end 
else
begin 
rollback transaction
print 'something went wrong while insertion'
end 

select * from production.products where product_id=8
