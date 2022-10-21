CREATE TABLE ieclientsite_recodification (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeclient VARCHAR(30) NULL,
  new_idoraclesite INTEGER UNSIGNED NULL,
  new_codesite VARCHAR(40) NULL,
  new_libellesite VARCHAR(240) NULL,
  old_idoraclesite INTEGER UNSIGNED NULL,
  old_codesite VARCHAR(40) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ieclientsite_recodification_I1(idrejet),
  FOREIGN KEY ieclientsite_recodification_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ieclient_recodification (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  new_idoracleclient INTEGER UNSIGNED NULL,
  new_codeclient VARCHAR(30) NULL,
  new_libelleclient VARCHAR(50) NULL,
  old_idoracleclient INTEGER UNSIGNED NULL,
  old_codeclient VARCHAR(30) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ieclient_recodification_I1(idrejet),
  FOREIGN KEY ieclient_recodification_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;