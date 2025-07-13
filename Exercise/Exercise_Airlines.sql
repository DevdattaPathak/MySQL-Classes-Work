-- Create New database for Day 2 practice --
Create Database Airlines;

-- Use above database and insert first table based on output generated from Chatgpt
Use Airlines;
Create Table Airlines (
    AirlineID INT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50),
    IATA VARCHAR(3),
    ICAO VARCHAR(4)
);


-- Insert values/ rows into the table
Insert Into Airlines (AirlineId,Name,Country,IATA,ICAO)
values
(1, 'American Airlines', 'USA', 'AA', 'AAL'),
(2, 'Delta Air Lines', 'USA', 'DL', 'DAL'),
(3, 'British Airways', 'UK', 'BA', 'BAW'),
(4, 'Emirates', 'UAE', 'EK', 'UAE'),
(5, 'Qatar Airways', 'Qatar', 'QR', 'QTR');

-- Display table and values
Select * from Airlines

-- Insert Second Table Airports

Create Table Airports (
    AirportID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50),
    IATA VARCHAR(3)
    );
    
-- Insert Values in Airports

Insert Into Airports
Values
(1, 'John F. Kennedy International', 'New York', 'USA', 'JFK'),
(2, 'Heathrow Airport', 'London', 'UK', 'LHR'),
(3, 'Los Angeles International', 'Los Angeles', 'USA', 'LAX'),
(4, 'Dubai International', 'Dubai', 'UAE', 'DXB'),
(5, 'Hamad International', 'Doha', 'Qatar', 'DOH');


-- Create Table 3 Aircrafts

Create Table Aircrafts (
    AircraftID INT PRIMARY KEY,
    Model VARCHAR(50),
    Manufacturer VARCHAR(50),
    Capacity INT,
    AirlineID INT
    );
    
-- Add values in Aircrafts table

Insert into Aircrafts
Values
(1, 'Boeing 777', 'Boeing', 396, 4),
(2, 'Airbus A380', 'Airbus', 555, 5),
(3, 'Boeing 737', 'Boeing', 189, 1),
(4, 'Airbus A320', 'Airbus', 180, 2),
(5, 'Boeing 787', 'Boeing', 242, 3);

-- Create Table 4 Flights

Create Table Flights (
	FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(10),
    AirlineID INT,
    AircraftID INT,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME
    );
    
-- Insert Values in Table 4 Flights

Insert into Flights
Values
(1, 'AA101', 1, 3, 1, 3, '2025-07-10 08:00', '2025-07-10 11:00'),
(2, 'DL202', 2, 4, 3, 2, '2025-07-10 12:00', '2025-07-10 20:00'),
(3, 'BA303', 3, 5, 2, 1, '2025-07-11 09:00', '2025-07-11 13:00'),
(4, 'EK404', 4, 1, 4, 5, '2025-07-12 23:00', '2025-07-13 01:00'),
(5, 'QR505', 5, 2, 5, 4, '2025-07-13 02:00', '2025-07-13 04:30');

-- Create Table 5 Passangers

Create Table Passangers (
PassengerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PassportNumber VARCHAR(20),
    Nationality VARCHAR(50)
    );
    
-- Insert values in table 5 passangers

Insert Into Passangers
Values
(1, 'Alice', 'Johnson', 'X12345678', 'USA'),
(2, 'Bob', 'Smith', 'Y87654321', 'UK'),
(3, 'Carlos', 'Diaz', 'Z13579246', 'Mexico'),
(4, 'Dana', 'Lee', 'A98765432', 'South Korea'),
(5, 'Eva', 'Grover', 'B11223344', 'India');

-- Create Table 6 Bookings

Create Table Bookings (
	BookingID INT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    BookingDate DATE,
    SeatNumber VARCHAR(5)
);

-- Add values in table 6 Bookings

Insert into Bookings
Values
(1, 1, 1, '2025-07-01', '12A'),
(2, 2, 2, '2025-07-02', '14B'),
(3, 3, 3, '2025-07-03', '10C'),
(4, 4, 4, '2025-07-04', '1A'),
(5, 5, 5, '2025-07-05', '22D');

-- Create Table 7 CrewMembers

Create Table CrewMembers (
CrewID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Role VARCHAR(50),
    AirlineID INT
    );
    
-- Add values in table 7 CrewMembers

Insert Into CrewMembers
Values
(1, 'Mark', 'Adams', 'Pilot', 1),
(2, 'Nina', 'Taylor', 'Flight Attendant', 2),
(3, 'Omar', 'Farid', 'Pilot', 5),
(4, 'Rachel', 'Nguyen', 'Flight Attendant', 4),
(5, 'Steve', 'Brown', 'Engineer', 3);

-- Create table 8 FlightCrew

Create Table FlightCrew (
	FlightID INT,
    CrewID INT,
    PRIMARY KEY (FlightID, CrewID)
    );
    
-- Add values into Table 8 FlightCrew

Insert into FlightCrew
Values
(1, 1),
(2, 2),
(3, 5),
(4, 4),
(5, 3);

-- Create Table 9 Payments

Create Table Payments (
	PaymentID INT PRIMARY KEY,
    BookingID INT,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(20),
    PaymentDate DATE
    );
    
-- Add values in Table 9 Payments

Insert into Payments
Values
(1, 1, 300.00, 'Credit Card', '2025-07-01'),
(2, 2, 450.50, 'PayPal', '2025-07-02'),
(3, 3, 620.75, 'Debit Card', '2025-07-03'),
(4, 4, 980.00, 'Credit Card', '2025-07-04'),
(5, 5, 710.25, 'Apple Pay', '2025-07-05');

-- Create table 10 Luggage

Create table Luggage (
	LuggageID INT PRIMARY KEY,
    BookingID INT,
    Weight DECIMAL(5,2),
    TagNumber VARCHAR(15),
    IsCheckedIn BOOLEAN
    );
    
-- Add values int Table 10 Luggage

Insert into Luggage
Values
(1, 1, 23.5, 'TAG12345', TRUE),
(2, 2, 18.0, 'TAG23456', TRUE),
(3, 3, 25.0, 'TAG34567', FALSE),
(4, 4, 15.3, 'TAG45678', TRUE),
(5, 5, 19.8, 'TAG56789', TRUE);

-- End of Script