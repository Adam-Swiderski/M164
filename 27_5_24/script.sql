-- Erstellen der Tabellen tbl_fahrer und tbl_disponent
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

-- Löschen einer der beiden Tabellen (tbl_fahrer)
DROP TABLE IF EXISTS tbl_fahrer;

-- Wiederherstellen der Tabelle tbl_fahrer
CREATE TABLE tbl_fahrer (
    Fahrer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME,
    Telefonnummer VARCHAR(12),
    Einkommen FLOAT(10,2)
) DEFAULT CHARSET=utf8mb4;

-- Erstellen der Tabelle tbl_Mitarbeiter
CREATE TABLE tbl_Mitarbeiter (
    MA_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME,
    Telefonnummer VARCHAR(12),
    Einkommen FLOAT(10,2)
) DEFAULT CHARSET=utf8mb4;

-- Ändern des Charsets von Name und Vorname auf latin1
ALTER TABLE tbl_Mitarbeiter MODIFY Name VARCHAR(50) CHARACTER SET latin1;
ALTER TABLE tbl_Mitarbeiter MODIFY Vorname VARCHAR(30) CHARACTER SET latin1;

-- Löschen der Attribute Name, Vorname und Telefonnummer aus tbl_fahrer und tbl_disponent
ALTER TABLE tbl_fahrer DROP COLUMN Name, DROP COLUMN Vorname, DROP COLUMN Telefonnummer;
ALTER TABLE tbl_disponent DROP COLUMN Name, DROP COLUMN Vorname, DROP COLUMN Telefonnummer;

-- Hinzufügen der notwendigen Fremdschlüssel für Spezialisierungen
ALTER TABLE tbl_fahrer ADD COLUMN MA_ID INT, ADD CONSTRAINT FK_Fahrer_Mitarbeiter FOREIGN KEY (MA_ID) REFERENCES tbl_Mitarbeiter(MA_ID);
ALTER TABLE tbl_disponent ADD COLUMN MA_ID INT, ADD CONSTRAINT FK_Disponent_Mitarbeiter FOREIGN KEY (MA_ID) REFERENCES tbl_Mitarbeiter(MA_ID);
