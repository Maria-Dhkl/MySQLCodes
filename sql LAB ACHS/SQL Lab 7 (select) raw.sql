USE AchsBank;
GO
--BASIC queries: SELECT and FROM CLAUSES.
--1#. Select ALL columns from Employee table.

--2.# Select Selected columns from Employee: Employee id, First name, Last name, and department id.

----USING ARITHMETIC OPERATORS: + -  * /
--3.# List First name, last name, salary, and Salary increased by 3000.

--4.# NULL: // Any value operated with NULL results in Null.
SELECT EmployeeId, Supervisor, EmployeeId + Supervisor, EmployeeId * Supervisor
FROM Employee;

----Column ALIAS: AS (optional)
--5.# List First name, last name, Salary, and Salary raised by 3000; column aliased as 'NewSalary'

--6.# List First name, last name, salary, and salary raised by 5%.
--Rename columns as 'naam', 'thar', 'talab', 'naya_talab' repectively.
--Quotes are optional in sql server but recommended for clarity.

--CONCATENATION: + on string
--7.# List First name, last name, and full name combined of the employees.

--8.# List All the employee records in the following format.
--Francis Acharya lives in Sinamangal of Kathmandu.

-- this Returns Nulls for some records as the City and/or Street are null for some rows.
--9.# to address this Problem: ISNULL function.

--DUPLICATE Rows
--10.# List ALL the Cities where employees live.

--11.# To eliminate duplicate rows:

--12.# List distinct address combinations of City and Street.

--13.# List various Department id's in the bank from Employee table.
