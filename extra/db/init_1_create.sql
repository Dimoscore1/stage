-- INIT
DROP DATABASE IF EXISTS gestioncommande;
CREATE DATABASE gestioncommande;
USE gestioncommande;
GRANT ALL PRIVILEGES ON gestioncommande.* TO 'gestioncde'@'%' IDENTIFIED BY 'gestioncde';

-- DROP
DROP TABLE IF EXISTS image;
DROP TABLE IF EXISTS articlelignebonlivraison;
DROP TABLE IF EXISTS commentairelignebonlivraison;
DROP TABLE IF EXISTS lignebonlivraison;
DROP TABLE IF EXISTS encaissementclient;
DROP TABLE IF EXISTS factureclientligne;
DROP TABLE IF EXISTS resteheure;
DROP TABLE IF EXISTS restemontant;
DROP TABLE IF EXISTS commandefournisseurligne;
DROP TABLE IF EXISTS factureclient;
DROP TABLE IF EXISTS bonlivraison;
DROP TABLE IF EXISTS articleoe;
DROP TABLE IF EXISTS facturefournisseur;
DROP TABLE IF EXISTS familleoe;
DROP TABLE IF EXISTS commandefournisseur;
DROP TABLE IF EXISTS reception;
DROP TABLE IF EXISTS detailbudgetheure;
DROP TABLE IF EXISTS detailbudgetmontant;
DROP TABLE IF EXISTS natureheure;
DROP TABLE IF EXISTS historiquecommande;
DROP TABLE IF EXISTS reste;
DROP TABLE IF EXISTS budget;
DROP TABLE IF EXISTS ordreexecution;
DROP TABLE IF EXISTS commande;
DROP TABLE IF EXISTS pointage;
DROP TABLE IF EXISTS affaire;
DROP TABLE IF EXISTS historiquepersonnel;
DROP TABLE IF EXISTS groupeheure;
DROP TABLE IF EXISTS siteclient;
DROP TABLE IF EXISTS quantiteenstock;
DROP TABLE IF EXISTS sectionhistorique;
DROP TABLE IF EXISTS contratinterimaire;
DROP TABLE IF EXISTS section;
DROP TABLE IF EXISTS rubriquetemps;
DROP TABLE IF EXISTS activite;
DROP TABLE IF EXISTS favoris;
DROP TABLE IF EXISTS transporteur;
DROP TABLE IF EXISTS magasin;
DROP TABLE IF EXISTS categoriepointagehisto;
DROP TABLE IF EXISTS cascaderubrique;
DROP TABLE IF EXISTS situationentreprise;
DROP TABLE IF EXISTS semainetype;
DROP TABLE IF EXISTS typecommande;
DROP TABLE IF EXISTS tauxbudget;
DROP TABLE IF EXISTS utilisateur;
DROP TABLE IF EXISTS semainetypepersonnel;
DROP TABLE IF EXISTS personnel;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS rubriqueaffaire;
DROP TABLE IF EXISTS entreprise;
DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS categoriepointage;
DROP TABLE IF EXISTS famille;
DROP TABLE IF EXISTS societe;
DROP TABLE IF EXISTS profil_role;
DROP TABLE IF EXISTS ietauxbudget;
DROP TABLE IF EXISTS iesortiestock;
DROP TABLE IF EXISTS iesection;
DROP TABLE IF EXISTS iesectiontaux;
DROP TABLE IF EXISTS iesituationentreprise;
DROP TABLE IF EXISTS ieclient;
DROP TABLE IF EXISTS iesemainetype;
DROP TABLE IF EXISTS iesituationsociete;
DROP TABLE IF EXISTS ierubriquetemps;
DROP TABLE IF EXISTS ienatureheure;
DROP TABLE IF EXISTS iepersonnel;
DROP TABLE IF EXISTS iepersonnelhisto;
DROP TABLE IF EXISTS iegroupeheure;
DROP TABLE IF EXISTS iefacturefournisseur;
DROP TABLE IF EXISTS iefacture;
DROP TABLE IF EXISTS iepointage;
DROP TABLE IF EXISTS iequantitestock;
DROP TABLE IF EXISTS ierubriqueaffaire;
DROP TABLE IF EXISTS iecontratinterimaire;
DROP TABLE IF EXISTS ieetudefamilleoe;
DROP TABLE IF EXISTS ieetudearticleoe;
DROP TABLE IF EXISTS iecommandefournisseur;
DROP TABLE IF EXISTS detailjournal;
DROP TABLE IF EXISTS calendrier;
DROP TABLE IF EXISTS iearticle;
DROP TABLE IF EXISTS ieaffaire;
DROP TABLE IF EXISTS iecategoriepointagehisto;
DROP TABLE IF EXISTS iecategoriepointage;
DROP TABLE IF EXISTS iecascaderubrique;
DROP TABLE IF EXISTS detailtypecommande;
DROP TABLE IF EXISTS ref_typecommande;
DROP TABLE IF EXISTS ref_typeclient;
DROP TABLE IF EXISTS ref_typejour;
DROP TABLE IF EXISTS ref_typedate;
DROP TABLE IF EXISTS ref_typebl;
DROP TABLE IF EXISTS ref_identificationra;
DROP TABLE IF EXISTS ref_identificationgh;
DROP TABLE IF EXISTS ref_typeaffaire;
DROP TABLE IF EXISTS ref_operateur;
DROP TABLE IF EXISTS ref_typelignebl;
DROP TABLE IF EXISTS ref_unitepointage;
DROP TABLE IF EXISTS ref_typetauxbudget;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS rejet;
DROP TABLE IF EXISTS ref_typesite;
DROP TABLE IF EXISTS ref_typenatureheure;
DROP TABLE IF EXISTS ref_typelignefactureclient;
DROP TABLE IF EXISTS ref_typepointage;
DROP TABLE IF EXISTS ref_typepersonnel;
DROP TABLE IF EXISTS ref_etatvequartzi;
DROP TABLE IF EXISTS isfactureligne;
DROP TABLE IF EXISTS isfactureentete;
DROP TABLE IF EXISTS ispointage;
DROP TABLE IF EXISTS isarticle;
DROP TABLE IF EXISTS isaffaire;
DROP TABLE IF EXISTS iscommande;
DROP TABLE IF EXISTS isbudgetaffaire;
DROP TABLE IF EXISTS isreservationstock;
DROP TABLE IF EXISTS ref_etatcommande;
DROP TABLE IF EXISTS ref_etatbl;
DROP TABLE IF EXISTS ref_etatpointagequartzi;
DROP TABLE IF EXISTS ref_etatpointage;
DROP TABLE IF EXISTS ref_etatarticleoe;
DROP TABLE IF EXISTS journal;
DROP TABLE IF EXISTS isve;
DROP TABLE IF EXISTS propriete;
DROP TABLE IF EXISTS profil;
DROP TABLE IF EXISTS coefficient;

