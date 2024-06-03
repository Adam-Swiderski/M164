CREATE TABLE tbl_Fahrten (
    FahrtID INT AUTO_INCREMENT PRIMARY KEY,
    FahrtName VARCHAR(255),
);

CREATE TABLE tbl_Orte (
    OrtID INT AUTO_INCREMENT PRIMARY KEY,
    OrtName VARCHAR(255),
);

CREATE TABLE tbl_Fahrten_Orte (
    FahrtID INT,
    OrtID INT,
    Rolle VARCHAR(255), -- zum Kennzeichnen der verschiedenen Beziehungen
    PRIMARY KEY (FahrtID, OrtID, Rolle),
    FOREIGN KEY (FahrtID) REFERENCES tbl_Fahrten(FahrtID),
    FOREIGN KEY (OrtID) REFERENCES tbl_Orte(OrtID)
);
