USE ClassDB;
GO

CREATE TABLE TestEmp (
	EmpId NUMERIC (3)
	, Name VARCHAR (25)
	);

SELECT * FROM TestEmp;

INSERT INTO TestEmp
VALUES (100, 'Ram Shrestha');

DROP TABLE TestEmp;