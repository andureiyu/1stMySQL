CREATE TABLE Student (
    StudentID Integer PRIMARY KEY,
    FirstName Varchar(30),
    LastName Varchar(30),
    Address Varchar(100),
    City Varchar(50),
    State Char(50),
    Zip Integer,
    Email Varchar(100)
);

CREATE TABLE Undergraduate (
    StudentID Integer,
    HighSchool Varchar(100),
    HighSchoolGPA Decimal(3, 2),
    PRIMARY KEY (StudentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);


CREATE TABLE Graduate (
    StudentID Integer,
    UniversityGraduatedFrom Varchar(100),
    UniversityGraduateMajor Varchar(50),
    UndergraduateGPA Decimal(3, 2),
    PRIMARY KEY (StudentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);


CREATE TABLE Phone_Number (
    PhoneNumber Varchar(15),
    StudentID Integer,
    PhoneType Varchar(20),
    PrimaryorSecondary TINYINT(1),
    PRIMARY KEY (PhoneNumber),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);


CREATE TABLE Course (
    CourseID Integer PRIMARY KEY,
    CourseName Varchar(50),
    CourseDescription Varchar(200),
    SemesterID Integer,
    Location Varchar(50)
);


CREATE TABLE Registration (
    StudentID Integer,
    CourseID Integer,
    RegistrationDate Date,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);


INSERT INTO Student VALUES (1, 'Andrei', 'Ninora', '123 Elm St', 'New York', 'NY', 10001, 'an.dureyu@email.com');
INSERT INTO Student VALUES (2, 'Daryl', 'Koh', '123N St.', 'East Coast', 'SG', 10001, 'dadaryl.k@email.com');
INSERT INTO Student VALUES (3, 'Meynard', 'Manuel', 'Maa 12 St', 'Davao City', 'Davao Region', 8000, 'ma.manuelu@email.com');
INSERT INTO Student VALUES (4, 'Jufali', 'Mohammad', '221 Matina Aplaya', 'Davao City', 'Davao Region', 8000, 'mj.mohammadu@email.com');
INSERT INTO Student VALUES(5, 'Hinata', 'Sohara', '456 Kimoto St.', 'Nagoya', 'AI', 90001, 'hina.chan@email.com');


INSERT INTO Undergraduate VALUES (1, 'Precious International School of Davao', 3.9);
INSERT INTO Undergraduate VALUES (2, 'Hwa Chong Institution', 3.9);
INSERT INTO Undergraduate VALUES (3, 'Precious International School of Davao', 3.9);
INSERT INTO Undergraduate VALUES (4, 'Precious International School of Davao', 3.9);
INSERT INTO Undergraduate VALUES (5, 'Los Angeles High', 3.8);


INSERT INTO Graduate VALUES (1, 'Harvard University', 'Computer Science', 3.7);
INSERT INTO Graduate VALUES (2, 'NY University', 'Data Science', 3.7);
INSERT INTO Graduate VALUES (3, 'MIT', 'Computer Science', 3.7);
INSERT INTO Graduate VALUES (4, 'Princeton University', 'Finance', 3.7);
INSERT INTO Graduate VALUES (5, 'Yonsei University ', 'Computer Science', 3.6);


INSERT INTO Phone_Number VALUES('0912453221', 1, 'Mobile', 1);
INSERT INTO Phone_Number VALUES('1111112322', 2, 'Landline', 1);
INSERT INTO Phone_Number VALUES('2243412432', 3, 'Landline', 1);
INSERT INTO Phone_Number VALUES('0925321134', 4, 'Mobile', 1);
INSERT INTO Phone_Number VALUES('0987654321', 5, 'Home', 0);


INSERT INTO Course VALUES (101, 'Introduction to Cybersecurity', 'Security Practices', 1, 'Building C');
INSERT INTO Course VALUES (102, 'Database Systems', 'Introduction to databases', 1, 'Building D');
INSERT INTO Course VALUES (103, 'Websystems and Technologies 1', 'Web Development', 1, 'Building A');
INSERT INTO Course VALUES (104, 'Finance', 'Investment Analysis', 1, 'Building F');
INSERT INTO Course VALUES (105, 'Software Engineering', 'Software development practices', 1, 'Building B');


INSERT INTO Registration VALUES(1, 101, '2024-09-01');
INSERT INTO Registration VALUES(2, 102, '2024-09-01');
INSERT INTO Registration VALUES(3, 103, '2024-09-01');
INSERT INTO Registration VALUES(4, 104, '2024-09-01');
INSERT INTO Registration VALUES(5, 105, '2024-09-02');


SELECT * FROM Student;

SELECT * FROM Course;


SELECT s.FirstName, s.LastName, g.UniversityGraduatedFrom, g.UniversityGraduateMajor, g.UndergraduateGPA
FROM Student s
JOIN Graduate g ON s.StudentID = g.StudentID;

SELECT s.StudentID, s.FirstName, s.LastName, u.HighSchool, u.HighSchoolGPA
FROM Student s
JOIN Undergraduate u ON s.StudentID = u.StudentID;

SELECT s.FirstName, s.LastName, p.PhoneNumber, p.PhoneType
FROM Student s
JOIN Phone_Number p ON s.StudentID = p.StudentID;

SELECT s.FirstName, s.LastName, c.CourseName, r.RegistrationDate
FROM Student s
JOIN Registration r ON s.StudentID = r.StudentID
JOIN Course c ON r.CourseID = c.CourseID;
