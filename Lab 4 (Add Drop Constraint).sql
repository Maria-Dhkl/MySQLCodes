USE ClassDB;
GO

CREATE TABLE Emp (
	EmpId NUMERIC (3)
	, FirstName VARCHAR (25)
	, LastName VARCHAR (25)
	, Salary NUMERIC (7,2)
	, MngrId NUMERIC (3)
	CONSTRAINT pk_Emp_EmpId PRIMARY KEY (EmpId)
	);

SELECT * FROM Emp;

ALTER TABLE Emp
	ADD CONSTRAINT fk_Emp_MngrId FOREIGN KEY (MngrId)
		REFERENCES Emp (EmpId);

INSERT INTO Emp
VALUES (103, 'Suresh', 'G', 2000, NULL);

UPDATE Emp
	SET MngrId = 101
	WHERE EmpId = 103;