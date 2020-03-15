--RESTRICTING Rows using WHERE CLAUSE!!
Use AchsBank;
go
SELECT *
FROM Employee;

--1#. List ALL the employees who work in Department no. 90.
SELECT *
FROM Employee
WHERE DepartmentId = 90;

--2.# List the Employee id, last name, and department id of the employees who work in department id. 80.
SELECT EmployeeId, LastName, DepartmentId
FROM Employee
WHERE DepartmentId = 80;

--3.# List the Employee id, first name, and department id of the employees with the surname 'Shrestha'.
--String literlas are enclosed by single quote marks.
--The string literal (Shrestha) should be enclosed in single quotes, and the values to compare are case sensitive.
SELECT EmployeeId, FirstName, DepartmentId
FROM Employee
WHERE LastName = 'Shrestha';

--4.# List Employee id, first name, last name, department id of the employees other than with Surname 'Shrestha'
SELECT EmployeeId, FirstName, DepartmentId
FROM Employee
WHERE LastName <> 'Shrestha';

--5.# List Employee id, first name, last name, and salary of the employees who earn more than 1,50,000.
SELECT EmployeeId, FirstName, LastName, Salary
FROM Employee
WHERE Salary > 150000;

--6.# List Employee id, first name, last name, and salary of the employees who earn
-- between 1,50,000 and 2,00,000.
--The conditions can be combined with logical operators: AND, OR..
SELECT EmployeeId, FirstName, LastName, Salary
FROM Employee
WHERE Salary >= 150000 
	AND Salary <= 200000;

--Alternatively, for #6.: BETWEEN Operator.
SELECT EmployeeId, FirstName, LastName, Salary
FROM Employee
WHERE Salary BETWEEN 150000 AND 200000;

----AND // OR
--7.# List Employee id, first name, last name, City, department id, and salary of the employees who earn more
--than 50,000 and live in Kathmandu.
SELECT EmployeeId, FirstName, LastName, City, DepartmentId, Salary
FROM Employee
WHERE Salary > 50000
	AND City = 'Kathmandu';

--8.# List Employee id, first name, last name, City, department id, and salary of the employees who earn more
--than 50,000 and live in Kathmandu, and work in department no. 80.
SELECT EmployeeId, FirstName, LastName, City, DepartmentId, Salary
FROM Employee
WHERE Salary > 50000
	AND City = 'Kathmandu'
	AND DepartmentId = 80;

--9.# List Employee id, first name, last name, city, department id, and salary of the employees who earn more
--than 50,000 and live in Kathmandu; and work in either department no. 80 or 10.
--Use parentheses to properly group the CONDITIONS.
SELECT EmployeeId, FirstName, LastName, City, DepartmentId, Salary
FROM Employee
WHERE Salary > 50000
	AND City = 'Kathmandu'
	AND (DepartmentId = 80
	OR DepartmentId = 10);

--NULL .
--10.# List Employee id, First name, last name, city, department id of the employees whose city
-- address is null.
--Null CANNOT be Compared using comparision operators: e.g. = // A Null  is not equal to even ANOTHER Null.
SELECT EmployeeId, FirstName, LastName, City, DepartmentId
FROM Employee
WHERE City IS NULL;

--11.# List Employee id, First name, last name, city, department id of the employees whose city
-- address is not null.
SELECT EmployeeId, FirstName, LastName, City, DepartmentId
FROM Employee
WHERE City IS NOT NULL;

----Matching a LIST of Values.
--12.# List Employee id, First name, last name, city, department id of the employees who work in
-- departments 20, 50, 80, or 90.
SELECT  EmployeeId, FirstName, LastName, City, DepartmentId
FROM Employee
WHERE DepartmentId = 20
	OR DepartmentId = 50
	OR DepartmentId = 80
	OR DepartmentId =  90;

--Alternatively, for ease, IN Operator can be used to match a value from LIST.
SELECT  EmployeeId, FirstName, LastName, City, DepartmentId
FROM Employee
WHERE DepartmentId IN (20, 50, 80, 90);

--13.# List Employee id, First name, last name, city, department id of the employees who live
-- in either Kathmandu, or Bhaktapur.
SELECT EmployeeId, FirstName, LastName, City, DepartmentId
FROM Employee
WHERE City = 'Kathmandu'
	OR City = 'Bhaktapur';

--IN Can be used with both Numerical values, and strings.
SELECT EmployeeId, FirstName, LastName, City, DepartmentId
FROM Employee
WHERE City IN ('Kathmandu', 'Bhaktapur');

----STRING Comparision with pattern: LIKE operator
--14.# List all the employees whose first name starts with an upper case 'S'.
SELECT *
FROM Employee
WHERE FirstName LIKE 'S%';

--LIKE Operator uses Wildcard characters % (percentage): any no. of characters
-- and _ (underscore): exactly One character.
--15.# List all the employees whose first name starts with an upper case 'S' and 
-- ends with lower case 'n'.
SELECT *
FROM Employee 
WHERE FirstName LIKE 'S%n';

--16.# List all the employees whose first name starts with an upper case 'S' and 
-- has 5 characters.
SELECT *
FROM Employee 
WHERE FirstName LIKE 'S____';

--17.# List all the employees whose first name starts with an upper case 'S' followed by lowercase
-- letter 'u'.
SELECT *
FROM Employee 
WHERE FirstName LIKE 'Su%';

--18.# List all the employees whose first name consists a lower case letter 's'.
SELECT *
FROM Employee 
WHERE FirstName LIKE '%s%';

--19.# List all the employees whose First name OR Last name consists an Upper case letter 'A'.
SELECT *
FROM Employee 
WHERE FirstName LIKE '%A%'
	OR LastName LIKE '%A%';

----ORDERING the Result Set: ORDER BY Clause.
--20.# List all the employees Sorted in ascending alphabetical order of the first name.
--ORDER BY clause takes operators ASC (for ascending) and DESC (for descending). If nothing is provided,
-- ASC is assumed default.
SELECT *
FROM Employee
ORDER BY FirstName;

--21.# List all the employees Sorted in descending alphabetical order of the first name.
SELECT *
FROM Employee
ORDER BY FirstName DESC;

--22.# List First name, Last name, Department id, and City of all the employees 
-- Sorted in Ascending order of the Department id, then City in Ascending order, followed by
-- Last name In descending order.
-- Multiple columns can be used to sort. ASC is optional but DESC Is mandarory.
SELECT  FirstName, LastName, DepartmentId, City
FROM Employee
ORDER BY DepartmentId ASC, City ASC, LastName DESC;

--23.# List First name, Last name, Department id of the employees. Alias the columns as
-- 'Naam', 'Thar', and 'Bibhag' respectively. Sort the result set in ascending order of 'Bibhag'.
SELECT FirstName AS 'Naam', LastName AS 'Thar', DepartmentId AS 'Bibhag'
FROM Employee
ORDER BY Bibhag;

--The ORDER BY clause is evaluated at last, so Column Alias can be used In ORDER BY clause 
--to sort the result set.
--Column alias CANNOT However be used with WHERE Clause.
--24.# List First name, Last name, Department id of the employees who work in department no.# 10.
SELECT FirstName 'Naam', LastName 'Thar', DepartmentId 'Bibhag'
FROM Employee
WHERE Bibhag = 10;
--Returns ERROR.

SELECT FirstName 'Naam', LastName 'Thar', DepartmentId 'Bibhag'
FROM Employee
WHERE DepartmentId = 10;
