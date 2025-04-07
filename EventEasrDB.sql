use master
IF EXISTS (SELECT*FROM sys.databases WHERE name = 'EventCaseDB2')
DROP DATABASE EventCaseDB2
CREATE DATABASE EventCaseDB2

USE EventCaseDB2




CREATE TABLE Venues (
    VenueID INT PRIMARY KEY IDENTITY,
    VenueName NVARCHAR(100),
    Location NVARCHAR(200),
    Capacity INT,
    Description NVARCHAR(500),
    ImageURL NVARCHAR(500)  
);

CREATE TABLE Events (
    EventID INT PRIMARY KEY IDENTITY,
    EventName NVARCHAR(100),
    EventDate DATETIME,
    VenueID INT,
    EventType NVARCHAR(50),
    Description NVARCHAR(500),
    TicketPrice DECIMAL(10, 2),
    FOREIGN KEY (VenueID) REFERENCES Venues(VenueID)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY IDENTITY,
    CustomerID INT,
    EventID INT,
    BookingDate DATETIME,
    SeatsBooked INT,
    BookingStatus NVARCHAR(50),
   
    FOREIGN KEY (EventID) REFERENCES Events(EventID)

	

INSERT INTO Venues (VenueName, Location, Capacity, Description, ImageURL)
VALUES ('Grand Hall', '45 Event Ave, Cape Town', 300, 'Spacious venue for weddings and concerts.', 'https://example.com/images/grandhall.jpg');


INSERT INTO Events (EventName, EventDate, VenueID, EventType, Description, TicketPrice)
VALUES ('Jazz Night', '2025-04-10 19:00:00', 1, 'Music', 'An evening of live jazz music.', 150.00);


INSERT INTO Bookings (CustomerID, EventID, BookingDate, SeatsBooked, BookingStatus)
VALUES (1, 1, GETDATE(), 2, 'Confirmed');




	SELECT*
	FROM Venues

	SELECT*
	FROM Events

	SELECT*
	FROM Bookings