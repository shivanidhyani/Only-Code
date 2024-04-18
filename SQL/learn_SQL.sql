CREATE DATABASE SQLLearning;
USE SQLLearning;

Create TABLE EmployeeInfo(
	EmpID INT PRIMARY KEY, 
    EmpFname VARCHAR(20),
    EmpLname VARCHAR(20), 
    Department VARCHAR(20),
    Project VARCHAR(20),
    Address VARCHAR(255),
    DOB DATE,
    Gender VARCHAR(20)
);
INSERT INTO EmployeeInfo(EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender)
VALUES  
    (1, 'Sanjay', 'Mehra', 'HR', 'P1', 'Hyderabad(HYD)', '1976-01-12', 'M'), 
    (2, 'Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)', '1968-05-02', 'F'),
    (3, 'Rohan', 'Diwan', 'Account', 'P3', 'Mumbai(BOM)', '1980-01-01', 'M'), 
    (4, 'Sonia', 'Kulkarni', 'HR', 'P1', 'Hyderabad(HYD)', '1992-05-02', 'F'),
    (5, 'Ankit', 'Kapoor', 'Admin', 'P2', 'Delhi(DEL)', '1994-07-03', 'M'), 
    (6, 'Shivani', 'Dhyani', 'Developer', 'P9', 'Mumbai(BOM)', '1999-05-07', 'F');

        

Create TABLE EmployeePosition(
	EmpID INT, 
    EmpPosition VARCHAR(20),
    DateOfJoining DATE,
    Salary VARCHAR(20),
    FOREIGN KEY (EmpID) REFERENCES EmployeeInfo(EmpID)
);

DROP TABLE EmployeePosition;

INSERT INTO EmployeePosition(EmpID, EmpPosition, DateOfJoining, Salary)
VALUES  
    (1, 'Manager', '2024-05-02', 500000), 
    (2, 'Executive', '2024-05-02', 75000),
    (3, 'Manager', '2024-05-01', 90000),
    (2, 'Lead', '2024-05-02', 85000),
    (1, 'Executive', '2024-05-01', 300000),
    (6, 'Associate Consultant', '2021-06-15', 40000);

SELECT * FROM EmployeePosition;


#Questions and Answer 
#Write a query to fetch the EmpFname from the EmployeeInfo table in upper case and use the ALIAS name as EmpName.
SELECT UPPER(EmpFname) as EmpName FROM EmployeeInfo;

#Write a query to fetch the number of employees working in the department ‘HR’.
SELECT COUNT(*) FROM EmployeeInfo WHERE Department = 'HR';

#Write a query to get the current date.
SELECT CURRENT_TIMESTAMP() as TIME;

#Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
SELECT SUBSTRING(EmpLname, 1, 4) FROM EmployeeInfo;

#Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.
SELECT SUBSTRING(Address, 1, INSTR(Address, '(') - 1) FROM EmployeeInfo;

#Write a query to create a new table which consists of data and structure copied from the other table.
CREATE TABLE EmployeeInfoCOPY AS SELECT * FROM EmployeeInfo;
select * from EmployeeInfoCOPY;
Drop table EmployeeInfoCOPY;

#Write q query to find all the employees whose salary is between 50000 to 100000.
Select * FROM EmployeePosition WHERE Salary BETWEEN 50000 AND 100000;

#Write a query to find the names of employees that begin with ‘S’
SELECT * FROM EmployeeInfo WHERE EmpFname LIKE 'S%';

#Write a query to fetch top N records.
SELECT * FROM EmployeePosition ORDER BY Salary ASC LIMIT 5;

#Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
SELECT CONCAT(EmpFname, ' ', EmpLname) AS FullName FROM EmployeeInfo;


