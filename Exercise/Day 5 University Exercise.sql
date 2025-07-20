Create Database University
USE  University

-- Create Table 1
CREATE TABLE Students (
	StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender CHAR(1),
    Major VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    EnrollmentYear INT,
    Status VARCHAR(20)
);

INSERT INTO Students
VALUES
(1001, 'Alice', 'Johnson', '2003-05-14', 'F', 'Computer Science', 'alicej@univ.edu', '555-234-1234', 2021, 'Active'),
(1002, 'Mark', 'Lee', '2002-11-23', 'M', 'Biology', 'marklee@univ.edu', '555-234-5678', 2020, 'Active'),
(1003, 'Nina', 'Patel', '2004-02-01', 'F', 'Business', 'ninap@univ.edu', '555-987-6543', 2022, 'Active'),
(1004, 'John', 'Smith', '2001-09-12', 'M', 'Engineering', 'johns@univ.edu', '555-321-9876', 2019, 'Graduated'),
(1005, 'Sara', 'Kim', '2003-12-30', 'F', 'Psychology', 'sarak@univ.edu', '555-654-3210', 2021, 'Active'),
(1006, 'David', 'Brown', '2002-07-17', 'M', 'History', 'davidb@univ.edu', '555-112-3344', 2020, 'Active'),
(1007, 'Emily', 'Davis', '2003-04-03', 'F', 'Math', 'emilyd@univ.edu', '555-665-7788', 2021, 'Active'),
(1008, 'Omar', 'Khan', '2002-10-22', 'M', 'Computer Science', 'omark@univ.edu', '555-443-2211', 2020, 'Active'),
(1009, 'Linda', 'Green', '2001-03-11', 'F', 'Education', 'lindag@univ.edu', '555-776-8899', 2019, 'Graduated'),
(1010, 'Alex', 'White', '2004-06-25', 'M', 'Business', 'alexw@univ.edu', '555-889-0099', 2022, 'Active');

-- Select Queries
SELECT * from Students

SELECT StudentID, FirstName, LastName, DOB, Gender FROM Students;

SELECT * from Students where Gender='M'; 

SELECT * FROM Students WHERE EnrollmentYear>2020;

SELECT * FROM Students WHERE YEAR(DOB) = 2002;

SELECT * FROM Students ORDER BY EnrollmentYear DESC;

SELECT * FROM Students WHERE LastName ='Patel';

SELECT * FROM Students WHERE Major = 'Business';

SELECT * FROM Students WHERE Status = 'Active';

SELECT * FROM Students WHERE EnrollmentYear BETWEEN 2019 AND 2021;

-- Create Table 2 Professors
CREATE TABLE Professors (
	ProfID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    HireDate DATE
);

-- Add values to table Professors
INSERT INTO Professors
VALUES
(2001, 'Rachel', 'Adams', 'Computer Science', 'radams@univ.edu', '555-111-2222', '2015-08-15'),
(2002, 'Michael', 'Chen', 'Biology', 'mchen@univ.edu', '555-222-3333', '2012-09-01'),
(2003, 'Karen', 'Lee', 'Business', 'klee@univ.edu', '555-333-4444', '2018-01-10'),
(2004, 'James', 'Singh', 'Psychology', 'jsingh@univ.edu', '555-444-5555', '2016-06-20'),
(2005, 'Susan', 'Taylor', 'English', 'staylor@univ.edu', '555-555-6666', '2013-03-15'),
(2006, 'Robert', 'Kim', 'History', 'rkim@univ.edu', '555-666-7777', '2017-10-11'),
(2007, 'Lisa', 'Brown', 'Mathematics', 'lbrown@univ.edu', '555-777-8888', '2020-04-22'),
(2008, 'Ahmed', 'Ali', 'Education', 'aali@univ.edu', '555-888-9999', '2019-12-05'),
(2009, 'Kevin', 'Wright', 'Computer Science', 'kwright@univ.edu', '555-999-0000', '2021-09-09'),
(2010, 'Hannah', 'Jones', 'Business', 'hjones@univ.edu', '555-000-1111', '2010-07-07');

-- Select Queries
SELECT * from Professors

SELECT ProfID, FirstName, LastName, Department FROM Professors;

