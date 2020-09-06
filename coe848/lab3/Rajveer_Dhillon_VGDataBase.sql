--
-- File generated with SQLiteStudio v3.2.1 on Tue Mar 17 03:45:45 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Contract(Dir to Pub)
CREATE TABLE "Contract(Dir to Pub)" (Name TEXT REFERENCES Director (Name) ON UPDATE RESTRICT NOT NULL, Publisher TEXT REFERENCES Publisher (Name) ON UPDATE RESTRICT NOT NULL, Budget INTEGER);

-- Table: Contract(Pub to Dev)
CREATE TABLE "Contract(Pub to Dev)" (Developer TEXT PRIMARY KEY REFERENCES Developers (Name) ON UPDATE RESTRICT NOT NULL, Publisher TEXT REFERENCES Publisher (Name) ON UPDATE RESTRICT NOT NULL, Budget INTEGER NOT NULL);

-- Table: Developers
CREATE TABLE Developers (Name TEXT PRIMARY KEY NOT NULL, "Parent Company" TEXT UNIQUE, "Date of Formation" DATE, "Programming Language" TEXT);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Atelier Double', NULL, 1986, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Square Enix', 'Square Enix', 2003, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Brownie Brown', 'Nintendo', 2000, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Cavia', 'AQ Interactive', 2000, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Tose', NULL, 1979, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('thinkArts', NULL, 1995, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Racjin', NULL, 1995, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('ArtePiazza', NULL, 1989, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Matrix Software', NULL, 1994, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('BrainNavi', NULL, NULL, NULL);
INSERT INTO Developers (Name, "Parent Company", "Date of Formation", "Programming Language") VALUES ('Metro', NULL, NULL, NULL);

-- Table: Director
CREATE TABLE Director (Name TEXT PRIMARY KEY NOT NULL, "Date of Birth" DATE UNIQUE NOT NULL, Company TEXT);

-- Table: Distribute
CREATE TABLE Distribute (Title TEXT REFERENCES "Video Game" (Title) ON UPDATE RESTRICT PRIMARY KEY NOT NULL, Publisher TEXT REFERENCES Publisher (Name) NOT NULL, Headquarters TEXT REFERENCES Publisher (HeadQuarters) ON UPDATE RESTRICT NOT NULL, "Release Date" DATE);

-- Table: Engine
CREATE TABLE Engine ("Company Developer" TEXT PRIMARY KEY NOT NULL, Royalties INTEGER);

-- Table: Genre
CREATE TABLE Genre (Title TEXT REFERENCES "Video Game" (Title) ON UPDATE RESTRICT, RPG BOOLEAN, MMORPG BOOLEAN, "Hack and Slash" BOOLEAN, "Action" BOOLEAN);

-- Table: Media Configuration
CREATE TABLE "Media Configuration" (Title TEXT REFERENCES "Video Game" (Title) ON UPDATE RESTRICT NOT NULL PRIMARY KEY, Digital BOOLEAN, Physical TEXT);

-- Table: Platform
CREATE TABLE Platform (Title TEXT REFERENCES "Video Game" (Title) ON UPDATE RESTRICT, PS4 BOOLEAN, "Xbox One" BOOLEAN, "Xbox 360" BOOLEAN, PS3 BOOLEAN, "Wii U" BOOLEAN);

-- Table: Produce
CREATE TABLE Produce (Name TEXT REFERENCES Director (Name) ON UPDATE RESTRICT NOT NULL, "Title " TEXT REFERENCES "Video Game" (Title) ON UPDATE RESTRICT NOT NULL, Team TEXT UNIQUE NOT NULL);

-- Table: Publisher
CREATE TABLE Publisher (Name TEXT PRIMARY KEY NOT NULL, HeadQuarters TEXT UNIQUE NOT NULL, President TEXT);

-- Table: Rating
CREATE TABLE Rating (Title TEXT REFERENCES "Video Game" (Title) ON UPDATE NO ACTION NOT NULL, MetaCritic INTEGER, Famitsu INTEGER, IGN INTEGER);

-- Table: Video Game
CREATE TABLE "Video Game" (Title TEXT PRIMARY KEY NOT NULL, DLC TEXT);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
