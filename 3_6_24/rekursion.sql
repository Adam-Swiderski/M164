CREATE TABLE tbl_Mitarbeiter (
    MitarbeiterID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    VorgesetzterID INT, 
    FOREIGN KEY (VorgesetzterID) REFERENCES tbl_Mitarbeiter(MitarbeiterID)
);
