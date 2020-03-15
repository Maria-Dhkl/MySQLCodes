USE ClassDB;
GO

CREATE TABLE Student(
	RollNo NUMERIC (2)
	, FirstNamwe VARCHAR (25)
	, LastName VARCHAR (25)
	, City VARCHAR (25)
	, Street VARCHAR (25)
	, PhoneNo VARCHAR (10)
	, Percentage NUMERIC (5,2)
	, CitzNo VARCHAR (20)
);

SELECT * 
FROM Student;

INSERT INTO Student
VALUES (1,'Ram','Shrestha','Kathmandu','Gaushala','9876543212',80.52,'Ctz1');

INSERT INTO Student
VALUES (2,'Ritesh','Shrestha','Kathmandu','Gaushala',NULL,81.52,'Ctz2');

INSERT INTO Student
VALUES (2,'Ramesh','Shrestha','Kathmandu','Gaushala','9876543212',70.52,'Ctz1');

INSERT INTO Student( RollNo,FirstNamwe,LastName,City, Percentage)
VALUES (3,'Sita','Shrestha','Pokhara',78)

