USE AchsBank;
go

----Built-in (Single-row) functions:
--1#. List the First name of employees; and their first name in upper case, lower case,
-- First 3 characters of First name, Last 3 characters, and 3 characters Starting from the second
-- and the length of the first name.


--2.# List all the employees with surname 'Shrestha'
-- Upper case or lower case strings can be used to compare and seach the result with control.


----NUMERIC Functions
--3.# List the salary of the employees, Salary divided by 3, and the result Rounded off to 2 decimal digits.


----AGGREGATE GROUP functions.
--4.# List the Total Salary expense, Average salary, Minimum salary, Maximum salary, and the Number of employees in the bank.


--5.# List the average Salary of Department no.# 10.


--GROUP BY clause.
--6.# List the average salary of All the departments.


-- When grouping the result with Aggregate functions, ALL THE COLUMNS THAT ARE NOT AN AGGREGATE
-- FUNCTIONS, MUST APPEAR IN THE GROUP BY CLAUSE. The queries groups the result based on all the
-- Non-aggregate Columns present in the Select list.

--7.# List the Total Salary expense of the employees grouped by Department id, and Supervisor id.


----Dealing with null.
--8.# List all the employees along with supervisors. Display a '0' (zero) where a Supervisor id does not exist.


--9.# List the First name and City Concatenated into One Column.

--Since the City has NULL values in some rows, the concatenated result will be a NULL as well.
--Any value operated with a NULL results in NULL.

--solution:


----CASE Operator.
--10.# List the employees with their City in abbreviated form (KTM for Kathmandu, LTP for Lalitpur,
-- and BKT for Bhaktapur, and NO_CITY for nulls).