SELECT * from Professors where Department = 'Computer Science'; 

SELECT * FROM Professors WHERE EmailId = 'radams@univ.edu';

SELECT * FROM Professors WHERE YEAR(HireDate) = 2016;

SELECT * FROM Professors ORDER BY HireDate DESC;

SELECT * FROM Professors WHERE LastName ='Jones';

SELECT * FROM Professors WHERE Phone = '555-777-8888';

SELECT * FROM Professors WHERE FirstName = 'Robert';

SELECT * FROM Professors WHERE Department = 'Biology' OR Department = 'Psychology';

-- Create Table 3 Courses
CREATE TABLE Courses (
    CourseID VARCHAR(10) PRIMARY KEY,
    CourseName VARCHAR(100),
    Department VARCHAR(100),
    Credits INT,
    Semester VARCHAR(10),
    Year INT
    );
    
-- Add values in Table 3 Courses

INSERT INTO Courses
VALUES
('CS101', 'Intro to Programming', 'Computer Science', 4, 'Fall', 2025),
('BIO201', 'Human Anatomy', 'Biology', 3, 'Spring', 2025),
('BUS100', 'Principles of Mgmt', 'Business', 3, 'Fall', 2025),
('PSY101', 'Intro to Psychology', 'Psychology', 3, 'Spring', 2025),
('ENG301', 'Technical Writing', 'English', 3, 'Summer', 2025),
('HIS210', 'World History', 'History', 3, 'Fall', 2025),
('MTH110', 'Calculus I', 'Mathematics', 4, 'Spring', 2025),
('EDU101', 'Educational Theory', 'Education', 3, 'Fall', 2025),
('CS205', 'Data Structures', 'Computer Science', 4, 'Spring', 2025),
('BUS210', 'Marketing Principles', 'Business', 3, 'Summer', 2025);

-- Select Queries
SELECT * from Courses
SELECT CourseName, Department, Credits, Semester FROM Courses;
SELECT * from Courses where CourseName = 'Technical Writing'; 
SELECT * FROM Courses WHERE Department = 'History';
SELECT * FROM Courses WHERE Year = 2025;
SELECT * FROM Courses ORDER BY Credits DESC;
SELECT * FROM Courses WHERE CourseName ='Calculus I' AND CourseName = 'Educational Theory';
SELECT * FROM Courses WHERE Semester = 'Summer';
SELECT * FROM Courses WHERE Credits BETWEEN 3 AND 5;
SELECT * FROM Courses WHERE Semester = 'Spring' OR Semester = 'Fall';

-- Create Table 4 Departments
CREATE TABLE Departments (
    DeptID VARCHAR(10) PRIMARY KEY,
    DeptName VARCHAR(100),
    HeadOfDept VARCHAR(100),
    OfficeLocation VARCHAR(50),
    Email VARCHAR(100)
);

-- Add values to table 4 Departments
INSERT INTO Departments
VALUES
('CS', 'Computer Science', 'Rachel Adams', 'Room 301', 'cs@univ.edu'),
('BIO', 'Biology', 'Michael Chen', 'Room 214', 'bio@univ.edu'),
('BUS', 'Business', 'Karen Lee', 'Room 120', 'business@univ.edu'),
('PSY', 'Psychology', 'James Singh', 'Room 311', 'psychology@univ.edu'),
('ENG', 'English', 'Susan Taylor', 'Room 205', 'english@univ.edu'),
('HIS', 'History', 'Robert Kim', 'Room 109', 'history@univ.edu'),
('MTH', 'Mathematics', 'Lisa Brown', 'Room 130', 'math@univ.edu'),
('EDU', 'Education', 'Ahmed Ali', 'Room 403', 'education@univ.edu'),
('ADM', 'Administration', 'Dr. Patel', 'Room 001', 'admin@univ.edu'),
('LIB', 'Library Services', 'Clara Dean', 'Room 102', 'library@univ.edu');

