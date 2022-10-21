/* BugZilla #9385 - Interface absences */

set FOREIGN_KEY_CHECKS=0;
drop table IF exists `ieabsence_codex` cascade;


CREATE TABLE `ieabsence_codex`
(
	`ABSENCE_OUT_RECORD_ID` INT NOT NULL AUTO_INCREMENT,
	`COMPANY_CD` VARCHAR(4) 	 NULL,
	`EMPLOYEE_NO` NUMERIC(10,0) 	 NULL,
	`ABSENCE_CATEGORY` VARCHAR(4) 	 NULL,
	`START_DATE` VARCHAR(10) 	 NULL,
	`END_DATE` VARCHAR(10) 	 NULL,
	`AM_FLAG` VARCHAR(1) 	 NULL,
	`PM_FLAG` VARCHAR(1) 	 NULL,
	`TOTAL_HOURS` DECIMAL(7,0) 	 NULL,
	`ACTION_FLAG` VARCHAR(1) 	 NULL,
	`SOA_CORRELATION_ID` VARCHAR(256) NOT NULL,
	`ABSENCE_OUT_RECORD_STATUS` VARCHAR(1) NOT NULL,
	`INSERT_DT` DATETIME NULL,
	`LAST_UPDATE_DT` DATETIME 	 NULL,
	`statut` TINYINT(3) DEFAULT 0,
	`dateintegration` DATETIME 	 NULL,
	`idrejet` INT(10) 	 NULL,		
	CONSTRAINT `PK_ABSENCE_OUT` PRIMARY KEY (`ABSENCE_OUT_RECORD_ID` ASC)
)
;

-- Table references absences codex // Necessaire pour connaitre le n° affaire lié à la catégorie absence
DROP TABLE IF EXISTS `refabsence_codex`;
CREATE TABLE `refabsence_codex` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`categorie_absence` VARCHAR(4) 	 NULL,
	`famille_absence` VARCHAR(3) 	 NULL,
	`ordre_absence` VARCHAR(2) 	 NULL,
  PRIMARY KEY  (`id`),
  KEY `refabsence_I3` (`categorie_absence`)
) ;
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0C08','840','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0C09','840','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0C10','840','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0C11','840','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0934','834','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0935','834','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0941','841','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0941','841','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0U00','838','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0T00','832','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0T02','832','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0W01','833','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0W00','833','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0V01','839','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0V00','839','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0V02','839','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0942','839','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0V05','839','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0V03','839','03');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0V04','839','03');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0913','838','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0928','828','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0930','830','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0944','844','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0924','824','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0928','828','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0931','828','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0X00','828','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0945','845','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0943','843','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0946','846','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0948','848','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0949','849','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0936','834','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0937','834','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0947','847','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0947','847','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0923','823','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0925','823','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0X01','849','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0X02','849','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0X03','828','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0X04','828','01');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0X05','849','00');
INSERT into refabsence_codex(categorie_absence,famille_absence,ordre_absence) values('0X06','828','01');



