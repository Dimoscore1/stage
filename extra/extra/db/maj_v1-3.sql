INSERT INTO role (id,code,libelle) VALUES (98, 'articlespecifique.lister','TODO');
INSERT INTO role (id,code,libelle) VALUES (99, 'articlespecifique.gerer','TODO');
INSERT INTO role (id,code,libelle) VALUES (100, 'articlespecifique.supprimer','TODO');
INSERT INTO role (id,code,libelle) VALUES (101, 'facturation.supprimer','TODO');
INSERT INTO role (id,code,libelle) VALUES (102, 'saisiereste.validertout','TODO');

INSERT INTO profil_role (idprofil,idrole) VALUES (1,98);
INSERT INTO profil_role (idprofil,idrole) VALUES (1,99);
INSERT INTO profil_role (idprofil,idrole) VALUES (1,100);
INSERT INTO profil_role (idprofil,idrole) VALUES (1,101);
INSERT INTO profil_role (idprofil,idrole) VALUES (1,102);

alter table ieaffaire add idsource decimal(38);
alter table ieaffaire add INDEX ieaffaire_I2 (idsource);

alter table factureclient add datesuppression DATE NULL;

alter table isfactureentete add supprime INTEGER NULL;
alter table isfactureligne add supprime INTEGER NULL;

UPDATE isfactureentete set supprime=0;
UPDATE isfactureligne set supprime=0;