-- Select Queries
SELECT * from Departments
SELECT DeptName, HeadOfDept, OfficeLocation FROM Departments;
SELECT * from Departments where DeptName = 'Mathematics'; 
SELECT * FROM Departments WHERE HeadOfDept = 'Susan Taylor';
SELECT * FROM Departments WHERE OfficeLocation = 'Room 403';
SELECT * FROM Departments ORDER BY OfficeLocation DESC;
SELECT * FROM Departments WHERE DeptName ='Library Services' AND DeptName = 'Psychology';
SELECT * FROM Departments WHERE Email = 'library@univ.edu';
SELECT * FROM Departments WHERE HeadOfDept = 'Lisa Brown';
SELECT * FROM Departments WHERE OfficeLocation = 'Room 102' OR OfficeLocation = 'Room 109';

-- Create Table 5 Enrollments
CREATE TABLE Enrollments (
    EnrollmentID VARCHAR(10) PRIMARY KEY,
    StudentID INT,
    CourseID VARCHAR(10),
    Semester VARCHAR(10),
    Year INT,
    Grade VARCHAR(5)
);

-- Add values to Table 5 Enrollments
INSERT INTO Enrollments
VALUES
('E1001', 1001, 'CS101', 'Fall', 2025, 'A'),
('E1002', 1002, 'BIO201', 'Spring', 2025, 'B+'),
('E1003', 1003, 'BUS100', 'Fall', 2025, 'A-'),
('E1004', 1004, 'HIS210', 'Fall', 2025, 'B'),
('E1005', 1005, 'PSY101', 'Spring', 2025, 'A'),
('E1006', 1006, 'ENG301', 'Summer', 2025, 'A-'),
('E1007', 1007, 'MTH110', 'Spring', 2025, 'B+'),
('E1008', 1008, 'CS205', 'Spring', 2025, 'A'),
('E1009', 1009, 'EDU101', 'Fall', 2025, 'B'),
('E1010', 1010, 'BUS210', 'Summer', 2025, 'A-');

-- Select Queries
SELECT * from Enrollments
SELECT CourseID, Semester, Year, Grade FROM Enrollments;
SELECT * from Enrollments where Grade = 'A'; 
SELECT * FROM Enrollments WHERE Semester = 'Spring';
SELECT * FROM Enrollments WHERE CourseID = 'BUS210';
SELECT * FROM Enrollments ORDER BY Grade DESC;
SELECT * FROM Enrollments WHERE StudentID = 1006 AND StudentID = 1010;
SELECT * FROM Enrollments WHERE EnrollmentID = 'E1007';
SELECT * FROM Enrollments WHERE Year = 2025;
SELECT * FROM Enrollments WHERE Semester = 'Spring' OR Semester = 'Fall';

-- Create Table 6 Classrooms
CREATE TABLE Classrooms (
    RoomID VARCHAR(10) PRIMARY KEY,
    Building VARCHAR(50),
    RoomNumber VARCHAR(10),
    Capacity INT,
    Type VARCHAR(50)
);

-- Add values to Table 6 Classrooms
INSERT INTO Classrooms
VALUES
('R101', 'Science', '101', 30, 'Lecture Hall'),
('R102', 'Main', '202', 25, 'Lab'),
('R103', 'Tech', '303', 35, 'Computer Lab'),
('R104', 'Arts', '404', 20, 'Seminar Room'),
('R105', 'Admin', '505', 15, 'Meeting Room'),
('R106', 'Business', '606', 40, 'Lecture Hall'),
('R107', 'Library', '707', 10, 'Study Room'),
('R108', 'Math', '108', 20, 'Classroom'),
('R109', 'Biology', '109', 28, 'Lab'),
('R110', 'Engineering', '110', 50, 'Lecture Hall');

-- Create Table 7 Schedules
CREATE TABLE Schedules (
	ScheduleID VARCHAR(10) PRIMARY KEY,
    CourseID VARCHAR(10),
    RoomID VARCHAR(10),
    ProfID INT,
    DayOfWeek VARCHAR(10),
    StartTime TIME,
    EndTime TIME
);

