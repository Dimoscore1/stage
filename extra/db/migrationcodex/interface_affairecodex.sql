/* BugZilla #9380 - Création de la nouvelle table IE pour les Affaires CODEX - JEDA */
set FOREIGN_KEY_CHECKS=0;

drop table IF exists `ieaffaire_codex` cascade;

create table `ieaffaire_codex`
(
	`ID` INT not NULL AUTO_INCREMENT,
	`WBS_ID` VARCHAR(24) 	 NULL,
	`WBS_BASIC_START_DT` VARCHAR(10) 	 NULL,
	`WBS_BASIC_END_DT` VARCHAR(10) 	 NULL,
	`RECORD_CREATION_DT` VARCHAR(10) 	 NULL,
	`OSMOSE_CD` NUMERIC(9,0) 	 NULL,
	`COMPANY_CD` VARCHAR(4) 	 NULL,
	`COMPANY_DESC` VARCHAR(25) 	 NULL,
	`BU_CD` VARCHAR(6) 	 NULL,
	`BU_ROC_CD` VARCHAR(10) 	 NULL,
	`BU_DESC` VARCHAR(40) 	 NULL,
	`BU_MANAGER` VARCHAR(20) 	 NULL,
	`ANALYTICAL_UNIT` VARCHAR(10) 	 NULL,
	`PROJECT_ID` NUMERIC(8,0) 	 NULL,
	`PROJECT_DESC` VARCHAR(40) 	 NULL,
	`PROJECT_SHORT_DESC` VARCHAR(20) 	 NULL,
	`PROJECT_LONG_DESC` VARCHAR(40) 	 NULL,
	`PROJECT_COMMENT` VARCHAR(250) 	 NULL,
	`LEGAL_DOC` VARCHAR(250) 	 NULL,
	`PROJECT_TYPE` VARCHAR(2) 	 NULL,
	`POSITION` VARCHAR(5) 	 NULL,
	`PROJECT_HIERARCHY_LEVEL` VARCHAR(1) 	 NULL,
	`PROJECT_MANAGER_ID` NUMERIC(8,0) 	 NULL,
	`PROJECT_MANAGER_NAME` VARCHAR(25) 	 NULL,
	`LINKED_QUOTATION_PROJECT_ID` VARCHAR(24) 	 NULL,
	`LINKED_QUOTATION_POSITION` VARCHAR(5) 	 NULL,
	`QUOTE_PRICE` NUMERIC(15,2) 	 NULL,
	`CUSTOMER_ID` VARCHAR(10) 	 NULL,
	`CUSTOMER_NAME` VARCHAR(30) 	 NULL,
	`CUSTOMER_SITE_ID` VARCHAR(10) 	 NULL,
	`INSEE_CD` VARCHAR(5) 	 NULL,
	`COUNTRY_CD` VARCHAR(3) 	 NULL,
	`EXTERNAL_REF` VARCHAR(20) 	 NULL,
	`SEGMENT_BUS_AXIS` VARCHAR(7) 	 NULL,
	`SEGMENT_BUS_PROC_AXIS` VARCHAR(7) 	 NULL,
	`GROUP_CD` VARCHAR(10) 	 NULL,
	`GROUP_DESC` VARCHAR(40) 	 NULL,
	`DIV_GROUP_CD` VARCHAR(10) 	 NULL,
	`DIV_GROUP_DESC` VARCHAR(40) 	 NULL,
	`POLE_GROUP_CD` VARCHAR(10) 	 NULL,
	`POLE_GROUP_DESC` VARCHAR(40) 	 NULL,
	`BRAND_GROUP_CD` VARCHAR(10) 	 NULL,
	`BRAND_GROUP_DESC` VARCHAR(40) 	 NULL,
	`ACCOUNT_ASSIGN_FLAG` VARCHAR(1) 	 NULL,
	`BILL_ELEMENT_FLAG` VARCHAR(1) 	 NULL,
	`OBJECT_NUM` VARCHAR(22) 	 NULL,
	`P2_CHANGE_DT` VARCHAR(10) 	 NULL,
	`P3_OR_P6_CHANGE_DT` VARCHAR(10) 	 NULL,
	`P4_CHANGE_DT` VARCHAR(10) 	 NULL,
	`TECH_1` VARCHAR(30) 	 NULL,
	`TECH_2` VARCHAR(30) 	 NULL,
	`EXTERNAL_ID` VARCHAR(20) 	 NULL,
	`USER_NAME` VARCHAR(12) 	 NULL,
	`ATTRIBUTE_1_NAME` VARCHAR(40) 	 NULL,
	`ATTRIBUTE_1_VALUE` VARCHAR(10) 	 NULL,
	`ATTRIBUTE_2_NAME` VARCHAR(40) 	 NULL,
	`ATTRIBUTE_2_VALUE` VARCHAR(10) 	 NULL,
	`ATTRIBUTE_3_NAME` VARCHAR(40) 	 NULL,
	`ATTRIBUTE_3_VALUE` VARCHAR(10) 	 NULL,
	`ATTRIBUTE_4_NAME` VARCHAR(40) 	 NULL,
	`ATTRIBUTE_4_VALUE` VARCHAR(10) 	 NULL,
	`SENT_TO_SOA_DT` VARCHAR(20) 	 NULL,
	`PROJECT_MANAGER_EMAIL` VARCHAR(512) 	 NULL,
	`PROJECT_MANAGER_PHONE` VARCHAR(40) 	 NULL,
	`APPLICANT_EMAIL` VARCHAR(512) 	 NULL,
	`APPLICANT_PHONE` VARCHAR(40) 	 NULL,
	`SOA_CORRELATION_ID` VARCHAR(256),
	`INSERT_DT` DATETIME,
	`PROJECT_RECORD_STATUS` VARCHAR(1),
	`LAST_UPDATE_DT` DATETIME 	 NULL,
	`dateintegration` DATETIME 	 NULL,
	`statut` TINYINT(3) DEFAULT 0,
	`idrejet` INT UNSIGNED 	 NULL,
	CONSTRAINT `PK_PROJECT` PRIMARY KEY (`ID` ASC),
	CONSTRAINT `FK_Rejet_AffaireCodex` FOREIGN KEY (`idrejet`) REFERENCES rejet(`id`)
) ENGINE=InnoDB;

set FOREIGN_KEY_CHECKS=1;

/* BugZilla #9380 - IEAffaireCodex - Evol JEDA */
alter table affaire add typeaffairecodex varchar(2);