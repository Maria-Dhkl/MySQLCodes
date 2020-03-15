USE AchsBank;
GO
--BASIC queries: SELECT and FROM CLAUSES.
--1#. Select ALL columns from Employee table.
SELECT *
FROM Employee;

--2.# Select Selected columns from Employee: Employee id, First name, Last name, and department id.
SELECT EmployeeId, FirstName, LastName, DepartmentId
FROM Employee;

----USING ARITHMETIC OPERATORS: + -  * /
--3.# List First name, last name, salary, and Salary increased by 3000.
SELECT FirstName, LastName, Salary, Salary + 3000
FROM Employee;

--4.# NULL: // Any value operated with NULL results in Null.
SELECT EmployeeId, Supervisor, EmployeeId + Supervisor, EmployeeId * Supervisor
FROM Employee;

----Column ALIAS: AS (optional)
--5.# List First name, last name, Salary, and Salary raised by 3000; column aliased as 'NewSalary'
SELECT FirstName, LastName, Salary, Salary + 3000 AS 'NewSalary'
FROM Employee;

--6.# List First name, last name, salary, and salary raised by 5%.
--Rename columns as 'naam', 'thar', 'talab', 'naya_talab' repectively.
--Quotes are optional in sql server but recommended for clarity.
SELECT FirstName AS 'Naam', LastName AS 'Thar', Salary AS 'Talab', Salary + (Salary * 0.5) AS 'Naya_Talab'
FROM Employee;

--CONCATENATION: + on string
--7.# List First name, last name, and full name combined of the employees.
SELECT FirstName, LastName, FirstName + ' ' + LastName AS 'FullName'
FROM Employee;

--8.# List All the employee records in the following format.
--Francis Acharya lives in Sinamangal of Kathmandu.
SELECT FirstName + ' ' + LastName + ' lives in ' + Street + ' of ' + City
FROM Employee;

-- this Returns Nulls for some records as the City and/or Street are null for some rows.
--9.# to address this Problem: ISNULL function.
SELECT FirstName, LastName, Street, ISNULL(Street,'N/A'),  City, ISNULL(City,'chhaina')
FROM Employee;

SELECT EmployeeId, Supervisor, ISNULL(EmployeeId,0) + ISNULL(Supervisor,0), ISNULL(EmployeeId,1) * ISNULL(Supervisor,1)
FROM Employee;

--DUPLICATE Rows
--10.# List ALL the Cities where employees live.
SELECT DISTINCT City
FROM Employee;

--11.# List distinct address combinations of City and Street.
SELECT DISTINCT City, Street
FROM Employee;

--12.# List various Department id's in the bank from Employee table.
SELECT DISTINCT DepartmentId
FROM Employee;