-- Add values to Table 7 Schedules
INSERT INTO Schedules
VALUES
('S001', 'CS101', 'R103', 2001, 'Monday', '09:00', '10:30'),
('S002', 'BIO201', 'R109', 2002, 'Tuesday', '11:00', '12:30'),
('S003', 'BUS100', 'R106', 2003, 'Wednesday', '13:00', '14:30'),
('S004', 'PSY101', 'R104', 2004, 'Thursday', '10:00', '11:30'),
('S005', 'ENG301', 'R105', 2005, 'Friday', '14:00', '15:30'),
('S006', 'HIS210', 'R101', 2006, 'Monday', '11:00', '12:30'),
('S007', 'MTH110', 'R108', 2007, 'Tuesday', '09:00', '10:30'),
('S008', 'EDU101', 'R107', 2008, 'Wednesday', '10:00', '11:30'),
('S009', 'CS205', 'R103', 2009, 'Thursday', '13:00', '14:30'),
('S010', 'BUS210', 'R106', 2010, 'Friday', '09:00', '10:30');

-- Create Table 8 LibraryBooks
CREATE TABLE LibraryBooks (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    ISBN VARCHAR(20),
    YearPublished INT,
    CopiesAvailable INT
);

-- Add values to Table 8 LibraryBooks
INSERT INTO LibraryBooks
VALUES
(1, 'Introduction to Algorithms', 'Cormen et al.', '9780262033848', 2009, 4),
(2, 'Biology Basics', 'Jane Smith', '9780132014312', 2015, 2),
(3, 'Marketing 101', 'Philip Kotler', '9780136079416', 2018, 3),
(4, 'Psychology Explained', 'Daniel Kahneman', '9780374533557', 2011, 5),
(5, 'Technical Writing Guide', 'John Doe', '9780596007073', 2007, 1),
(6, 'World History', 'Howard Zinn', '9780062397348', 2005, 3),
(7, 'Calculus I Made Easy', 'Silvanus P. Thompson', '9780312185480', 1998, 2),
(8, 'Education Theory', 'Paulo Freire', '9780826412768', 2000, 4),
(9, 'Data Structures in Java', 'Robert Lafore', '9780672324536', 2002, 6),
(10, 'Digital Marketing', 'Ryan Deiss', '9781119660492', 2020, 2);

-- Create Table 9 Dormitories
CREATE TABLE Dormitories (
    DormID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Capacity INT,
    Building VARCHAR(50),
    GenderAllowed VARCHAR(10)
);

-- Add values to Table 9 Dormitories
INSERT INTO Dormitories
VALUES
('D001', 'Maple Hall', 100, 'Dorm A', 'Coed'),
('D002', 'Oak Hall', 80, 'Dorm B', 'Female'),
('D003', 'Pine Hall', 90, 'Dorm C', 'Male'),
('D004', 'Cedar Hall', 75, 'Dorm D', 'Coed'),
('D005', 'Elm Hall', 60, 'Dorm E', 'Female'),
('D006', 'Spruce Hall', 70, 'Dorm F', 'Male'),
('D007', 'Birch Hall', 85, 'Dorm G', 'Coed'),
('D008', 'Redwood Hall', 95, 'Dorm H', 'Female'),
('D009', 'Willow Hall', 50, 'Dorm I', 'Male'),
('D010', 'Aspen Hall', 65, 'Dorm J', 'Coed');

-- Create Table 10 FeesPayments
CREATE TABLE FeesPayments (
    PaymentID INT PRIMARY KEY,
    StudentID INT,
    Amount DECIMAL(10,2),
    DatePaid DATE,
    PaymentMethod VARCHAR(20),
    Status VARCHAR(20)
);

-- Add values in Table 10 FeesPayments
INSERT INTO FeesPayments
VALUES
(1, 1001, 1500.00, '2025-01-10', 'Credit Card', 'Paid'),
(2, 1002, 1200.00, '2025-01-15', 'Bank Transfer', 'Paid'),
(3, 1003, 1300.00, '2025-01-20', 'Cash', 'Paid'),
(4, 1004, 1400.00, '2025-01-05', 'Credit Card', 'Paid'),
(5, 1005, 1250.00, '2025-01-12', 'Cash', 'Paid'),
(6, 1006, 1350.00, '2025-01-18', 'Bank Transfer', 'Paid'),
(7, 1007, 1100.00, '2025-01-22', 'Credit Card', 'Pending'),
(8, 1008, 1150.00, '2025-01-25', 'Cash', 'Paid'),
(9, 1009, 1000.00, '2025-01-27', 'Bank Transfer', 'Paid'),
(10, 1010, 1450.00, '2025-01-30', 'Credit Card', 'Paid');