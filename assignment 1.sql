Create Database EmployeeDB
Use EmployeeDB

Create table Department(
Deptno int Primary key,
Dname varchar(15) not null,
Loc varchar(20)
)
Create table Employees(
Empno int Primary key,
Ename varchar(20),
Job varchar(15),
Salary int,
check (Salary>0),
Deptno int references Department(Deptno)
)
Insert into Department (Deptno, Dname, Loc )
Values 
       (100, 'Design', 'Pune'), 
       (200, 'Development', 'Pune'),
	   (30, 'Testing', 'Mumbai'),
	   (40, 'Document', 'Mumbai');
           

Select * from Department
Select * from Employees
Select * from Clients
Select * from EmployeeProjectTask
Select * from Project

Delete From Department
Where Deptno = 100

Insert into Employees (Empno, Ename, Job, Salary, Deptno)
Values
      (7001, 'Sandeep', 'Analyst', 25000, 10),
	  (7002, 'Rajesh', 'Designer', 30000, 10),
	  (7003, 'Madhav', 'Developer', 40000, 20),
	  (7004, 'Manoj', 'Developer', 40000, 20),
	  (7005, 'Abhay', 'Designer', 35000, 10),
	  (7006, 'Uma', 'Tester', 30000, 30),
	  (7007, 'Gita', 'Tech. Writer', 30000, 40),
	  (7008, 'Priya', 'Tester', 35000, 30),
	  (7009, 'Nutan', 'Developer', 45000, 20),
	  (7010, 'Smita', 'Analyst', 20000, 10),
	  (7011, 'Anand', 'Project mgr', 65000, 10);

Create table Clients(
Client_id int Primary key,
Cname Varchar(40) Not null,
Address1 Varchar(30),
Email Varchar(30) Unique,
Phone int,
Business Varchar(20) Not null
)
Alter table Clients 
Drop column Phone

Alter table Clients
Add Phone Varchar(40)

Create table Project(
Project_id int Primary key,
Decr Varchar(30),
Start_date1 Date,
Planned_end_date Date,
Actual_end_date Date,
Constraint chk_date Check(Actual_end_date > Planned_end_date),
)
 
Alter table Project
Add budget int,
constraint chk_budget check (budget > 0),
Client_id int references Clients(Client_id)

Create table EmployeeProjectTask(
Empno int references Employees(Empno) primary key,
Project_id int references Project(Project_id) ,
Start_date2 Date,
End_date2 Date, 
Status1 Varchar(15)
)

Insert into Clients(Client_id, Cname, Address1, Email, Phone, Business)
Values
      (1001, 'ACME Utilities', 'Noida', 'contact@acmeutil.com', 9567880032, 'Manufacturing'),
	  (1002, 'Trackon Consultant', 'Mumbai', 'consult@trackon.com', 8734210090, 'Consultant'),
	  (1003, 'Moneysaver Distributors', 'Kolkata', 'save@moneysaver.com', 7799886655, 'Reseller'),
	   (1004, 'Lawful corp', 'chennai', 'justice@lawful.com', 9210342219, 'Professional')


Insert into Project(Project_id, Decr, Start_date1, Planned_end_date, Actual_end_date, Budget, Client_id)
Values
       (401, ' Inventory', '01-Apr-11', '01-Oct-11', '31-Oct-11', 150000, 1001),
	   (402, ' Accounting', '01-Aug-11', '01-Jan-11',  '02-Jan-11', 500000, 1002),
	   (403, ' Payroll', '01-Oct-11', '31-Dec-11', '01-Jan-12', 75000, 1003),
	   (404, ' Contact mgnt', '01-Nov-11', '31-Dec-11',  '01-Jan-12', 50000, 1004)

Insert into EmployeeProjectTask(Project_id, Empno, Start_date2, End_date2,  Status1)
Values
	   (401, 7002, '21-Apr-11', '30-Apr-11', 'Completed'),
	  (401, 7003, '01-Jun-11', '15-Apr-11', 'Completed'),
	  (401, 7004, '18-Jul-11', '01-Apr-11', 'Completed'),
	  (401, 7006, '03-Sep-11', '15-Apr-11', 'Completed'),
	  (401, 7009, '18-Sep-11', '05-Apr-11', 'Completed'),
	  (401, 7008, '06-Oct-11', '16-Apr-11', 'Completed'),
	   (401, 7007, '06-Oct-11', '22-Apr-11', 'Completed'),
	    
	  (401, 7011, '22-Oct-11', '31-Oct-11', 'Completed'),
	  (402, 7010, '01-Aug-11', '20-Aug-11', 'Completed'),
	  (402, 7005, '22-Aug-11', '30-Sep-11', 'Completed')