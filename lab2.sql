USE ClassDB;
GO

CREATE TABLE NewStudent(
	RollNo NUMERIC (2)
	, FirstName VARCHAR (25) NOT NULL
	, LastName VARCHAR (25) NOT NULL
	, City VARCHAR (25)
	, Street VARCHAR (25)
	, PhoneNo VARCHAR (10)
	, Percentage NUMERIC (5,2)
	, CitzNo VARCHAR (20)
	, CONSTRAINT pk_NewStudent_RollNo PRIMARY KEY (RollNo)
	, CONSTRAINT un_NewStudent_CitzNo UNIQUE (CitzNo)
	, CONSTRAINT ck_Percentage CHECK (Percentage>=0)
	);

SELECT * 
FROM NewStudent;
