CREATE SCHEMA IF NOT EXISTS my_database DEFAULT CHARACTER SET utf8mb4;
USE my_database;

CREATE TABLE tbl_fahrer (
    Fahrer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME,
    Telefonnummer VARCHAR(12),
    Einkommen FLOAT(10,2)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE tbl_disponent (
    Disponent_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME,
    Telefonnummer VARCHAR(12),
    Einkommen FLOAT(10,2)
) DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS tbl_fahrer;

CREATE TABLE tbl_fahrer (
    Fahrer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME,
    Telefonnummer VARCHAR(12),
    Einkommen FLOAT(10,2)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE tbl_Mitarbeiter (
    MA_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME,
    Telefonnummer VARCHAR(12),
    Einkommen FLOAT(10,2)
) DEFAULT CHARSET=utf8mb4;

ALTER TABLE tbl_Mitarbeiter MODIFY Name VARCHAR(50) CHARACTER SET latin1;
ALTER TABLE tbl_Mitarbeiter MODIFY Vorname VARCHAR(30) CHARACTER SET latin1;

ALTER TABLE tbl_fahrer DROP COLUMN Name, DROP COLUMN Vorname, DROP COLUMN Telefonnummer;
ALTER TABLE tbl_disponent DROP COLUMN Name, DROP COLUMN Vorname, DROP COLUMN Telefonnummer;

ALTER TABLE tbl_fahrer ADD COLUMN MA_ID INT, ADD CONSTRAINT FK_Fahrer_Mitarbeiter FOREIGN KEY (MA_ID) REFERENCES tbl_Mitarbeiter(MA_ID);
ALTER TABLE tbl_disponent ADD COLUMN MA_ID INT, ADD CONSTRAINT FK_Disponent_Mitarbeiter FOREIGN KEY (MA_ID) REFERENCES tbl_Mitarbeiter(MA_ID);