-- CREATE
CREATE TABLE image (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  image BLOB NOT NULL,
  mimetype VARCHAR(30),
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE profil (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  code VARCHAR(10) NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE propriete (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  keyname VARCHAR(60) NULL,
  propriete TEXT NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE isve (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  codefamille VARCHAR(10) NULL,
  numeroordre VARCHAR(5) NULL,
  exercice INTEGER UNSIGNED NULL,
  mois INTEGER UNSIGNED NULL,
  dateterminaison DATE NULL,
  positionaterme VARCHAR(5) NULL,
  dureeprev VARCHAR(5) NULL,
  codenatureheure VARCHAR(10) NULL,
  nombreheures INT NULL,
  taux DECIMAL(20,5) NULL,
  heuresvalorisees INT NULL,
  coderubriqueaffaire VARCHAR(10) NULL,
  montant INT NULL,
  codeclasse VARCHAR(5) NULL,
  dateecriture DATETIME NULL,
  typeflux INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE journal (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idutilisateur INTEGER UNSIGNED NULL,
  date DATETIME NULL,
  typeaction VARCHAR(10) NULL,
  nomtable VARCHAR(255) NULL,
  idtable INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_etatarticleoe (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_etatpointage (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_etatpointagequartzi (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_etatbl (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_etatcommande (
  id INTEGER UNSIGNED NOT NULL,
  idref_etatcommandeparent INTEGER UNSIGNED NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id),
  INDEX ref_etatcommande_I1(idref_etatcommandeparent),
  FOREIGN KEY ref_etatcommande_FK1(idref_etatcommandeparent)
    REFERENCES ref_etatcommande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE isreservationstock (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codereservation VARCHAR(20) NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  affaire VARCHAR(10) NULL,
  emetteur VARCHAR(100) NULL,
  fabricant VARCHAR(30) NULL,
  article VARCHAR(40) NULL,
  description VARCHAR(240) NULL,
  magasin VARCHAR(10) NULL,
  udm VARCHAR(10) NULL,
  quantite DECIMAL(20,5) NULL,
  prixunitaire DECIMAL(20,5) NULL,
  datelivraison DATE NULL,
  datereception DATETIME NULL,
  numeroordre INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE isbudgetaffaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  codefamille VARCHAR(10) NULL,
  ordre VARCHAR(5) NULL,
  tache VARCHAR(5) NULL,
  nocomplement SMALLINT UNSIGNED NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  exercice INTEGER UNSIGNED NULL,
  mois INTEGER UNSIGNED NULL,
  tauxfraisfi DECIMAL(20,5) NULL,
  codenatureheure VARCHAR(10) NULL,
  nombreheures DECIMAL(20,5) NULL,
  taux DECIMAL(20,5) NULL,
  heuresvalorisees DECIMAL(20,5) NULL,
  coderubriqueaffaire VARCHAR(10) NULL,
  montant DECIMAL(20,5) NULL,
  supprimerbudget INTEGER UNSIGNED NULL,
  codeclasse VARCHAR(5) NULL,
  dateecriture DATETIME NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

--CREATE TABLE iscommande (
--  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
--  codesociete VARCHAR(3) NULL,
--  codeentreprise VARCHAR(3) NULL,
--  codeclient VARCHAR(30) NULL,
--  numerocommande VARCHAR(15) NULL,
--  libelle VARCHAR(40) NULL,
--  typecommande VARCHAR(10) NULL,
--  montant DECIMAL(20,5) NULL,
--  datelivraison DATE NULL,
--  datecommande DATE NULL,
--  tempsallouera DECIMAL(20,5) NULL,
--  tempsallouebe DECIMAL(20,5) NULL,
--  affaire VARCHAR(10) NULL,
--  dateclient DATE NULL,
--  nombrepavillons INTEGER UNSIGNED NULL,
--  dateecriture DATETIME NULL,
--  PRIMARY KEY(id)
--)
--ENGINE=InnoDB;

CREATE TABLE isaffaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  codefamille VARCHAR(10) NULL,
  ordre VARCHAR(5) NULL,
  tache VARCHAR(5) NULL,
  libellelong VARCHAR(40) NULL,
  dateecriture DATETIME NULL,
  codeclient VARCHAR(30) NULL,
  codesite VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

--CREATE TABLE isarticle (
--  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
--  codesociete VARCHAR(3) NULL,
--  codeentreprise VARCHAR(3) NULL,
--  fabricant VARCHAR(40) NULL,
--  reference VARCHAR(40) NULL,
--  description VARCHAR(240) NULL,
--  udm VARCHAR(25) NULL,
--  prixunitaire DECIMAL(20,5) NULL,
--  poids DECIMAL(20,5) NULL,
--  stocke CHAR(1) NULL,
--  fournisseur VARCHAR(30) NULL,
--  datesuppression DATE NULL,
--  dateecriture DATETIME NULL,
--  PRIMARY KEY(id)
--)
--ENGINE=InnoDB;

CREATE TABLE ispointage (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codesociete VARCHAR(3) NULL,
  codeentrepriseaffaire VARCHAR(3) NULL,
  noaffaire VARCHAR(10) NULL,
  tache VARCHAR(5) NULL,
  codeentreprisematricule VARCHAR(3) NULL,
  matricule VARCHAR(10) NULL,
  coderubriqueaffaire VARCHAR(10) NULL,
  datepointage DATE NULL,
  exercice INTEGER UNSIGNED NULL,
  mois INTEGER UNSIGNED NULL,
  typepersonnel INTEGER UNSIGNED NULL,
  nosemaine INTEGER UNSIGNED NULL,
  coderubriqueprime VARCHAR(15) NULL,
  libellerubriqueprime VARCHAR(20) NULL,
  montant DECIMAL(20,5) NULL,
  indicationcharge INTEGER UNSIGNED NULL,
  coderubriquetemps VARCHAR(10) NULL,
  codenatureheure VARCHAR(10) NULL,
  unitepointage INTEGER UNSIGNED NULL,
  nbunitepointage DECIMAL(20,5) NULL,
  codeclasse VARCHAR(5) NULL,
  dateecriture DATETIME NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE isfactureentete (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  idbl INTEGER UNSIGNED NULL,
  datebl DATE NULL,
  idoracleclient INTEGER UNSIGNED NULL,
  idoraclesite INTEGER UNSIGNED NULL,
  affaire VARCHAR(10) NULL,
  typefacture CHAR(1) NULL,
  referenceclient VARCHAR(60) NULL,
  description VARCHAR(80) NULL,
  totalht DECIMAL(20,5) NULL,
  devise VARCHAR(3) NULL,
  tva varchar(10) NULL,
  compte varchar(20) NULL,
  user varchar(20) NULL,
  dateecriture DATETIME NULL,
  supprime INTEGER NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE isfactureligne (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  identete INTEGER UNSIGNED NULL,
  idligne INTEGER UNSIGNED NULL,
  numeroligne INTEGER UNSIGNED NULL,
  typedeligne TINYINT UNSIGNED NULL,
  libelle VARCHAR(240) NULL,
  quantitepourcentage DECIMAL(20,5) NULL,
  prixunitaire DECIMAL(20,5) NULL,
  montant DECIMAL(20,5) NULL,
  unite VARCHAR(25) NULL,
  tva varchar(10) NULL,
  compte varchar(20) NULL,
  dateecriture DATETIME NULL,
  supprime INTEGER NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_etatvequartzi (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typepersonnel (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typepointage (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typelignefactureclient (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typenatureheure (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typesite (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE rejet (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(100) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE role (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  code VARCHAR(60) NULL,
  libelle VARCHAR(100) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typetauxbudget (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_unitepointage (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typelignebl (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_operateur (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typeaffaire (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_identificationgh (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_identificationra (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typebl (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typedate (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typejour (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typeclient (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE ref_typecommande (
  id INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(40) NOT NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

-- ------------------------------------------------------------
-- lié à typecommande
-- spéc > lot 1
-- interface > non
-- ------------------------------------------------------------

CREATE TABLE detailtypecommande (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idutilisateur INTEGER UNSIGNED NULL,
  tempsalloue DECIMAL(20,5) NULL,
  trancheactivee CHAR(1) NULL,
  plafondactive CHAR(1) NULL,
  valeurplafond DECIMAL(20,5) NULL,
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

CREATE TABLE iecascaderubrique (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  coderubriquesource VARCHAR(10) NULL,
  coderubriquecible VARCHAR(10) NULL,
  operateur VARCHAR(1) NULL,
  typefrais VARCHAR(10) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iecascaderubrique_I1(idrejet),
  FOREIGN KEY iecascaderubrique_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iecategoriepointage (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(100) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iecategoriepointage_I1(idrejet),
  FOREIGN KEY iecategoriepointage_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iecategoriepointagehisto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  codecategoriepointage VARCHAR(10) NULL,
  annee VARCHAR(4) NULL,
  mois VARCHAR(2) NULL,
  horairerefjour DECIMAL(20,5) NULL,
  horairemaxjour DECIMAL(20,5) NULL,
  horairerefhebdo DECIMAL(20,5) NULL,
  horairemaxhebdo DECIMAL(20,5) NULL,
  nbhjourabsence DECIMAL(20,5) NULL,
  nbjourmaxjour DECIMAL(20,5) NULL,
  nbjourmaxsemaine DECIMAL(20,5) NULL,
  nbpdepmaxjour DECIMAL(20,5) NULL,
  unitepointage VARCHAR(10) NULL,
  active VARCHAR(3) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iecategoriepointagehisto_I1(idrejet),
  FOREIGN KEY iecategoriepointagehisto_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ieaffaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  codefamille VARCHAR(3) NULL,
  ordre VARCHAR(2) NULL,
  tache VARCHAR(5) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  codeposition VARCHAR(2) NULL,
  dateouverture DATE NULL,
  codeclient VARCHAR(30) NULL,
  codesite VARCHAR(40) NULL,
  typeaffaire TINYINT UNSIGNED NULL,
  matricule VARCHAR(10) NULL,
  idsource BIGINT NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  typeflux TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ieaffaire_I1(idrejet),
  INDEX ieaffaire_I2(idsource),
  FOREIGN KEY ieaffaire_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iearticle (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  devise VARCHAR(20) NULL,
  fabricant VARCHAR(40) NULL,
  reference VARCHAR(40) NULL,
  description VARCHAR(240) NULL,
  udm VARCHAR(25) NULL,
  libelleudm VARCHAR(20) NULL,
  prixunitaire DECIMAL(20,5) NULL,
  stocke CHAR(1) NULL,
  unitepoids VARCHAR(25) NULL,
  libelleunitepoids VARCHAR(20) NULL,
  poids DECIMAL(20,5) NULL,
  datesuppression DATE NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iearticle_I1(idrejet),
  INDEX iearticle_I2(codesociete, dernieremodif),
  FOREIGN KEY iearticle_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE calendrier (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idref_typedate INTEGER UNSIGNED NOT NULL,
  datedebut DATE NULL,
  datefin DATE NULL,
  semaine INTEGER UNSIGNED NULL,
  mois INTEGER UNSIGNED NULL,
  annee INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX calendrier_I1(idref_typedate),
  FOREIGN KEY calendrier_FK1(idref_typedate)
    REFERENCES ref_typedate(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE detailjournal (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idjournal INTEGER UNSIGNED NOT NULL,
  colonnemodifiee VARCHAR(255) NULL,
  anciennevaleur VARCHAR(255) NULL,
  nouvellevaleur VARCHAR(255) NULL,
  PRIMARY KEY(id),
  INDEX detailjournal_I1(idjournal),
  FOREIGN KEY detailjournal_FK1(idjournal)
    REFERENCES journal(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iecommandefournisseur (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  nocommande VARCHAR(50) NULL,
  exercice VARCHAR(4) NULL,
  mois VARCHAR(2) NULL,
  affaire VARCHAR(15) NULL,
  libelle VARCHAR(200) NULL,
  comptecomptable VARCHAR(10) NULL,
  montantht DECIMAL(20,5) NULL,
  codetiers varchar(30) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iecommandefournisseur_I1(idrejet),
  FOREIGN KEY iecommandefournisseur_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ieetudearticleoe (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  numeroligne INTEGER NULL,
  codesociete VARCHAR(3) NULL,
  codefamille VARCHAR(10) NULL,
  numerooe VARCHAR(10) NULL,
  codefabricant VARCHAR(10) NULL,
  codearticle VARCHAR(40) NULL,
  quantite DECIMAL(20,5) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  numerocommande VARCHAR(15) NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ieetudearticleoe_I1(idrejet),
  FOREIGN KEY ieetudearticleoe_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ieetudefamilleoe (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  numeroligne INTEGER NULL,
  codesociete VARCHAR(3) NULL,
  codeclient VARCHAR(30) NULL,
  numerocommande VARCHAR(15) NULL,
  codefamille VARCHAR(10) NULL,
  numerooe VARCHAR(10) NULL,
  codemagasin VARCHAR(10) NULL,
  nombreheure DECIMAL(20,5) NULL,
  prixvente DECIMAL(20,5) NULL,
  dateetude DATE NULL,
  dateproduction DATE NULL,
  datetransfert DATE NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ieetudefamilleoe_I1(idrejet),
  FOREIGN KEY ieetude_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iecontratinterimaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  matricule VARCHAR(10) NULL,
  numerocontrat VARCHAR(20) NULL,
  datedebut DATE NULL,
  datefin DATE NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iecontratinterimaire_I1(idrejet),
  FOREIGN KEY iecontratinterimaire_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ierubriqueaffaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  ordreedition INTEGER UNSIGNED NULL,
  estcalculee CHAR(1) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ierubriqueaffaire_I1(idrejet),
  FOREIGN KEY ierubriqueaffaire_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iequantitestock (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  fabricant VARCHAR(10) NULL,
  article VARCHAR(40) NULL,
  magasin VARCHAR(10) NULL,
  quantite DECIMAL(20,5) NULL,
  dateintegration DATETIME NULL,
  datereception DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iequantitestock_I1(idrejet),
  FOREIGN KEY iequantitestock_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iepointage (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  matricule VARCHAR(10) NULL,
  codeentreprise VARCHAR(3) NULL,
  affaire VARCHAR(10) NULL,
  datepointage DATE NULL,
  rubriquetemps VARCHAR(10) NULL,
  unitepointage VARCHAR(20) NULL,
  nbunitepointage DECIMAL(20,5) NULL,
  dateintegration DATETIME NULL,
  datereception DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ieabsencegestion_I1(idrejet),
  FOREIGN KEY ieabsencegestion_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iefacture (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  idfacture INTEGER UNSIGNED NULL,
  numerofacture VARCHAR(20) NULL,
  datefacture DATE NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iefacture_I1(idrejet),
  FOREIGN KEY iefacture_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iefacturefournisseur (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  nocommande VARCHAR(50) NULL,
  exercice VARCHAR(4) NULL,
  mois VARCHAR(2) NULL,
  affaire VARCHAR(15) NULL,
  nofacture VARCHAR(50) NULL,
  datefacture DATE NULL,
  libelle VARCHAR(200) NULL,
  comptecomptable VARCHAR(10) NULL,
  montantht DECIMAL(20,5) NULL,
  codetiers VARCHAR(30) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iefacturefournisseur_I1(idrejet),
  FOREIGN KEY iefacturefournisseur_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iegroupeheure (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  codesection VARCHAR(10) NULL,
  typegroupeheure TINYINT UNSIGNED NULL,
  ordreedition INTEGER UNSIGNED NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iegroupeheure_I1(idrejet),
  FOREIGN KEY iegroupeheure_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iepersonnelhisto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  matricule VARCHAR(10) NULL,
  mois VARCHAR(2) NULL,
  annee VARCHAR(4) NULL,
  section VARCHAR(10) NULL,
  groupeheure VARCHAR(10) NULL,
  categoriepointage VARCHAR(10) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iepersonnelhisto_I1(idrejet),
  FOREIGN KEY iepersonnelhisto_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iepersonnel (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  matricule VARCHAR(10) NULL,
  nom VARCHAR(40) NULL,
  prenom VARCHAR(20) NULL,
  dateentree DATE NULL,
  datesortie DATE NULL,
  typepersonnel VARCHAR(40) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iepersonnel_I1(idrejet),
  FOREIGN KEY iepersonnel_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ienatureheure (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  codegroupeheure VARCHAR(10) NULL,
  typenatureheure INTEGER UNSIGNED NULL,
  principale VARCHAR(10) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ienatureheure_I1(idrejet),
  FOREIGN KEY ienatureheure_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ierubriquetemps (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  rubriquecode VARCHAR(15) NULL,
  rubriquelibelle VARCHAR(100) NULL,
  naturecode VARCHAR(15) NULL,
  naturelibelle VARCHAR(100) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ierubriquetemps_I1(idrejet),
  FOREIGN KEY ierubriquetemps_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iesituationsociete (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  anneeencours VARCHAR(10) NULL,
  moisencours VARCHAR(10) NULL,
  exerciceencours VARCHAR(10) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iesituationsociete_I1(idrejet),
  FOREIGN KEY iesituation(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iesemainetype (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  codecategoriepointage VARCHAR(10) NULL,
  jour VARCHAR(10) NULL,
  unite VARCHAR(10) NULL,
  nbunite DECIMAL(20,5) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iesemainetype_I1(idrejet),
  FOREIGN KEY iesemainetype_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ieclient (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  idoracleclient INTEGER UNSIGNED NULL,
  codeclient VARCHAR(30) NULL,
  libelleclient VARCHAR(50) NULL,
  clientactif CHAR(1) NULL,
  idoraclesiteclient INTEGER UNSIGNED NULL,
  codesite VARCHAR(40) NULL,
  libellesite VARCHAR(240) NULL,
  adr1 VARCHAR(240) NULL,
  adr2 VARCHAR(240) NULL,
  adr3 VARCHAR(240) NULL,
  adr4 VARCHAR(240) NULL,
  codepostal VARCHAR(60) NULL,
  ville VARCHAR(60) NULL,
  pays VARCHAR(60) NULL,
  principal CHAR(1) NULL,
  siteclientactif CHAR(1) NULL,
  centretravaux CHAR(1) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ieclient_I1(idrejet),
  FOREIGN KEY iesiteclient_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iesituationentreprise (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  annee VARCHAR(10) NULL,
  mois VARCHAR(10) NULL,
  statutve VARCHAR(20) NULL,
  statutpointage VARCHAR(20) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iesituationentreprise_I1(idrejet),
  FOREIGN KEY iesituationentreprise_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iesectiontaux (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  codesection VARCHAR(10) NULL,
  taux DECIMAL(20,5) NULL,
  mois VARCHAR(2) NULL,
  annee VARCHAR(4) NULL,
  active CHAR(1) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iesectiontaux_I1(idrejet),
  FOREIGN KEY iesectiontaux(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iesection (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iesection_I1(idrejet),
  FOREIGN KEY iesection_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE iesortiestock (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  affaire VARCHAR(10) NULL,
  fabricant VARCHAR(10) NULL,
  article VARCHAR(40) NULL,
  magasin VARCHAR(10) NULL,
  quantite DECIMAL(20,5) NULL,
  pmp DECIMAL(20,5) NULL,
  datereception DATETIME NULL,
  dateintegration DATE NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX iesortiestock_I1(idrejet),
  FOREIGN KEY iesortiestock_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ietauxbudget (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrejet INTEGER UNSIGNED NULL,
  codesociete VARCHAR(3) NULL,
  codeentreprise VARCHAR(3) NULL,
  code VARCHAR(10) NULL,
  annee VARCHAR(4) NULL,
  mois VARCHAR(2) NULL,
  taux DECIMAL(20,5) NULL,
  datereception DATETIME NULL,
  dateintegration DATETIME NULL,
  statut TINYINT UNSIGNED NULL,
  dernieremodif BIGINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX ietauxbudget_I1(idrejet),
  FOREIGN KEY idtauxbudget_FK1(idrejet)
    REFERENCES rejet(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE profil_role (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idprofil INTEGER UNSIGNED NOT NULL,
  idrole INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id),
  INDEX profil_role_I1(idrole),
  INDEX profil_role_I2(idprofil),
  FOREIGN KEY profil_role_FK1(idrole)
    REFERENCES role(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY profil_role_FK2(idprofil)
    REFERENCES profil(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE societe (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcalendriermois INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(3) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  gestionbudget CHAR(1) NULL,
  gestionactivite CHAR(1) NULL,
  sousetat CHAR(1) NULL,
  statutanalytique CHAR(1) NULL,
  gestiontypecommande CHAR(1) NULL,
  gestionetude CHAR(1) NULL,
  gestionautomatiquestatutcommande CHAR(1) NULL,
  gestiontempsalloue CHAR(1) NULL,
  gestionremiseoffre CHAR(1) NULL,
  message TEXT NULL,
  gestionchantier CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX societe_I1(idcalendriermois),
  FOREIGN KEY societe_FK1(idcalendriermois)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

-- ------------------------------------------------------------
-- spéc > lot 1
-- interface > non
-- ------------------------------------------------------------

CREATE TABLE famille (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  actif CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX famille_I1(idsociete),
  UNIQUE INDEX famille_U1(idsociete, code),
  FOREIGN KEY famille_FK1(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE categoriepointage (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  PRIMARY KEY(id),
  INDEX categoriepointage_I1(idsociete),
  FOREIGN KEY categoriepointage(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE article (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  fabricant VARCHAR(40) NULL,
  reference VARCHAR(40) NULL,
  description VARCHAR(240) NULL,
  udm VARCHAR(25) NULL,
  codeudm varchar(25) default NULL,
  prixunitaire DECIMAL(20,5) NULL,
  stocke CHAR(1) NULL,
  unitepoids VARCHAR(25) NULL,
  poids DECIMAL(20,5) NULL,
  datesuppression DATE NULL,
  ecotaxe CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX article_I1(idsociete),
  FOREIGN KEY article_FK1(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE entreprise (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  idimage INTEGER UNSIGNED NOT NULL,
  code VARCHAR(3) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  statutreste TINYINT UNSIGNED NULL,
  budgetmanagement CHAR(1) NOT NULL DEFAULT 1,
  statutpointage TINYINT UNSIGNED NULL,
  devise VARCHAR(20) NULL,
  libelleeditionblpredate VARCHAR(100),
  dernieremodif_statutreste DATETIME NULL,
  dernieremodif_statutpointage DATETIME NULL,
  PRIMARY KEY(id),
  INDEX entreprise_I1(idsociete),
  FOREIGN KEY entreprise_FK1(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  INDEX entreprise_I2(idimage),
  FOREIGN KEY entreprise_FK2(idimage)
    REFERENCES image(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE historiqueentreprise (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idcalendrierannee INTEGER UNSIGNED NOT NULL,
  forfaittransport DECIMAL(20,5) NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX historiqueentreprise_I1(identreprise),
  INDEX historiqueentreprise_I2(idcalendrierannee),
  FOREIGN KEY historiqueentreprise_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY historiqueentreprise_FK2(idcalendrierannee)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE rubriqueaffaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idref_identificationra INTEGER UNSIGNED NOT NULL,
  identreprise INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  ordreedition INTEGER UNSIGNED NULL,
  compte VARCHAR(20) NULL,
  afficherdansapplication CHAR(1) NULL,
  estcalculee CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX rubriqueaffaire_I1(identreprise),
  INDEX rubriqueaffaire_I3(idref_identificationra),
  FOREIGN KEY rubriqueaffaire_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY rubriqueaffaire_FK3(idref_identificationra)
    REFERENCES ref_identificationra(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

-- ------------------------------------------------------------
-- spéc > lot 1 (pour les nouveaux clients)
-- interface > non (pour les nouveaux clients)
-- interface > oui (pour les clients) oracle ebs
-- 
-- idclient > null autorisé pour les clients oracle ebs et les nouveaux clients non encore affectés à un client oracle ebs
-- ------------------------------------------------------------

CREATE TABLE client (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idclient INTEGER UNSIGNED NULL,
  idref_typeclient INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  idoracle INTEGER UNSIGNED NULL,
  code VARCHAR(30) NULL,
  libelle VARCHAR(50) NULL,
  actif CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX client_I3(idclient),
  INDEX client_I2(idref_typeclient),
  INDEX client_I1(idsociete),
  FOREIGN KEY client_FK3(idclient)
    REFERENCES client(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY client_FK2(idref_typeclient)
    REFERENCES ref_typeclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY client_FK1(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE personnel (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idref_typepersonnel INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  matricule VARCHAR(10) NULL,
  nom VARCHAR(40) NULL,
  prenom VARCHAR(20) NULL,
  dateentree DATE NULL,
  datesortie DATE NULL,
  PRIMARY KEY(id),
  INDEX personnel_I1(idsociete),
  INDEX personnel_I2(idref_typepersonnel),
  FOREIGN KEY personnel_FK1(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY personnel_FK2(idref_typepersonnel)
    REFERENCES ref_typepersonnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE semainetypepersonnel (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcalendriersemaine INTEGER UNSIGNED NOT NULL,
  idpersonnel INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  nbheurelundi DECIMAL(20,5) NULL,
  nbheuremardi DECIMAL(20,5) NULL,
  nbheuremercredi DECIMAL(20,5) NULL,
  nbheurejeudi DECIMAL(20,5) NULL,
  nbheurevendredi DECIMAL(20,5) NULL,
  nbheuresamedi DECIMAL(20,5) NULL,
  nbheuredimanche DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX semainetypepersonnel_I1(idpersonnel),
  INDEX semainetypepersonnel_I3(idcalendriersemaine),
  FOREIGN KEY semainetypepersonnel_FK1(idpersonnel)
    REFERENCES personnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY semainetypepersonnel_FK3(idcalendriersemaine)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE utilisateur (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idprofil INTEGER UNSIGNED NOT NULL,
  login VARCHAR(20) NULL,
  motdepasse VARCHAR(20) NULL,
  nom VARCHAR(40) NULL,
  prenom VARCHAR(20) NULL,
  derniereconnexion DATETIME NULL,
  note TEXT NULL,
  PRIMARY KEY(id),
  INDEX utilisateur_I1(idprofil),
  INDEX utilisateur_I2(identreprise),
  FOREIGN KEY utilisateur_FK1(idprofil)
    REFERENCES profil(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY utilisateur_FK2(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE tauxbudget (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idref_typetauxbudget INTEGER UNSIGNED NOT NULL,
  idcalendrier INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  taux DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX tauxbudget_I1(idcalendrier),
  INDEX tauxbudget_I2(identreprise),
  INDEX tauxbudget_I3(idref_typetauxbudget),
  FOREIGN KEY tauxbudget_FK1(idcalendrier)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY tauxbudget_FK2(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY tauxbudget_FK3(idref_typetauxbudget)
    REFERENCES ref_typetauxbudget(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

-- ------------------------------------------------------------
-- spéc > lot 1
-- interface > non
-- ------------------------------------------------------------

CREATE TABLE typecommande (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  iddetailtypecommandebe INTEGER UNSIGNED NOT NULL,
  iddetailtypecommandera INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  nombrepavillonobligatoire CHAR(1) NULL,
  actif CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX typecommande_I1(iddetailtypecommandera),
  INDEX typecommande_I2(iddetailtypecommandebe),
  INDEX typecommande_I3(idsociete),
  UNIQUE INDEX typecommande_U1(idsociete, code),
  FOREIGN KEY typecommande_FK1(iddetailtypecommandera)
    REFERENCES detailtypecommande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY typecommande_FK2(iddetailtypecommandebe)
    REFERENCES detailtypecommande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY typecommande_FK3(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE semainetype (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idcategoriepointage INTEGER UNSIGNED NOT NULL,
  idref_unitepointage INTEGER UNSIGNED NOT NULL,
  idref_typejour INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  nbunite DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX semainetype_I1(idref_typejour),
  INDEX semainetype_I2(idref_unitepointage),
  INDEX semainetype_I3(idcategoriepointage),
  INDEX semainetype_I4(identreprise),
  FOREIGN KEY semainetype_FK1(idref_typejour)
    REFERENCES ref_typejour(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY semainetype_FK2(idref_unitepointage)
    REFERENCES ref_unitepointage(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY semainetype_FK3(idcategoriepointage)
    REFERENCES categoriepointage(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY semainetype_FK4(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE situationentreprise (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcalendriermois INTEGER UNSIGNED NOT NULL,
  idref_etatpointagequartzi INTEGER UNSIGNED NULL,
  idref_etatvequartzi INTEGER UNSIGNED NULL,
  identreprise INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL, 
  dernieremodif_etatpointagequartzi DATETIME NULL,
  dernieremodif_etatvequartzi DATETIME NULL,
  PRIMARY KEY(id),
  INDEX situationentreprise_I1(identreprise),
  INDEX situationentreprise_I2(idcalendriermois),
  INDEX situationentreprise_I3(idref_etatvequartzi),
  INDEX situationentreprise_I4(idref_etatpointagequartzi),
  FOREIGN KEY situationentreprise_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY situarionentreprise_FK2(idcalendriermois)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY situationentreprise_FK3(idref_etatvequartzi)
    REFERENCES ref_etatvequartzi(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY situationentreprise_FK4(idref_etatpointagequartzi)
    REFERENCES ref_etatpointagequartzi(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE cascaderubrique (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idref_typetauxbudget INTEGER UNSIGNED NULL,
  idref_operateur INTEGER UNSIGNED NOT NULL,
  idrubriqueaffairecible INTEGER UNSIGNED NOT NULL,
  idrubriqueaffairesource INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(id),
  INDEX cascaderubrique_I1(idrubriqueaffairesource),
  INDEX cascaderubrique_I2(idrubriqueaffairecible),
  INDEX cascaderubrique_I3(idref_operateur),
  INDEX cascaderubrique_I4(idref_typetauxbudget),
  FOREIGN KEY cascaderubrique_FK1(idrubriqueaffairesource)
    REFERENCES rubriqueaffaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY cascaderubrique_FK2(idrubriqueaffairecible)
    REFERENCES rubriqueaffaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY cascaderubrique_FK3(idref_operateur)
    REFERENCES ref_operateur(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY cascaderubrique_FK4(idref_typetauxbudget)
    REFERENCES ref_typetauxbudget(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE categoriepointagehisto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idcategoriepointage INTEGER UNSIGNED NOT NULL,
  idcalendrier INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  horairerefjour DECIMAL(20,5) NULL,
  horairemaxjour DECIMAL(20,5) NULL,
  horairerefhebdo DECIMAL(20,5) NULL,
  horairemaxhebdo DECIMAL(20,5) NULL,
  nbhjourabsence DECIMAL(20,5) NULL,
  nbjourmaxjour DECIMAL(20,5) NULL,
  nbjourmaxsemaine DECIMAL(20,5) NULL,
  nbpdepmaxjour DECIMAL(20,5) NULL,
  idref_unitepointage INTEGER UNSIGNED NOT NULL,
  active CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX categoriepointagehisto_I1(idcategoriepointage),
  INDEX categoriepointagehisto_I2(idcalendrier),
  INDEX categoriepointagehisto_I3(identreprise),
  INDEX categoriepointagehisto_I4(idref_unitepointage),
  FOREIGN KEY categoriepointagehisto_FK1(idcategoriepointage)
    REFERENCES categoriepointage(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY categoriepointagehisto_FK2(idcalendrier)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY categoriepointagehisto_FK3(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY categoriepointagehisto_FK4(idref_unitepointage)
    REFERENCES ref_unitepointage(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE magasin (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  code VARCHAR(10) NULL,
  libelle VARCHAR(40) NULL,
  pardefaut CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX magasin_I1(idsociete),
  FOREIGN KEY magasin_FK1(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

-- ------------------------------------------------------------
-- spéc > lot 1
-- interface > non
-- ------------------------------------------------------------

CREATE TABLE transporteur (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  actif CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX transporteur_I1(idsociete),
  UNIQUE INDEX transporteur_U1(idsociete, code),
  FOREIGN KEY transporteur_FK1(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE favoris (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idutilisateur INTEGER UNSIGNED NOT NULL,
  libelle VARCHAR(255) NULL,
  complement VARCHAR(255) NULL,
  url TEXT NULL,
  PRIMARY KEY(id),
  INDEX favoris_I1(idutilisateur),
  FOREIGN KEY utilisateur_FK1(idutilisateur)
    REFERENCES utilisateur(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

-- ------------------------------------------------------------
-- spéc > lot 1
-- interface > non
-- ------------------------------------------------------------

CREATE TABLE activite (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  nombrekitobligatoire CHAR(1) NULL,
  actif CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX activite_I1(identreprise),
  UNIQUE INDEX activite_U1(identreprise, code),
  FOREIGN KEY activite_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE rubriquetemps (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(15) NULL,
  libelle VARCHAR(100) NULL,
  codenature VARCHAR(15) NULL,
  libellenature VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX rubriquetemps_I1(identreprise),
  FOREIGN KEY rubriquetemps_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE section (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  idref_identificationgh INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX section_I1(identreprise),
  FOREIGN KEY section_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY section_FK2(idref_identificationgh)
    REFERENCES ref_identificationgh(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION      
)
ENGINE=InnoDB;

CREATE TABLE contratinterimaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idpersonnel INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  contrat VARCHAR(20) NULL,
  datedebut DATE NULL,
  datefin DATE NULL,
  PRIMARY KEY(id),
  INDEX contratinterimaire_I1(idpersonnel),
  FOREIGN KEY contratinterimaire_FK1(idpersonnel)
    REFERENCES personnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE sectionhistorique (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcalendriermois INTEGER UNSIGNED NOT NULL,
  idsection INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  taux DECIMAL(20,5) NULL,
  actif CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX sectionhistorique_I1(idsection),
  INDEX sectionhistorique_I2(idcalendriermois),
  FOREIGN KEY sectionhistorique_FK1(idsection)
    REFERENCES section(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY sectionhistorique_FK2(idcalendriermois)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE quantiteenstock (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idmagasin INTEGER UNSIGNED NOT NULL,
  idarticle INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  quantitestockee DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX quantiteenstock_I1(idarticle),
  INDEX quantiteenstock_I2(idmagasin),
  FOREIGN KEY quantiteenstock_FK1(idarticle)
    REFERENCES article(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY quantiteenstock_FK2(idmagasin)
    REFERENCES magasin(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

-- ------------------------------------------------------------
-- spéc > lot 1 (pour les adresses de livraison)
-- interface > non (pour les adresses de livraison)
-- interface > oui (pour les adresses de facturation)
-- 
-- idtransporteur > null autorisé pour les sites de facturation arrivant par interface non affectés à un transporteur  et pour les sites de livraison non affectés à un transporteur
-- ------------------------------------------------------------

CREATE TABLE siteclient (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsociete INTEGER UNSIGNED NOT NULL,
  idclient INTEGER UNSIGNED NOT NULL,
  idtransporteur INTEGER UNSIGNED NULL,
  idref_typesite INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  idoracle INTEGER UNSIGNED NULL,
  code VARCHAR(40) NULL,
  libelle VARCHAR(240) NULL,
  adr1 VARCHAR(240) NULL,
  adr2 VARCHAR(240) NULL,
  adr3 VARCHAR(240) NULL,
  adr4 VARCHAR(240) NULL,
  codepostal VARCHAR(60) NULL,
  ville VARCHAR(60) NULL,
  pays VARCHAR(60) NULL,
  contact VARCHAR(50) NULL,
  telcontact VARCHAR(50) NULL,
  principal CHAR(1) NULL,
  actif CHAR(1) NULL,  
  centretravaux CHAR(1) NULL,
  informationscomplementaires TEXT NULL,
  PRIMARY KEY(id),
  INDEX siteclient_I1(idclient),
  INDEX siteclient_I2(idsociete),
  INDEX siteclient_I3(idref_typesite),
  INDEX siteclient_I4(idtransporteur),
  INDEX siteclient_U1(idsociete, idclient, code),
  FOREIGN KEY siteclient_FK1(idclient)
    REFERENCES client(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY siteclient_FK2(idsociete)
    REFERENCES societe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY siteclient_FK3(idref_typesite)
    REFERENCES ref_typesite(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY siteclient_FK4(idtransporteur)
    REFERENCES transporteur(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE groupeheure (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idref_identificationgh INTEGER UNSIGNED NULL,
  idsection INTEGER UNSIGNED NOT NULL,
  identreprise INTEGER UNSIGNED NOT NULL,
  idactivite INTEGER UNSIGNED NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  ordreedition INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX groupeheure_I1(identreprise),
  INDEX groupeheure_I2(idactivite),
  INDEX groupeheure_I3(idsection),
  INDEX groupeheure_I5(idref_identificationgh),
  FOREIGN KEY groupeheure_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY groupeheure_FK2(idactivite)
    REFERENCES activite(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY groupeheure_FK3(idsection)
    REFERENCES section(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY groupeheure_FK5(idref_identificationgh)
    REFERENCES ref_identificationgh(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE historiquepersonnel (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idcalendriermois INTEGER UNSIGNED NOT NULL,
  idpersonnel INTEGER UNSIGNED NOT NULL,
  idsection INTEGER UNSIGNED NOT NULL,
  idcategoriepointage INTEGER UNSIGNED NOT NULL,
  idgroupeheure INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX historiquepersonnel_I1(idpersonnel),
  INDEX historiquepersonnel_I2(idcalendriermois),
  INDEX historiquepersonnel_I3(identreprise),
  INDEX historiquepersonnel_I4(idcategoriepointage),
  INDEX historiquepersonnel_I5(idsection),
  INDEX historiquepersonnel_I6(idgroupeheure),
  FOREIGN KEY historiquepersonnel_FK1(idpersonnel)
    REFERENCES personnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY historiquepersonnel_FK2(idcalendriermois)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY historiquepersonnel_FK3(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY historiquepersonnel_FK4(idcategoriepointage)
    REFERENCES categoriepointage(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY historiquepersonnel_FK5(idsection)
    REFERENCES section(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY historiquepersonnel_FK6(idgroupeheure)
    REFERENCES groupeheure(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE affaire (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idpersonnel INTEGER UNSIGNED NOT NULL,
  idclient INTEGER UNSIGNED NULL,
  idsiteclient INTEGER UNSIGNED NULL,
  idref_typeaffaire INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  codefamille VARCHAR(3) NULL,
  ordre VARCHAR(2) NULL,
  tache VARCHAR(5) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  codeposition VARCHAR(2) NULL,
  dateouverture DATE NULL,
  active CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX affaire_I1(identreprise),
  INDEX affaire_I2(idpersonnel),
  INDEX affaire_I3(idclient),
  INDEX affaire_I4(idsiteclient),
  INDEX affaire_I5(idref_typeaffaire),
  FOREIGN KEY affaire_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY affaire_FK2(idpersonnel)
    REFERENCES personnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY affaire_FK3(idclient)
    REFERENCES client(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY affaire_FK4(idsiteclient)
    REFERENCES siteclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY affaire_FK5(idref_typeaffaire)
    REFERENCES ref_typeaffaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE pointage (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrubriquetemps INTEGER UNSIGNED NOT NULL,
  idgroupeheure INTEGER UNSIGNED NULL,
  idcalendriersemaine INTEGER UNSIGNED NOT NULL,
  idpersonnel INTEGER UNSIGNED NOT NULL,
  idaffaire INTEGER UNSIGNED NULL,
  idactivite INTEGER UNSIGNED NULL,
  idref_typepointage INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  date DATE NULL,
  nbheurelundi DECIMAL(20,5) NULL,
  nbheuremardi DECIMAL(20,5) NULL,
  nbheuremercredi DECIMAL(20,5) NULL,
  nbheurejeudi DECIMAL(20,5) NULL,
  nbheurevendredi DECIMAL(20,5) NULL,
  nbheuresamedi DECIMAL(20,5) NULL,
  nbheuredimanche DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX pointage_I1(idaffaire),
  INDEX pointage_I2(idpersonnel),
  INDEX pointage_I3(idgroupeheure),
  INDEX pointage_I4(idactivite),
  INDEX pointage_I5(idref_typepointage),
  INDEX pointage_I6(idcalendriersemaine),
  INDEX pointage_I7(idpersonnel, idcalendriersemaine, idgroupeheure),
  INDEX pointage_I8(idrubriquetemps),
  FOREIGN KEY pointage_FK1(idaffaire)
    REFERENCES affaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY pointage_FK2(idpersonnel)
    REFERENCES personnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY groupeheure_FK3(idgroupeheure)
    REFERENCES groupeheure(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY pointage_FK4(idactivite)
    REFERENCES activite(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY pointage_FK5(idref_typepointage)
    REFERENCES ref_typepointage(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY pointage_FK6(idcalendriersemaine)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY rubriquetemps_FK8(idrubriquetemps)
    REFERENCES rubriquetemps(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE commande (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idref_typecommande INTEGER UNSIGNED NOT NULL,
  idpersonneletudeexecution INTEGER UNSIGNED NULL,
  idtypecommande INTEGER UNSIGNED NULL,
  idactivite INTEGER UNSIGNED NOT NULL,
  idaffaire INTEGER UNSIGNED NULL,
  idclient INTEGER UNSIGNED NOT NULL,
  idcentretravaux INTEGER UNSIGNED NULL,
  idsiteclientfacturation INTEGER UNSIGNED NULL,
  idref_etatcommande INTEGER UNSIGNED NOT NULL,
  idpersonneletudeprix INTEGER UNSIGNED NULL,
  idcalendrier INTEGER UNSIGNED NOT NULL,
  idmoispointagera INTEGER UNSIGNED NULL,
  idmoispointagebe INTEGER UNSIGNED NULL,
  idcommande INTEGER UNSIGNED NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  numero VARCHAR(15) NULL,
  dateenregistrement DATE NULL,
  libelle VARCHAR(40) NULL,
  montant DECIMAL(20,5) NULL,
  referenceclient VARCHAR(40) NULL,
  dateremiseoffre DATE NULL,
  semainelivraison INTEGER UNSIGNED NULL,
  anneelivraison INTEGER UNSIGNED NULL,
  nombrepavillons INTEGER UNSIGNED NULL,
  tempsallouera DECIMAL(20,5) NULL,
  tempsrealisera DECIMAL(20,5) NULL,
  tempspointagera DECIMAL(20,5) NULL,
  tempsallouebe DECIMAL(20,5) NULL,
  tempsrealisebe DECIMAL(20,5) NULL,
  tempspointagebe DECIMAL(20,5) NULL,
  information TEXT NULL,
  description TEXT NULL,
  aetudier CHAR(1) NULL,
  facture CHAR(1) DEFAULT 0 NOT NULL,
  dateetudeprix DATE NULL,
  dateetudeexecution DATE NULL,
  tempspointageatelier DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX commande_I1(idclient),
  INDEX commande_I2(idtypecommande),
  INDEX commande_I3(idcommande),
  INDEX commande_I4(idcalendrier),
  INDEX commande_I5(idaffaire),
  INDEX commande_I6(idsiteclientfacturation),
  INDEX commande_I7(idactivite),
  INDEX commande_I8(idpersonneletudeprix),
  INDEX commande_I9(idpersonneletudeexecution),
  INDEX commande_I10(idref_etatcommande),
  INDEX commande_I11(idref_typecommande),
  INDEX commande_I12(identreprise),
  INDEX commande_I13(idmoispointagera),
  INDEX commande_I14(idmoispointagebe),
  FOREIGN KEY commande_FK1(idclient)
    REFERENCES client(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK2(idtypecommande)
    REFERENCES typecommande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK3(idcommande)
    REFERENCES commande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK4(idcalendrier)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK5(idaffaire)
    REFERENCES affaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK6(idsiteclientfacturation)
    REFERENCES siteclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK7(idactivite)
    REFERENCES activite(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK8(idpersonneletudeprix)
    REFERENCES personnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK9(idpersonneletudeexecution)
    REFERENCES personnel(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK10(idref_etatcommande)
    REFERENCES ref_etatcommande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK11(idref_typecommande)
    REFERENCES ref_typecommande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK12(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK13(idmoispointagera)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commande_FK14(idmoispointagebe)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE ordreexecution (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcommande INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  datecreation DATE NULL,
  datetransfert DATE NULL,
  prixdevente DECIMAL(20,5) NULL,
  livre CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX orderexecution_I1(idcommande),
  FOREIGN KEY ordreexecution_FK1(idcommande)
    REFERENCES commande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE budget (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcalendriermois INTEGER UNSIGNED NOT NULL,
  idcommande INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  numerocomplement INTEGER UNSIGNED NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  PRIMARY KEY(id),
  INDEX budget_I1(idcalendriermois),
  INDEX budget_I2(idcommande),
  FOREIGN KEY budget_FK1(idcalendriermois)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY budget_FK2(idcommande)
    REFERENCES commande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE reste (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcalendriermois INTEGER UNSIGNED NOT NULL,
  idcommande INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  datemiseenplace DATE NULL,
  saisievalidee CHAR(1) NULL,
  commandeterminee CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX reste_I1(idcommande),
  INDEX reste_I2(idcalendriermois),
  FOREIGN KEY reste_FK1(idcommande)
    REFERENCES commande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY reste_FK2(idcalendriermois)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE historiquecommande (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idutilisateur INTEGER UNSIGNED NOT NULL,
  idcommande INTEGER UNSIGNED NOT NULL,
  date DATETIME NULL,
  libelle VARCHAR(200) NULL,
  editable CHAR(1) NULL,
  etatsynthese CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX historiquecommande_I1(idcommande),
  INDEX historiquecommande_I2(idutilisateur),
  FOREIGN KEY historiquecommande_FK1(idcommande)
    REFERENCES commande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY historiquecommande_FK2(idutilisateur)
    REFERENCES utilisateur(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE natureheure (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idref_typenatureheure INTEGER UNSIGNED NOT NULL,
  idgroupeheure INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  code VARCHAR(10) NULL,
  libellelong VARCHAR(40) NULL,
  libellecourt VARCHAR(20) NULL,
  principale CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX natureheure_I1(idgroupeheure),
  INDEX natureheure_I2(idref_typenatureheure),
  FOREIGN KEY natureheure_FK1(idgroupeheure)
    REFERENCES groupeheure(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY natureheure_FK2(idref_typenatureheure)
    REFERENCES ref_typenatureheure(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE detailbudgetmontant (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idrubriqueaffaire INTEGER UNSIGNED NOT NULL,
  idbudget INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  montant DECIMAL(20,5) NULL,
  saisissable CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX detailbudgetmontant_I1(idbudget),
  INDEX detailbudgetmontant_I2(idrubriqueaffaire),
  FOREIGN KEY detailbudgetmontant_FK1(idbudget)
    REFERENCES budget(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY detailbudgetmontant_FK2(idrubriqueaffaire)
    REFERENCES rubriqueaffaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE detailbudgetheure (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idgroupeheure INTEGER UNSIGNED NOT NULL,
  idbudget INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  nombreheures DECIMAL(20,5) NULL,
  tauxdevis DECIMAL(20,5) NULL,
  heuresvalorisees DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX detailbudgetheure_I1(idgroupeheure),
  INDEX detailbudgetheure_I2(idbudget),
  FOREIGN KEY detailbudgetheure_FK1(idgroupeheure)
    REFERENCES groupeheure(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY detailbudgetheure_FK2(idbudget)
    REFERENCES budget(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE reception (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsiteclient INTEGER UNSIGNED NOT NULL,
  idcommande INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  date DATE NULL,
  livre CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX reception_I1(idcommande),
  INDEX reception_I2(idsiteclient),
  FOREIGN KEY reception_FK1(idcommande)
    REFERENCES commande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY reception_FK2(idsiteclient)
    REFERENCES siteclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE commandefournisseur (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idaffaire INTEGER UNSIGNED NOT NULL,
  idcalendrier INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  numero VARCHAR(50) NULL,
  datecommande DATE NULL,
  montantht DECIMAL(20,5) NULL,
  comptecomptable VARCHAR(10) NULL,
  libelle VARCHAR(200) NULL,
  codetiers VARCHAR(30) NULL,
  libelletiers VARCHAR(50) NULL,
  PRIMARY KEY(id),
  INDEX commandefournisseur_I1(idcalendrier),
  INDEX commandefournisseur_I2(idaffaire),
  INDEX commandefournisseur_I3(identreprise),
  FOREIGN KEY commandefournisseur_FK1(idcalendrier)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commandefournisseur_FK2(idaffaire)
    REFERENCES affaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY commandefournisseur_FK3(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE familleoe (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  numeroligne INTEGER NOT NULL,
  idmagasin INTEGER UNSIGNED NOT NULL,
  idordreexecution INTEGER UNSIGNED NOT NULL,
  idfamille INTEGER UNSIGNED NOT NULL,
  idmoispointageatelier INTEGER UNSIGNED NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  dateproduction DATE NULL,
  tempsalloue DECIMAL(20,5) NULL,
  daterealisation DATE NULL,
  tempsrealisation DECIMAL(20,5) NULL,
  tempspointage DECIMAL(20,5) NULL,
  livre CHAR(1) NULL,
  validee CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX familleoe_I1(idfamille),
  INDEX familleoe_I2(idordreexecution),
  INDEX familleoe_I3(idmagasin),
  INDEX familleoe_I4(idmoispointageatelier),
  FOREIGN KEY familleoe_FK1(idfamille)
    REFERENCES famille(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY familleoe_FK2(idordreexecution)
    REFERENCES ordreexecution(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY familleoe_FK3(idmagasin)
    REFERENCES magasin(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY familleoe_FK4(idmoispointageatelier)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE facturefournisseur (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcommandefournisseur INTEGER UNSIGNED NOT NULL,
  idcalendrier INTEGER UNSIGNED NOT NULL,
  idaffaire INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  numerofacture VARCHAR(50) NULL,
  datefacture DATE NULL,
  libelle VARCHAR(200) NULL,
  comptecomptable VARCHAR(20) NULL,
  montantht DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX facturefournisseur_I1(idcommandefournisseur),
  INDEX facturefournisseur_I2(idcalendrier),
  INDEX facturefournisseur_I3(idaffaire),
  FOREIGN KEY facturefournisseur_FK1(idcommandefournisseur)
    REFERENCES commandefournisseur(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY facturefournisseur_FK2(idcalendrier)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY facturefournisseur_FK3(idaffaire)
    REFERENCES affaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE articleoe (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  numeroligne INTEGER NOT NULL,
  idmagasin INTEGER UNSIGNED NOT NULL,
  idfamilleoe INTEGER UNSIGNED NOT NULL,
  idarticle INTEGER UNSIGNED NOT NULL,
  idref_etatarticleoe INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  quantitedemandee DECIMAL(20,5) NULL,
  quantitesortie DECIMAL(20,5) NULL,
  pmpsortie DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX articleoe_I1(idarticle),
  INDEX articleoe_I2(idfamilleoe),
  INDEX articleoe_I3(idref_etatarticleoe),
  INDEX articleoe_I4(idmagasin),
  FOREIGN KEY articleoe_FK1(idarticle)
    REFERENCES article(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY articleoe_FK2(idfamilleoe)
    REFERENCES familleoe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY articleoe_FK3(idref_etatarticleoe)
    REFERENCES ref_etatarticleoe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY articleoe_FK4(idmagasin)
    REFERENCES magasin(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE bonlivraison (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idref_typebl INTEGER UNSIGNED NOT NULL,
  idordreexecution INTEGER UNSIGNED NOT NULL,
  idreception INTEGER UNSIGNED NULL,
  idref_etatbl INTEGER UNSIGNED NOT NULL,
  idtransporteur INTEGER UNSIGNED NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  numero INTEGER UNSIGNED NULL,
  date DATE NULL,
  dateexpedition DATE NULL,
  poidsexpedie DECIMAL(7,2) NULL,
  dateenvoisoustraitance DATE NULL,
  dateretoursoustraitance DATE NULL,
  numerofacture INTEGER UNSIGNED NULL,
  datefacture DATE NULL,
  infotransporteur VARCHAR(255) NULL,
  infosoustraitant VARCHAR(255) NULL,
  montantht DECIMAL(20,5) NULL,
  afacturer CHAR(1) NULL,
  facture CHAR(1) DEFAULT 0 NOT NULL,
  afficheractivite CHAR(1) NULL,
  afficheradresselivraison CHAR(1) NULL,
  reservationstockenvoyee CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX bonlivraison_I1(idtransporteur),
  INDEX bonlivraison_I3(idref_etatbl),
  INDEX bonlivraison_I2(idordreexecution),
  INDEX bonlivraison_I4(idreception),
  INDEX bonlivraison_I5(idref_typebl),
  FOREIGN KEY bonlivraison_FK1(idtransporteur)
    REFERENCES transporteur(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY bonlivraison_FK3(idref_etatbl)
    REFERENCES ref_etatbl(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY bonlivraison_FK2(idordreexecution)
    REFERENCES ordreexecution(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY bonlivraison_FK5(idreception)
    REFERENCES reception(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY bonlivraison_FK5(idref_typebl)
    REFERENCES ref_typebl(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE factureclient (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idaffaire INTEGER UNSIGNED NOT NULL,
  idclient INTEGER UNSIGNED NOT NULL,
  idsiteclient INTEGER UNSIGNED NOT NULL,
  idcommande INTEGER UNSIGNED NULL,
  idbonlivraison INTEGER UNSIGNED NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  dateenregistrement DATE NULL,
  referenceclient VARCHAR(40) NULL,
  montanttotalht DECIMAL(20,5) NULL,
  numerowinfact VARCHAR(20) NULL,
  datewinfact DATE NULL,
  datesuppression DATE NULL,
  PRIMARY KEY(id),
  INDEX factureentete_I1(idbonlivraison),
  INDEX factureentete_I2(idcommande),
  INDEX factureclient_I3(idclient),
  INDEX factureclient_I4(idsiteclient),
  INDEX factureclient_I5(idaffaire),
  FOREIGN KEY factureentete_FK1(idbonlivraison)
    REFERENCES bonlivraison(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY factureentete_FK2(idcommande)
    REFERENCES commande(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY factureclient_FK3(idclient)
    REFERENCES client(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY factureclient_FK4(idsiteclient)
    REFERENCES siteclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY factureclient_FK5(idaffaire)
    REFERENCES affaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE commandefournisseurligne (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcommandefournisseur INTEGER UNSIGNED NOT NULL,
  noligne INTEGER UNSIGNED NULL,
  codearticle VARCHAR(200) NULL,
  libellearticle VARCHAR(200) NULL,
  unite VARCHAR(200) NULL,
  quantite DECIMAL(20,5) NULL,
  montantunitaire DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX commandefournisseurligne_FI1(idcommandefournisseur),
  FOREIGN KEY commandefournisseurligne_FK1(idcommandefournisseur)
    REFERENCES commandefournisseur(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE restemontant (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idreste INTEGER UNSIGNED NOT NULL,
  idrubriqueaffaire INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  alloue DECIMAL(20,5) NULL,
  realise DECIMAL(20,5) NULL,
  reste DECIMAL(20,5) NULL,
  tauxdefrais DECIMAL(20,5) NULL,
  saisissable CHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX restemontant_I1(idrubriqueaffaire),
  INDEX restemontant_I2(idreste),
  FOREIGN KEY restemontant_FK1(idrubriqueaffaire)
    REFERENCES rubriqueaffaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY restemontant_FK2(idreste)
    REFERENCES reste(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE resteheure (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idreste INTEGER UNSIGNED NOT NULL,
  idgroupeheure INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  alloue DECIMAL(20,5) NULL,
  tauxalloue DECIMAL(20,5) NULL,
  montantvalorisealloue DECIMAL(20,5) NULL,
  realise DECIMAL(20,5) NULL,
  tauxrealise DECIMAL(20,5) NULL,
  montantvaloriserealise DECIMAL(20,5) NULL,
  reste DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX resteheure_I1(idgroupeheure),
  INDEX resteheure_I2(idreste),
  FOREIGN KEY resteheure_FK1(idgroupeheure)
    REFERENCES groupeheure(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY resteheure_FK2(idreste)
    REFERENCES reste(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE factureclientligne (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idfactureclient INTEGER UNSIGNED NOT NULL,
  idref_typelignefactureclient INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  numeroligne INTEGER UNSIGNED NULL,
  libelle VARCHAR(250) NULL,
  quantitepourcent DECIMAL(20,5) NULL,
  prixunitaire DECIMAL(20,5) NULL,
  montantht DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX factureclientligne_I1(idfactureclient),
  INDEX factureclientligne_I2(idref_typelignefactureclient),
  FOREIGN KEY factureclientligne_FK1(idfactureclient)
    REFERENCES factureclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY factureclientligne_FK2(idref_typelignefactureclient)
    REFERENCES ref_typelignefactureclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE encaissementclient (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idfactureclient INTEGER UNSIGNED NOT NULL,
  idcalendrier INTEGER UNSIGNED NOT NULL,
  idaffaire INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  dateencaissement DATE NULL,
  libelle VARCHAR(250) NULL,
  montantht DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX encaissementclient_I1(idfactureclient),
  INDEX encaissementclient_I2(idcalendrier),
  INDEX encaissementclient_I3(idaffaire),
  FOREIGN KEY encaissementclient_FK1(idfactureclient)
    REFERENCES factureclient(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY encaissementclient_FK2(idcalendrier)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY encaissementclient_FK3(idaffaire)
    REFERENCES affaire(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE lignebonlivraison (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idfamilleoe INTEGER UNSIGNED NULL,
  idbonlivraison INTEGER UNSIGNED NOT NULL,
  idref_typelignebl INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  numeroligne INTEGER UNSIGNED NULL,
  quantite DECIMAL(20,5) NULL,
  numerocolis INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX lignebonlivraison_I1(idbonlivraison),
  INDEX lignebonlivraison_I2(idfamilleoe),
  INDEX lignebonlivraison_I3(idref_typelignebl),
  FOREIGN KEY lignebonlivraison_FK1(idbonlivraison)
    REFERENCES bonlivraison(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY lignebonlivraison_FK2(idfamilleoe)
    REFERENCES familleoe(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY lignebonlivraison_FK3(idref_typelignebl)
    REFERENCES ref_typelignebl(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE commentairelignebonlivraison (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idlignebonlivraison INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  texte VARCHAR(255) NULL,
  PRIMARY KEY(id),
  INDEX commentairelignebonlivraison_I1(idlignebonlivraison),
  FOREIGN KEY commentairelignebonlivraison_FK1(idlignebonlivraison)
    REFERENCES lignebonlivraison(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE articlelignebonlivraison (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idarticle INTEGER UNSIGNED NULL,
  idlignebonlivraison INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  reference VARCHAR(40) NULL,
  description VARCHAR(240) NULL,
  udm VARCHAR(25) NULL,
  poids DECIMAL(20,5) NULL,
  PRIMARY KEY(id),
  INDEX articlelignebonlivraison_I1(idlignebonlivraison),
  INDEX articlelignebonlivraison_I2(idarticle),
  FOREIGN KEY articlelignebonlivraison_FK1(idlignebonlivraison)
    REFERENCES lignebonlivraison(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY articlelignebonlivraison_FK2(idarticle)
    REFERENCES article(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;

CREATE TABLE coefficient (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcalendriermois INTEGER UNSIGNED NOT NULL,
  identreprise INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,  
  heuresprevra DECIMAL(20,5) NULL,
  heuresprevbe DECIMAL(20,5) NULL,
  heuresprevatelier DECIMAL(20,5) NULL,
  heurestotra DECIMAL(20,5) NULL,
  heurestotbe DECIMAL(20,5) NULL,
  heurestotatelier DECIMAL(20,5) NULL,
  heuresabsra DECIMAL(20,5) NULL,
  heuresabsbe DECIMAL(20,5) NULL,
  heuresabsatelier DECIMAL(20,5) NULL,  
  PRIMARY KEY(id),
  INDEX coefficient_I1(identreprise),
  INDEX coefficient_I2(idcalendriermois),
  FOREIGN KEY coefficient_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY coefficient_FK2(idcalendriermois)
    REFERENCES calendrier(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION  
)
ENGINE=InnoDB;

CREATE TABLE journontravaille (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  identreprise INTEGER UNSIGNED NOT NULL,
  idutilisateur INTEGER UNSIGNED NULL,
  jour DATE NULL,
  libelle VARCHAR(40) NULL,
  PRIMARY KEY(id),
  INDEX journontravaille_I1(identreprise),
  FOREIGN KEY journontravaille_FK1(identreprise)
    REFERENCES entreprise(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
ENGINE=InnoDB;
