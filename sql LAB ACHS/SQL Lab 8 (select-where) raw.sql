--RESTRICTING Rows using WHERE CLAUSE!!
Use AchsBank;
go

--1#. List ALL the employees who work in Department no. 90.

--2.# List the Employee id, last name, and department id of the employees who work in department id. 80.

--3.# List the Employee id, first name, and department id of the employees with the surname 'Shrestha'.
--String literlas are enclosed by single quote marks.
--The string literal (Shrestha) should be enclosed in single quotes, and the values to compare are case sensitive.

--4.# List Employee id, first name, last name, department id of the employees other than with Surname 'Shrestha'

--5.# List Employee id, first name, last name, and salary of the employees who earn more than 1,50,000.

--6.# List Employee id, first name, last name, and salary of the employees who earn
-- between 1,50,000 and 2,00,000.
--The conditions can be combined with logical operators: AND, OR..
--Alternatively, for #6.: BETWEEN Operator.

----AND // OR
--7.# List Employee id, first name, last name, City, department id, and salary of the employees who earn more
--than 50,000 and live in Kathmandu.

--8.# List Employee id, first name, last name, City, department id, and salary of the employees who earn more
--than 50,000 and live in Kathmandu, and work in department no. 80.

--9.# List Employee id, first name, last name, city, department id, and salary of the employees who earn more
--than 50,000 and live in Kathmandu; and work in either department no. 80 or 10.
--Use parentheses to properly group the CONDITIONS.


--NULL values.
--10.# List Employee id, First name, last name, city, department id of the employees whose city
-- address is null.
--Null CANNOT be Compared using comparision operators: e.g. = // A Null value is not equal to even ANOTHER Null.

--11.# List Employee id, First name, last name, city, department id of the employees whose city
-- address is not null.

----Matching a LIST of Values.
--12.# List Employee id, First name, last name, city, department id of the employees who work in
-- departments 20, 50, 80, or 90.
--Alternatively, for ease, IN Operator can be used to match a value from LIST.

--13.# List Employee id, First name, last name, city, department id of the employees who live
-- in either Kathmandu, or Bhaktapur.
--IN Can be used with both Numerical values, and strings.

----STRING Comparision with pattern: LIKE operator
--14.# List all the employees whose first name starts with an upper case 'S'.

--LIKE Operator uses Wildcard characters % (percentage): any no. of characters
-- and _ (underscore): exactly One character.
--15.# List all the employees whose first name starts with an upper case 'S' and 
-- ends with lower case 'n'.

--16.# List all the employees whose first name starts with an upper case 'S' and 
-- has 5 characters.

--17.# List all the employees whose first name starts with an upper case 'S' followed by lowercase
-- letter 'u'.

--18.# List all the employees whose first name consists a lower case letter 's'.

--19.# List all the employees whose First name OR Last name consists an Upper case letter 'A'.

----ORDERING the Result Set: ORDER BY Clause.
--20.# List all the employees Sorted in ascending alphabetical order of the first name.
--ORDER BY clause takes operators ASC (for ascending) and DESC (for descending). If nothing is provided,
-- ASC is assumed default.

--21.# List all the employees Sorted in descending alphabetical order of the first name.

--22.# List First name, Last name, Department id, and City of all the employees 
-- Sorted in Ascending order of the Department id, then City in Ascending order, followed by
-- Last name In descending order.
-- Multiple columns can be used to sort. ASC is optional but DESC Is mandarory.

--23.# List First name, Last name, Department id of the employees. Alias the columns as
-- 'Naam', 'Thar', and 'Bibhag' respectively. Sort the result set in ascending order of 'Bibhag'.

--The ORDER BY clause is evaluated at last, so Column Alias can be used In ORDER BY clause 
--to sort the result set.
--Column alias CANNOT However be used with WHERE Clause.
--24.# List First name, Last name, Department id of the employees who work in department no.# 10.
SELECT FirstName 'Naam', LastName 'Thar', DepartmentId 'Bibhag'
FROM Employee
WHERE Bibhag = 10;
--Returns ERROR.
