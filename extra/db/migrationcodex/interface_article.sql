/* BugZilla #9382 - Création des nouvelles tables IE pour les articles en provenance de CODEX - JEDA */
set FOREIGN_KEY_CHECKS=0;

/* Drop Tables */
drop table IF exists `iearticle_description` cascade;
drop table IF exists `iearticle_general` cascade;
drop table IF exists `iearticle_plant` cascade;
drop table IF exists `iearticle_sale` cascade;
drop table IF exists `iearticle_valuation` cascade;

/* Create Tables */
create table `iearticle_description`
(
	`ID` INTEGER NOT NULL AUTO_INCREMENT,
	`FUNCTION_CD` VARCHAR(3) 	 NULL,
	`MAT_SHORT_DESC` VARCHAR(40) 	 NULL,
	`LANG_DESC` VARCHAR(2) 	 NULL,
	`GENERAL_RECORD_ID` INTEGER 	 NULL,
	CONSTRAINT `PK_MAT_DESC` PRIMARY KEY (`ID` ASC)
) ENGINE=InnoDB;

create table `iearticle_general`
(
	`ID` INTEGER NOT NULL AUTO_INCREMENT,
	`FUNCTION_CD` VARCHAR(3) 	 NULL,
	`MAT_NO` VARCHAR(18) 	 NULL,
	`MAT_TYPE` VARCHAR(4) 	 NULL,
	`BASE_UOM` VARCHAR(3) 	 NULL,
	`GROSS_WEIGHT` VARCHAR(14) 	 NULL,
	`WEIGHT_UNIT` VARCHAR(3) 	 NULL,
	`SOA_CORRELATION_ID` VARCHAR(256) NOT NULL,
	`GENERAL_RECORD_STATUS` VARCHAR(1) NOT NULL,
	`INSERT_DT` DATETIME NOT NULL,
	`LAST_UPDATE_DT` DATETIME 	 NULL,
	`dateintegration` DATETIME 	 NULL,
	`statut` TINYINT(3) DEFAULT 0,
	`idrejet` INT UNSIGNED 	 NULL,
	`codesociete` VARCHAR(4) 	 NULL,
	`codeentreprise` VARCHAR(5) 	 NULL,
	CONSTRAINT `PK_MAT_GENERAL` PRIMARY KEY (`ID` ASC),
	CONSTRAINT `FK_Rejet_Article_general` FOREIGN KEY (`idrejet`) REFERENCES rejet(`id`)
) ENGINE=InnoDB;

create table `iearticle_plant`
(
	`ID` INT NOT NULL AUTO_INCREMENT,
	`FUNCTION_CD` VARCHAR(3) 	 NULL,
	`PLANT_ID` VARCHAR(4) 	 NULL,
	`GENERAL_RECORD_ID` INTEGER 	 NULL,
	CONSTRAINT `PK_MAT_PLANT` PRIMARY KEY (`ID` ASC)
) ENGINE=InnoDB;

create table `iearticle_sale`
(
	`ID` INT NOT NULL AUTO_INCREMENT,
	`FUNCTION_CD` VARCHAR(3) 	 NULL,
	`SALES_ORGANIZATION` VARCHAR(4) 	 NULL,
	`GENERAL_RECORD_ID` INTEGER 	 NULL,
	CONSTRAINT `PK_MAT_SALE` PRIMARY KEY (`ID` ASC)
) ENGINE=InnoDB;

create table `iearticle_valuation`
(
	`ID` INT NOT NULL AUTO_INCREMENT,
	`FUNCTION_CD` VARCHAR(3) 	 NULL,
	`VALUATION_AREA` VARCHAR(4) 	 NULL,
	`PRICE_CTRL` VARCHAR(1) 	 NULL,
	`AVG_PRICE_PERIODIC_UNIT_PRICE` VARCHAR(12) 	 NULL,
	`STD_PRICE` VARCHAR(12) 	 NULL,
	`GENERAL_RECORD_ID` INTEGER 	 NULL,
	CONSTRAINT `PK_MAT_VALUATION` PRIMARY KEY (`ID` ASC)
) ENGINE=InnoDB;

/* Create Primary Keys, Indexes, Uniques, Checks */
ALTER TABLE `iearticle_description` 
 ADD INDEX `IXFK_MAT_DESC_MAT_GENERAL` (`GENERAL_RECORD_ID` ASC);

ALTER TABLE `iearticle_plant` 
 ADD INDEX `IXFK_MAT_PLANT_MAT_GENERAL` (`GENERAL_RECORD_ID` ASC);
 
ALTER TABLE `iearticle_sale` 
 ADD INDEX `IXFK_MAT_SALE_MAT_GENERAL` (`GENERAL_RECORD_ID` ASC);
 
ALTER TABLE `iearticle_valuation` 
 ADD INDEX `IXFK_MAT_VALUATION_MAT_GENERAL` (`GENERAL_RECORD_ID` ASC);

/* Create Foreign Key Constraints */
ALTER TABLE `iearticle_description` 
 ADD CONSTRAINT `FK_MAT_DESC_MAT_GENERAL`
	FOREIGN KEY (`GENERAL_RECORD_ID`) REFERENCES `iearticle_general` (`ID`) ON DELETE No Action ON UPDATE No Action;

ALTER TABLE `iearticle_plant` 
 ADD CONSTRAINT `FK_MAT_PLANT_MAT_GENERAL`
	FOREIGN KEY (`GENERAL_RECORD_ID`) REFERENCES `iearticle_general` (`ID`) ON DELETE Restrict ON UPDATE Restrict;

ALTER TABLE `iearticle_sale` 
 ADD CONSTRAINT `FK_MAT_SALE_MAT_GENERAL`
	FOREIGN KEY (`GENERAL_RECORD_ID`) REFERENCES `iearticle_general` (`ID`) ON DELETE Restrict ON UPDATE Restrict;

ALTER TABLE `iearticle_valuation` 
 ADD CONSTRAINT `FK_MAT_VALUATION_MAT_GENERAL`
	FOREIGN KEY (`GENERAL_RECORD_ID`) REFERENCES `iearticle_general` (`ID`) ON DELETE Restrict ON UPDATE Restrict;
	
set FOREIGN_KEY_CHECKS=1;

/* Mise à jour des codes position */
update affaire set codeposition='P1' where codeposition='01' and affairecodex is not null;
update affaire set codeposition='P2' where codeposition='02' and affairecodex is not null;
update affaire set codeposition='P3' where codeposition='03' and affairecodex is not null;
update affaire set codeposition='P4' where codeposition='04' and affairecodex is not null;
update affaire set codeposition='P5' where codeposition='05' and affairecodex is not null;
update affaire set codeposition='P6' where codeposition='06' and affairecodex is not null;
update affaire set codeposition='P7' where codeposition='07' and affairecodex is not null;
update affaire set codeposition='P8' where codeposition='08' and affairecodex is not null;
update affaire set codeposition='P9' where codeposition='09' and affairecodex is not null;
update affaire set codeposition='P10' where codeposition='10' and affairecodex is not null;