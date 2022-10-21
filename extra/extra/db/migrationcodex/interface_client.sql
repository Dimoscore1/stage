/* BugZilla #9381 - Interface clients */

set FOREIGN_KEY_CHECKS=0;
drop table IF exists `ieclient_general` cascade;
drop table IF exists `ieclient_specific` cascade;
drop table IF exists `ieclient_partenaire` cascade;
drop table IF exists `ieclient_vente` cascade;
drop table IF exists `ieclient_financial` cascade;

CREATE TABLE `ieclient_general`
(
	`GENERAL_RECORD_ID` INTEGER NOT NULL AUTO_INCREMENT,
	`FUNCTTION_CD` VARCHAR(3) 	 NULL,
	`CUST_NO` VARCHAR(10) 	 NULL,
	`CUST_ACCOUNT_GRP` VARCHAR(4) 	 NULL,
	`NAME_1` VARCHAR(35) 	 NULL,
	`NAME_2` VARCHAR(35) 	 NULL,
	`NAME_3` VARCHAR(35) 	 NULL,
	`NAME_4` VARCHAR(35) 	 NULL,
	`CITY` VARCHAR(35) 	 NULL,
	`POSTAL_CD` VARCHAR(10) 	 NULL,
	`COUNTY_CD` VARCHAR(3) 	 NULL,
	`SORT_FIELD` VARCHAR(10) 	 NULL,
	`SOA_CORRELATION_ID` VARCHAR(256) NOT NULL,
	`GENERAL_RECORD_STATUS` VARCHAR(1) NOT NULL,
	`INSERT_DT` DATETIME NULL,
	`LAST_UPDATE_DT` DATETIME 	 NULL,
	`codesociete` VARCHAR(4) 	 NULL,
	`statut` TINYINT(3) DEFAULT 0,
	`dateintegration` DATETIME 	 NULL,
	`idrejet` INT UNSIGNED 	 NULL,
	CONSTRAINT `PK_CUST_GENERAL_DATA` PRIMARY KEY (`GENERAL_RECORD_ID` ASC),
	CONSTRAINT `FK_Rejet_Client` FOREIGN KEY (`idrejet`) REFERENCES rejet(`id`)
) ENGINE=InnoDB;

CREATE TABLE `ieclient_specific`
(
	`SPECIFIC_RECORD_ID` INTEGER NOT NULL AUTO_INCREMENT,
	`STREET` VARCHAR(60) 	 NULL,
	`HOUSE_NO` VARCHAR(20) 	 NULL,
	`GENERAL_RECORD_ID` INTEGER 	 NULL,
	CONSTRAINT `PK_CUST_SPECIFIC_DATA` PRIMARY KEY (`SPECIFIC_RECORD_ID` ASC)
) ENGINE=InnoDB;

CREATE TABLE `ieclient_partenaire`
(
	`PARTNER_RECORD_ID` INT NOT NULL AUTO_INCREMENT,
	`FUNCTION_CD` VARCHAR(3) 	 NULL,
	`PARTNER_FUNCTION_CD` VARCHAR(2) 	 NULL,
	`BIZ_PARTNER_CUST_NO` VARCHAR(10) 	 NULL,
	`GENERAL_RECORD_ID` INTEGER 	 NULL,
	CONSTRAINT `PK_CUST_PARTNER` PRIMARY KEY (`PARTNER_RECORD_ID` ASC)
) ENGINE=InnoDB;

CREATE TABLE `ieclient_vente`
(
	`SALE_RECORD_ID` INTEGER NOT NULL AUTO_INCREMENT,
	`FUNCTION_CD` VARCHAR(3) 	 NULL,
	`SALES_AREA_CUST_ORDER_BLOCK` VARCHAR(2) 	 NULL,
	`GENERAL_RECORD_ID` INTEGER 	 NULL,
	CONSTRAINT `PK_CUST_SALE_DATA` PRIMARY KEY (`SALE_RECORD_ID` ASC)
) ENGINE=InnoDB;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE `ieclient_partenaire` 
 ADD INDEX `IXFK_CUST_PARTNER_CUST_GENERAL` (`GENERAL_RECORD_ID` ASC)
;

ALTER TABLE `ieclient_vente` 
 ADD INDEX `IXFK_CUST_SALE_DATA_CUST_GENERAL_DATA` (`GENERAL_RECORD_ID` ASC)
;

ALTER TABLE `ieclient_specific` 
 ADD INDEX `IXFK_CUST_SPECIFIC_DATA_CUST_GENERAL_DATA` (`GENERAL_RECORD_ID` ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE `ieclient_partenaire` 
 ADD CONSTRAINT `FK_CUST_PARTNER_CUST_GENERAL`
	FOREIGN KEY (`GENERAL_RECORD_ID`) REFERENCES `ieclient_general` (`GENERAL_RECORD_ID`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `ieclient_vente` 
 ADD CONSTRAINT `FK_CUST_SALE_DATA_CUST_GENERAL_DATA`
	FOREIGN KEY (`GENERAL_RECORD_ID`) REFERENCES `ieclient_general` (`GENERAL_RECORD_ID`) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE `ieclient_specific` 
 ADD CONSTRAINT `FK_CUST_SPECIFIC_DATA_CUST_GENERAL_DATA`
	FOREIGN KEY (`GENERAL_RECORD_ID`) REFERENCES `ieclient_general` (`GENERAL_RECORD_ID`) ON DELETE No Action ON UPDATE No Action
;

SET FOREIGN_KEY_CHECKS=1 
;

INSERT INTO ref_typeclient (id,libelle) VALUES (2, 'clientCodex');
INSERT INTO ref_typesite (id,libelle) VALUES (2, 'codex');

/* Sauvegarde des données Quartzi dans des colonnes dédiées */
alter table client add codequartzi varchar(30);
alter table client add libellequartzi varchar(50);
update client set codequartzi=code;
update client set libellequartzi=libelle;
