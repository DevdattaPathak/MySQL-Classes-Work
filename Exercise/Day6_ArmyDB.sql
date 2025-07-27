/*
Sample Army Database
Table 1: Soldiers (SoldierID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), RankID INT, UnitID INT, DOB DATE, EnlistmentDate DATE, Gender CHAR(1))
Table 2: Ranks ( RankID INT PRIMARY KEY, RankName VARCHAR(50)
Table 3: Units (UnitID INT PRIMARY KEY, UnitName VARCHAR(100), BaseLocation VARCHAR(100))
Table 4: Equipment (EquipmentID INT PRIMARY KEY, EquipmentName VARCHAR(100), Type VARCHAR(50), Quantity INT, UnitID INT)
Table 5: Operations (OperationID INT PRIMARY KEY, Name VARCHAR(100), Location VARCHAR(100), StartDate DATE, EndDate DATE, Status VARCHAR(50))
Table 6: Assignments (AssignmentID INT PRIMARY KEY, SoldierID INT, OperationID INT, Role VARCHAR(100), StartDate DATE, EndDate DATE)
Table 7: Trainings (TrainingID INT PRIMARY KEY, Name VARCHAR(100), Location VARCHAR(100), DurationDays INT)
Table 8: Soldier_Training (SoldierID INT, TrainingID INT, CompletionDate DATE, PRIMARY KEY (SoldierID, TrainingID))
Table 9: Medals (MedalID INT PRIMARY KEY, MedalName VARCHAR(100), Description VARCHAR(255))
Table 10: SoldierMedals (SoldierID INT, MedalID INT, DateAwarded DATE, PRIMARY KEY (SoldierID,MedalID))
*/

-- Create Database: Army
CREATE DATABASE Army;
USE Army;

-- Table 1: Soldiers
CREATE TABLE Soldiers (
    SoldierID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    RankID INT,
    UnitID INT,
    DOB DATE,
    EnlistmentDate DATE,
    Gender CHAR(1)
);

-- Insert Values in Table 1: Soldiers
INSERT INTO Soldiers
VALUES
(1, 'John', 'Smith', 1, 101, '1990-05-10', '2010-06-15', 'M'),
(2, 'Alice', 'Johnson', 2, 102, '1992-03-12', '2012-07-10', 'F'),
(3, 'Mike', 'Brown', 3, 103, '1988-08-25', '2009-01-20', 'M'),
(4, 'Laura', 'Davis', 2, 101, '1991-11-30', '2013-04-22', 'F'),
(5, 'Tom', 'Wilson', 4, 104, '1995-09-18', '2015-02-12', 'M'),
(6, 'Karen', 'Miller', 5, 105, '1985-07-14', '2006-11-01', 'F'),
(7, 'Robert', 'Moore', 1, 106, '1993-01-27', '2014-05-17', 'M'),
(8, 'Emma', 'Taylor', 2, 102, '1994-12-09', '2016-03-05', 'F'),
(9, 'Chris', 'Anderson', 3, 107, '1990-04-19', '2010-08-23', 'M'),
(10, 'Sophia', 'Thomas', 4, 101, '1991-10-01', '2011-09-30', 'F');

-- Create Table 2: Ranks
CREATE TABLE Ranks (
    RankID INT PRIMARY KEY,
    RankName VARCHAR(50)
);

-- INSERT Values in Table 2: Ranks
INSERT INTO Ranks
VALUES
(1, 'Private'),
(2, 'Corporal'),
(3, 'Sergeant'),
(4, 'Lieutenant'),
(5, 'Captain'),
(6, 'Major'),
(7, 'Colonel'),
(8, 'General'),
(9, 'Warrant Officer'),
(10, 'Second Lieutenant');

-- Create Table 3: Units
CREATE TABLE Units (
    UnitID INT PRIMARY KEY,
    UnitName VARCHAR(100),
    BaseLocation VARCHAR(100)
);

-- Insert Values into Table 3: Units
INSERT INTO Units
VALUES
(101, '1st Infantry', 'Fort Bragg'),
(102, '2nd Armored', 'Fort Hood'),
(103, '3rd Cavalry', 'Fort Riley'),
(104, '4th Artillery', 'Fort Sill'),
(105, '5th Engineering', 'Fort Leonard Wood'),
(106, '6th Recon', 'Fort Carson'),
(107, '7th Logistics', 'Fort Eustis'),
(108, '8th Aviation', 'Fort Rucker'),
(109, '9th Signal', 'Fort Gordon'),
(110, '10th Support', 'Fort Campbell');

-- Create Table 4: Equipment
CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY,
    EquipmentName VARCHAR(100),
    Type VARCHAR(50),
    Quantity INT,
    UnitID INT
);

-- Insert Values in Table 4: Equipment
INSERT INTO Equipment
VALUES
(1, 'M4 Carbine', 'Rifle', 100, 101),
(2, 'M1 Abrams', 'Tank', 20, 102),
(3, 'Humvee', 'Vehicle', 50, 103),
(4, 'Howitzer', 'Artillery', 12, 104),
(5, 'Drone MQ-9', 'UAV', 5, 106),
(6, 'Blackhawk', 'Helicopter', 8, 108),
(7, 'Radio Set AN/PRC', 'Communication', 25, 109),
(8, 'Combat Engineering Tool Kit', 'Tool', 40, 105),
(9, 'MRE Pack', 'Ration', 500, 107),
(10, 'First Aid Kit', 'Medical', 300, 110);

