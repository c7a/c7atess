-- MySQL Script generated by MySQL Workbench
-- Mon 06 Jul 2015 10:19:42 AM EDT
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ocr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ocr` (
  `idocr` INT NOT NULL AUTO_INCREMENT,
  `imageFile` VARCHAR(200) NOT NULL,
  `ocrEngine` VARCHAR(45) NOT NULL,
  `langParam` VARCHAR(8) NOT NULL,
  `brightness` INT NULL,
  `contrast` INT NULL,
  `avgWordConfidence` INT NULL,
  `numWords` INT NULL,
  `startOcr` DATETIME NULL,
  `timeOcr` INT NULL,
  `remarks` VARCHAR(45) NULL,
  `imageFileSize` INT NULL,
  `outputText` TEXT NULL,
  `outputHocr` BLOB NULL,
  PRIMARY KEY (`idocr`),
  UNIQUE INDEX `index2` USING BTREE (`imageFile` ASC, `ocrEngine` ASC, `langParam` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`jobQueue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`jobQueue` (
  `idjobQueue` INT NOT NULL AUTO_INCREMENT,
  `queuedBy` VARCHAR(25) NULL,
  `priority` SMALLINT NULL,
  `notify` VARCHAR(45) NULL,
  `parm1` VARCHAR(128) NULL,
  `Command` VARCHAR(45) NULL,
  `qDateTime` VARCHAR(45) NULL,
  `parm2` VARCHAR(45) NULL,
  PRIMARY KEY (`idjobQueue`),
  INDEX `index2` USING BTREE (`priority` ASC, `qDateTime` ASC))
ENGINE = InnoDB
COMMENT = 'queue for ocr jobs';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
