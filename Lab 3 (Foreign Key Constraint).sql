USE ClassDB;
GO

CREATE TABLE Department (
	DeptId NUMERIC (2)
	, DeptName VARCHAR (20)
	CONSTRAINT pk_Department_DeptId PRIMARY KEY (DeptId)
	);

CREATE TABLE Employee (
	EmpId NUMERIC (3)
	, FirstName VARCHAR (25)
	, LastName VARCHAR (25)
	, DeptId NUMERIC (2)
	CONSTRAINT pk_Employee_EmpId PRIMARY KEY (EmpId)
	, CONSTRAINT fk_Employee_DeptId FOREIGN KEY (DeptId)
		REFERENCES Department (DeptId)
	);

SELECT * FROM Department;
SELECT * FROM Employee;

INSERT INTO Department
VALUES (10, 'IT')

INSERT INTO Employee
VALUES (100, 'Ram', 'Shrestha', 10)