-- Create Table 5: Operations
CREATE TABLE Operations (
   OperationID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(50)
);

-- Insert Values into Table 5: Operations
INSERT INTO Operations
VALUES
(1, 'Desert Storm', 'Iraq', '1990-08-02', '1991-02-28', 'Completed'),
(2, 'Enduring Freedom', 'Afghanistan', '2001-10-07', '2014-12-28', 'Completed'),
(3, 'Iraqi Freedom', 'Iraq', '2003-03-20', '2011-12-15', 'Completed'),
(4, 'Inherent Resolve', 'Syria', '2014-06-15', NULL, 'Ongoing'),
(5, 'Resolute Support', 'Afghanistan', '2015-01-01', '2021-08-30', 'Completed'),
(6, 'Atlantic Resolve', 'Europe', '2014-04-01', NULL, 'Ongoing'),
(7, 'Pacific Partnership', 'Asia-Pacific', '2020-01-10', NULL, 'Ongoing'),
(8, 'Operation Spartan Shield', 'Middle East', '2012-09-01', NULL, 'Ongoing'),
(9, 'Freedom’s Sentinel', 'Afghanistan', '2015-01-01', '2021-08-30', 'Completed'),
(10, 'Sentinel Watch', 'Africa', '2018-06-01', NULL, 'Ongoing');

-- Create Table 6: Assignments
CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    SoldierID INT,
    OperationID INT,
    Role VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);

-- Insert Values into Table 6: Assignments
INSERT INTO Assignments
VALUES
(1, 1, 4, 'Infantry Support', '2015-06-01', '2016-06-01'),
(2, 2, 5, 'Communications Officer', '2016-01-01', '2017-01-01'),
(3, 3, 3, 'Tactical Command', '2005-03-01', '2006-03-01'),
(4, 4, 1, 'Medic', '1990-08-10', '1991-02-28'),
(5, 5, 6, 'Engineer', '2017-04-01', '2018-04-01'),
(6, 6, 7, 'Recon Scout', '2020-02-01', NULL),
(7, 7, 2, 'Supply Handler', '2002-06-01', '2003-06-01'),
(8, 8, 8, 'Field Technician', '2021-01-01', NULL),
(9, 9, 9, 'Logistics Officer', '2019-01-01', '2020-01-01'),
(10, 10, 10, 'Intel Analyst', '2022-07-01', NULL);

-- Create Table 7: Trainings
CREATE TABLE Trainings (
    TrainingID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    DurationDays INT
);

-- Insert Values into Table 7: Trainings
INSERT INTO Trainings
VALUES
(1, 'Basic Combat Training', 'Fort Benning', 60),
(2, 'Advanced Infantry', 'Fort Bragg', 90),
(3, 'Sniper School', 'Fort Benning', 45),
(4, 'Engineering Course', 'Fort Leonard Wood', 75),
(5, 'Communications', 'Fort Gordon', 50),
(6, 'Paratrooper School', 'Fort Bragg', 30),
(7, 'Medic Training', 'Fort Sam Houston', 90),
(8, 'Leadership Course', 'Fort Leavenworth', 120),
(9, 'Helicopter Flight Training', 'Fort Rucker', 180),
(10, 'Tank Operator Training', 'Fort Hood', 60);

-- Create Table 8: Soldier_Training
CREATE TABLE Soldier_Training (
    SoldierID INT,
    TrainingID INT,
    CompletionDate DATE,
    PRIMARY KEY (SoldierID, TrainingID)
);

-- Insert Into Table 8: Soldier_Training
INSERT INTO Soldier_Training
VALUES
(1, 1, '2010-08-15'),
(2, 1, '2012-09-10'),
(3, 1, '2009-03-01'),
(4, 1, '2013-06-01'),
(5, 1, '2015-04-01'),
(6, 8, '2007-02-01'),
(7, 5, '2014-07-01'),
(8, 4, '2016-05-01'),
(9, 9, '2011-10-10'),
(10, 7, '2012-03-30');

-- CREATE Table 9: Medals
CREATE TABLE Medals (
  MedalID INT PRIMARY KEY,
  MedalName VARCHAR(100),
  Description VARCHAR(255)
  );
  
-- Insert Values into Table 9: Medals
INSERT INTO Medals
VALUES
(1,'Medal of Valor','Awarded for conspicuous bravery'),
(2,'Service Medal','Completion of service period'),
(3,'Expert Marksman','Top score in shooting'),
(4,'Meritorious Service','Outstanding service'),
(5,'Leadership Medal','Excellence in leadership'),
(6,'Engineering Commendation','Distinguished engineering work'),
(7,'Medical Achievement','Exceptional medical support'),
(8,'Recon Merit','Excellence in reconnaissance'),
(9,'Logistics Medal','Outstanding logistics support'),
(10,'Flight Medal','Distinguished aviation performance');

-- Create Table 10: SoldierMedals
CREATE TABLE SoldierMedals (
  SoldierID INT,
  MedalID INT,
  DateAwarded DATE,
  PRIMARY KEY (SoldierID,MedalID)
);

-- Insert Values into Table 10: SoldierMedals
INSERT INTO SoldierMedals
VALUES
(1,1,'2021-07-04'),
(1,3,'2022-09-10'),
(2,2,'2023-01-15'),
(3,4,'2022-03-22'),
(4,5,'2023-05-30'),
(5,6,'2021-12-12'),
(6,7,'2024-02-28'),
(7,8,'2023-10-18'),
(8,9,'2022-11-05'),
(9,10,'2024-04-14');