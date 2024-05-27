CREATE TABLE Person (
    Person_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE Kleidungsstück (
    Kleidungsstück_ID INT PRIMARY KEY AUTO_INCREMENT,
    Bezeichnung VARCHAR(50),
    Größe VARCHAR(10),
    Farbe VARCHAR(20)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE Ausweis (
    Ausweis_ID INT PRIMARY KEY AUTO_INCREMENT,
    Person_ID INT,
    Ausweisnummer VARCHAR(30),
    Ausstellungsdatum DATETIME,
    FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID)
) DEFAULT CHARSET=utf8mb4;

ALTER TABLE Person
    ADD COLUMN Telefonnummer VARCHAR(12);

CREATE TABLE tbl_MA (
    MA_ID INT PRIMARY KEY AUTO_INCREMENT,
    Abteilung VARCHAR(50)
) DEFAULT CHARSET=utf8mb4;

ALTER TABLE tbl_MA
    ADD FOREIGN KEY (MA_ID) REFERENCES Person(Person_ID);
