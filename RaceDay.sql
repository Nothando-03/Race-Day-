CREATE DATABASE RaceDB;

CREATE TABLE Organisers (
OrganiserID INT PRIMARY KEY,
FullName VARCHAR(255) NOT NULL,
EventID int,
CONSTRAINT fk_events
FOREIGN KEY (EventID)
REFERENCES Events(EventID)
);

CREATE TABLE Participants (
ParticipantID INT PRIMARY KEY,
ContactDetails INT NOT NULL UNIQUE,
EventID INT,
VenueID INT,
CategoryID INT,
Results INT, 
CONSTRAINT fk_events
FOREIGN KEY (EventID)
REFERENCES Events (EventID),

CONSTRAINT fk_venue
FOREIGN KEY (VenueID)
REFERENCES Venue (VenueID),

CONSTRAINT fk_category
FOREIGN KEY (CategoryID)
REFERENCES Category (CategoryID),

CONSTRAINT fk_results 
FOREIGN KEY (Results)
REFERENCES Results (Results)
);

CREATE TABLE Events (
EventID INT PRIMARY KEY,
EventName VARCHAR(255) NOT NULL,
CategoryID INT,
VenueID INT 

CONSTRAINT fk_category
FOREIGN KEY (CategoryID)
REFERENCES Category (CategoryID),

CONSTRAINT fk_venue
FOREIGN KEY (VenueID)
REFERENCE Category(CategoryID)
);

CREATE TABLE Venue (
VenueID INT PRIMARY KEY,
VenueName VARCHAR(255) NOT NULL,
EventID INT

CONSTRAINT fk_events
FOREIGN KEY (EventID)
REFERENCES Events (EventID), 
);

CREATE TABLE Category (
CategoryID INT PRIMARY KEY,
EventID INT,
ParticipantID INT,
Results INT,
VenueID INT

CONSTRAINT fk_event
FOREIGN KEY (CategoryID)
REFERENCES Category (CategoryID),

CONSTRAINT fk_events
FOREIGN KEY (EventID)
REFERENCES Events (EventID),

CONSTRAINT fk_Participant
FOREIGN KEY (ParticipantID)
REFERENCES Participants (ParticipantID),

CONSTRAINT fk_results
FOREIGN KEY (Results)
REFERENCES Results (Results),

CONSTRAINT fk_venue
FOREIGN KEY (VenueID)
REFERENCES Venue (VenueID)
);

CREATE TABLE Results (
Results INT PRIMARY KEY,
ParticipantID INT 
);

INSERT INTO Organisers (OrganiserID, FullName, EventID)
VALUES
('1', 'Lee Khuzwayo', '301'),
('2', 'Kwanele Sibiya', '302'),
('3', 'Thando Thabethe', '303'),
('4', 'Siyabonga Ndlovu', '304');

INSERT INTO Participants (ParticipantID, FullName, EventID, VenueID, CategoryID, Results)
VALUES
('201', 'Zee Nxumalo', '301', '401', '501', '3rd'),
('202', 'Jorja Smith', '302', '402', '502', '2nd'),
('203', 'Hlengiwe Mahlangu', '303', '403', '503', '4th'),
('204', 'Bobi Dhlomo', '304', '404', '504', '1st');

INSERT INTO Events (EventID, EventName, CategoryID, VenueID)
VALUES
('301', 'Cycle Town', '501', '401'),
('301', 'Marry Marathon', '502', '402'),
('303', 'Fun Run SA', '503', '403'),
('304', 'Fast Tracks', '504', '404');

INSERT INTO Venue (VenueID, VenueName, EventID)
VALUES
('404', 'Durban-North', '302'),
('402', 'Ermelo', '303'),
('401', 'Standerton', '304'),
('403', 'Jozi', '301');

INSERT INTO Category (CategoryID, EventID, ParticipantsID, Results, VenueID)
VALUES
('501', '301', '201', '3rd', '401'),
('502', '302', '202', '2nd', '401'),
('503', '303', '203', '4th', '403'),
('504', '304', '204', '1st', '404');

INSERT INTO Results (Results, ParticipantID)
VALUES
('3rd', '201'),
('2nd', '202'),
('4th', '203'),
('1st', '204');