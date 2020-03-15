Use AchsBank;
go

----Nested queries.
--1#. List all the employees who live in the City same to that of 'Ashimta'.


--2.# List the Average salary of the departments to which 'Ashimta' and 'Elisa'
-- belong to.


-- Note that the Sub-query must have a Single Column to be compared with that in the Parent query.
-- The Outer and inner queries can also be compared using <>, NOT IN, etc.

---- JOINING MULTIPLE TABLES: Using Cartessian product.
--3.# List all the employees along with their Department name.


-- The Two relations use cartessian product, and a joining condition is used
-- to retrieve valid tuples. THERE MUST BE 'n-1' JOINING CONDITIONS, Where 'n'
-- is the number of relations.
-- The Relations are aliased (renamed) with 'e' and 'd' respectively for convenience.
-- Common Attribute (DepartmentId, in this case) MUST BE PREFIXED with (any) relation
--  to address AMBIGUITY. Other Columns may/or May-not be prefixed.

--4.# List the employees along with their Department name, who live in 'Kathmandu'.


--5.# List the Employees who work in 'Information Technology' department and
-- earn more than 100,000.


--6.# List the employees who work in the same Department as that of Prabin Prajapati.


--7.# List the employees with their department name, and the department City and Street.


-- As we have 3 relations, we need (3-1) =2 joining Conditions.
-- Failing to provide enough (and accurate) joining conditions will return invalid tuples.

----Joining the relations: The JOIN operator.
--8.# List all the employees along with their Department name.
-- (Qus. 3#)


-- JOIN operator has several advantages over cartessian product.
-- One is that the joining condition is supplied with 'ON' keyword, 
-- which reduces the chances of missing it.

--9.# List the employees with their department name, and the department City and Street.
-- (Qus. 7#)


--10.# List the employees with their department name, whose department
-- location is 'Gaushala'.


----JOINs are of 2 types: INNER and OUTER, default is INNER.
----OUTER joins are again of 3 types: LEFT OUTER, RIGHT OUTER, and FULL OUTER.

--11.# INNER JOIN
SELECT e.EmployeeId, e.FirstName, e.LastName, d.DepartmentId, d.DepartmentName
FROM Employee e
	INNER JOIN Department d ON e.DepartmentId = d.DepartmentId;

-- We have 26 rows in the Employee table and 9 in Department.
-- BUT the query returns only 22.
-- Note that INNER keyword is optional. INNER JOIN RETURN THE TUPLES FROM
-- BOTH THE RELATIONS BASED ON THE EXACT MATCH OF THE VALUES IN COMMON
-- ATTRIBUTE (as specified in the Joining condition).
-- In this case, the EMPLOYEES WITHOUT DeprtmentId AND DEPARTMENTS WHICH
-- ARE NOT ASSIGNED ANY Employee ARE NOT RETURNED.

-- To return the UNMATCHED Tuples: OUTER JOIN.

---- LEFT OUTER JOIN
--12.#
SELECT e.EmployeeId, e.FirstName, e.LastName, d.DepartmentId, d.DepartmentName
FROM Employee e
	LEFT OUTER JOIN Department d ON e.DepartmentId = d.DepartmentId;

---- RIGHT OUTER JOIN
--13.#
SELECT e.EmployeeId, e.FirstName, e.LastName, d.DepartmentId, d.DepartmentName
FROM Employee e
	RIGHT OUTER JOIN Department d ON e.DepartmentId = d.DepartmentId;

---- FULL OUTER JOIN
--13.#
SELECT e.EmployeeId, e.FirstName, e.LastName, d.DepartmentId, d.DepartmentName
FROM Employee e
	FULL OUTER JOIN Department d ON e.DepartmentId = d.DepartmentId;
