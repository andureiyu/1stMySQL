-- Create Employee Table
CREATE TABLE Employee (
  EmployeeID Integer,
  FirstName Varchar(20),
  LastName Varchar(20),
  Address Varchar(30),
  City Varchar(30),
  State Char(2), 
  Zip Integer,
  Email Varchar(50) 
);


CREATE TABLE Hourly_Employee(
  EmployeeID Integer,
  HourlyRate Integer,
  FTorPT TINYINT(1) 
);

CREATE TABLE Project(
  ProjectID Varchar(20),
  Project_Name Varchar(20),
  Project_Desc Varchar(200),
  StartDate Date,
  EndDate Date
);

-- Create Phone_Number Table
CREATE TABLE Phone_Number(
  PhoneNumber Varchar(15), 
  EmployeeID Integer,
  PhoneType Varchar(20),
  PrimaryorSecondary TINYINT(1) 
);


CREATE TABLE Salary_Employee(
  EmployeeID Integer,
  AnnualSalary Varchar(30)
);


CREATE TABLE Assignment(
  EmployeeID Integer,
  ProjectID Varchar(20),
  AssignmentDate Date
);


INSERT INTO Employee VALUES
(1, 'Andrei', 'Ninora', '12 St', 'Davao City', 'DS', 8000, 'mapninora@addu.edu.ph');
INSERT INTO Employee VALUES
(2, 'Meynard', 'Manuel', '12 St', 'Davao City', 'DS', 8000, 'mapninora@addu.edu.ph');
INSERT INTO Employee VALUES
(3, 'Hinata', 'Sohara', '12 St', 'Davao City', 'DS', 8000, 'mapninora@addu.edu.ph');
INSERT INTO Employee VALUES
(4, 'Shuma', 'Rival', '12 St', 'Davao City', 'DS', 8000, 'mapninora@addu.edu.ph');
INSERT INTO Employee VALUES
(5, 'Robin', 'Singh', '12 St', 'Davao City', 'DS', 8000, 'mapninora@addu.edu.ph');



INSERT INTO Assignment VALUES
(0001, '211', '2024-09-20');
INSERT INTO Assignment VALUES
(0002, '212', '2024-09-2');
INSERT INTO Assignment VALUES
(0003, '213', '2024-09-12');
INSERT INTO Assignment VALUES
(0004, '214', '2024-09-11');
INSERT INTO Assignment VALUES
(0005, '215', '2024-09-22');

INSERT INTO Hourly_Employee  VALUES
(12345, 20, 1);
INSERT INTO Hourly_Employee VALUES
(12345, 20, 1);
INSERT INTO Hourly_Employee  VALUES
(12345, 20, 1);
INSERT INTO Hourly_Employee VALUES
(12345, 20, 1);
INSERT INTO Hourly_Employee VALUES
(12345, 20, 1);


INSERT INTO Salary_Employee (EmployeeID, AnnualSalary) VALUES
(7777, '70000');
INSERT INTO Salary_Employee (EmployeeID, AnnualSalary) VALUES
(7777, '70000');
INSERT INTO Salary_Employee (EmployeeID, AnnualSalary) VALUES
(7777, '70000');
INSERT INTO Salary_Employee (EmployeeID, AnnualSalary) VALUES
(7777, '70000');
INSERT INTO Salary_Employee (EmployeeID, AnnualSalary) VALUES
(7777, '70000');

INSERT INTO Project (ProjectID, Project_Name, Project_Desc, StartDate, EndDate) VALUES
('Prod1', 'Soap', 'It is high quality.', '1999-11-22', NULL); 
INSERT INTO Project (ProjectID, Project_Name, Project_Desc, StartDate, EndDate) VALUES
('Prod1', 'Soap', 'It is high quality.', '1999-11-22', NULL); 
INSERT INTO Project (ProjectID, Project_Name, Project_Desc, StartDate, EndDate) VALUES
('Prod1', 'Soap', 'It is high quality.', '1999-11-22', NULL); 
INSERT INTO Project (ProjectID, Project_Name, Project_Desc, StartDate, EndDate) VALUES
('Prod1', 'Soap', 'It is high quality.', '1999-11-22', NULL); 
INSERT INTO Project (ProjectID, Project_Name, Project_Desc, StartDate, EndDate) VALUES
('Prod1', 'Soap', 'It is high quality.', '1999-11-22', NULL); 


INSERT INTO Phone_Number VALUES
('09123321', 1, 'Telephone', 0);
INSERT INTO Phone_Number VALUES
('09122111', 1, 'Telephone', 0);
INSERT INTO Phone_Number VALUES
('23123332', 1, 'Telephone', 0);
INSERT INTO Phone_Number VALUES
('09154222', 1, 'Telephone', 0);
INSERT INTO Phone_Number VALUES
('09113224', 1, 'Telephone', 0);


SELECT * FROM Employee;
SELECT * FROM Assignment;
SELECT * FROM Hourly_Employee; 
SELECT * FROM Phone_Number; 
SELECT * FROM Salary_Employee;


  