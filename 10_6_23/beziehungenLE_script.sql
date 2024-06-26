-- MySQL Script generated by MySQL Workbench
-- Mon Jun 10 13:43:57 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tbl_Projekt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_Projekt` (
  `ID_Projekt` INT NOT NULL AUTO_INCREMENT,
  `Bezeichnung` VARCHAR(30) NOT NULL,
  `Budget` DECIMAL(10) NULL,
  `tbl_Projekt_ID_Projekt` INT NOT NULL,
  PRIMARY KEY (`ID_Projekt`),
  INDEX `fk_tbl_Projekt_tbl_Projekt1_idx` (`tbl_Projekt_ID_Projekt` ASC) VISIBLE,
  UNIQUE INDEX `tbl_Projekt_ID_Projekt_UNIQUE` (`tbl_Projekt_ID_Projekt` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_Projekt_tbl_Projekt1`
    FOREIGN KEY (`tbl_Projekt_ID_Projekt`)
    REFERENCES `mydb`.`tbl_Projekt` (`ID_Projekt`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_Bus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_Bus` (
  `ID_Bus` INT NOT NULL AUTO_INCREMENT,
  `Bezeichnung` VARCHAR(30) NOT NULL,
  `Kennzeichen` VARCHAR(30) NOT NULL,
  `Anzahl_Plätze` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`ID_Bus`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_Fahrer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_Fahrer` (
  `ID_Fahrer` INT NOT NULL,
  `Vorname` VARCHAR(30) NOT NULL,
  `Nachname` VARCHAR(30) NOT NULL,
  `Geb.datum` DATE NOT NULL,
  `tbl_Bus_ID_Bus` INT NOT NULL,
  `tbl_Fahrercol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_Fahrer`),
  INDEX `fk_tbl_Fahrer_tbl_Bus1_idx` (`tbl_Bus_ID_Bus` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_Fahrer_tbl_Bus1`
    FOREIGN KEY (`tbl_Bus_ID_Bus`)
    REFERENCES `mydb`.`tbl_Bus` (`ID_Bus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_Ausweis`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_Ausweis` (
  `ID_Ausweis` INT NOT NULL,
  `Nummer` VARCHAR(30) NOT NULL,
  `Art` INT NULL,
  `tbl_Fahrer_ID_Fahrer` INT NOT NULL,
  PRIMARY KEY (`ID_Ausweis`),
  INDEX `fk_tbl_Ausweis_tbl_Fahrer_idx` (`tbl_Fahrer_ID_Fahrer` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_Ausweis_tbl_Fahrer`
    FOREIGN KEY (`tbl_Fahrer_ID_Fahrer`)
    REFERENCES `mydb`.`tbl_Fahrer` (`ID_Fahrer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_Passagier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_Passagier` (
  `ID_Passagier` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(30) NOT NULL,
  `Platznummer` VARCHAR(30) NULL,
  `tbl_Bus_ID_Bus` INT NULL,
  PRIMARY KEY (`ID_Passagier`),
  INDEX `fk_tbl_Passagier_tbl_Bus1_idx` (`tbl_Bus_ID_Bus` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_Passagier_tbl_Bus1`
    FOREIGN KEY (`tbl_Bus_ID_Bus`)
    REFERENCES `mydb`.`tbl_Bus` (`ID_Bus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
