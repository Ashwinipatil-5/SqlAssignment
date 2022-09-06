Create Database Emp
Use Emp

Create table Dept(
Deptno int Primary key,
Dname varchar(15) not null,
Loc varchar(20)
)
Create table Empo(
Empno int Primary key,
Ename varchar(20),
Job varchar(15),
Mgr_id int,
Hiredate Date,
Salary int,
Comm int,
Deptno int references Dept(Deptno)
)

Insert into Empo(Empno, Ename, Job, Mgr_id, Hiredate, Salary, Comm, Deptno)
Values
		(7369,   'SMITH',       'CLERK',       7902,      '17-DEC-80',            800,    null,       20),
		(7499,    'ALLEN',    'SALESMAN',      7698,     '20-FEB-81',    	 1600,    300,        30),
		(7521,    'WARD',	 'SALESMAN',       7698,      '22-FEB-81', 		 1250,     500,       30),
		(7566,    'JONES',    'MANAGER',       7839,     '02-APR-81',  	     2975,     null,      20),
		(7654,    'MARTIN',   'SALESMAN',      7698,     '28-SEP-81', 	     1250,    1400,       30),
		(7698,	  'BLAKE',     'MANAGER', 	   7839, 	  '01-MAY-81',   	 2850,    null,       30),
		(7782, 	  'CLARK',     'MANAGER',      7839,     '09-JUN-81',  	     2450,     null,      10),
		(7788,    'SCOTT',     'ANALYST',      7566,     '19-APR-87',      	 3000,     null,      20),
		(7839,    'KING',      'PRESIDENT',     null,    '17-NOV-81',        5000,     null,      10),
		(7844,    'TURNER',    'SALESMAN',     7698,     '08-SEP-81',   	 1500,      0,        30),
		(7876,    'ADAMS',     'CLERK',        7788,     '23-MAY-87',      	 1100,     null,        20),
		(7900,    'JAMES',     'CLERK',        7698,     '03-DEC-81', 	      950,     null,       30),
		(7902,    'FORD',      'ANALYST',      7566,     '03-DEC-81',  	     3000,      null,      20),
		(7934,    'MILLER',    'CLERK',        7782,     '23-JAN-82', 		 1300,       null,     10)

Insert into Dept(Deptno, Dname, Loc)
Values
		 (10,    'ACCOUNTING',    'NEW YORK'), 
		 (20,     'RESEARCH',      'DALLAS' ),
		 (30,     'SALES',         'CHICAGO'),
		 (40,     'OPERATIONS',    'BOSTON' )

		 Select * from Dept
		 Select * from Empo


		 Select * from Empo Where Ename like 'A%'; 
		 Select * from Empo Where Mgr_id Is null;
		 SELECT Ename, Empno, Salary from empo
			WHERE salary BETWEEN 1200 AND 1400
