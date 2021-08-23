-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the create table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been created.

-- This is only an example of how you add create table ddls to this file.
--   You may remove it.


CREATE TABLE Category
(
cname VARCHAR(60) NOT NULL,
prioritynum INTEGER,
PRIMARY KEY(cname)
);

CREATE TABLE Person
(
hinsurnum INTEGER NOT NULL PRIMARY KEY,
name VARCHAR(30),
gender VARCHAR(20),
dob DATE,
phone VARCHAR(12),
city VARCHAR(30),
postalcd VARCHAR(7),
streetaddr VARCHAR(50),
regdate DATE,
cname VARCHAR(60),
FOREIGN KEY(cname) REFERENCES Category
);

CREATE TABLE Vaccine
(
vname​ VARCHAR(30) NOT NULL PRIMARY KEY, 
waitperiod INTEGER,
doses INTEGER
);

CREATE TABLE VaccLocation
(
locname VARCHAR(30) NOT NULL PRIMARY KEY,
lcity VARCHAR(30),
lpostalcd VARCHAR(7),
lstreetaddr VARCHAR(50)
);


CREATE TABLE VaccineBatch
(
vname VARCHAR(30) NOT NULL,
batchno INTEGER NOT NULL,
mfgdate DATE,
exprydate DATE,
numdoses INTEGER,
locname VARCHAR(30),
PRIMARY KEY(vname, batchno),
FOREIGN KEY(vname) REFERENCES Vaccine, 
FOREIGN KEY(locname) REFERENCES VaccLocation
);

CREATE TABLE Vial
(
vname VARCHAR(30) NOT NULL,
batchno INTEGER NOT NULL,
vialid INTEGER NOT NULL,
PRIMARY KEY(vname,batchno,vialid),
FOREIGN KEY(vname,batchno) REFERENCES VaccineBatch
);

CREATE TABLE Hospital
(
locname VARCHAR(40) NOT NULL PRIMARY KEY,
FOREIGN KEY(locname) REFERENCES VaccLocation
);


CREATE TABLE Nurse
(
licensenum INTEGER NOT NULL PRIMARY KEY,
name VARCHAR(30),
locname VARCHAR(40),
FOREIGN KEY(locname) REFERENCES Hospital
);


CREATE TABLE VaccDates
(
locname VARCHAR(30) NOT NULL,
vdate DATE NOT NULL,
PRIMARY KEY(locname, vdate),
FOREIGN KEY(locname) REFERENCES VaccLocation
);


CREATE TABLE VaccSlot
(
locname VARCHAR(30) NOT NULL,
vdate DATE NOT NULL,
vtime TIME NOT NULL,
vslot VARCHAR(20) NOT NULL,
hinsurnum INTEGER,
asgndate DATE, 
licensenum INTEGER,
vname VARCHAR(30),
batchno INTEGER,
vialid INTEGER,
PRIMARY KEY(locname, vdate, vtime, vslot),
FOREIGN KEY(locname,vdate) REFERENCES VaccDates,
FOREIGN KEY(licensenum) REFERENCES Nurse, 
FOREIGN KEY(hinsurnum) REFERENCES Person,
FOREIGN KEY(vname,batchno,vialid) REFERENCES Vial
);


CREATE TABLE NurseAssignments
(
licensenum INTEGER NOT NULL,
locname VARCHAR(30) NOT NULL,
vdate DATE NOT NULL,
PRIMARY KEY(licensenum, locname,vdate),
FOREIGN KEY(licensenum) REFERENCES Nurse,
FOREIGN KEY(locname,vdate) REFERENCES VaccDates
);





