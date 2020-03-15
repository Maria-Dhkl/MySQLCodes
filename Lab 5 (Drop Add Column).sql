USE ClassDB;
GO

SELECT * FROM Employee;

ALTER TABLE Employee
	ADD Salary NUMERIC (7,2);

INSERT INTO Employee
VALUES (101, 'Shyam', 'Sharma', 10, 20000);

ALTER TABLE Employee
	DROP COLUMN LastName;
