alter table societe add column gestioncommandeplanning char(1) default NULL;
update societe set gestioncommandeplanning='1' where id=1;
update societe set gestioncommandeplanning='0' where id=2;


alter table commande add column anneelivraison2 int(10) unsigned DEFAULT NULL;
alter table commande add column anneelivraison3 int(10) unsigned DEFAULT NULL;
alter table commande add column anneelivraison4 int(10) unsigned DEFAULT NULL;
alter table commande add column anneelivraison5 int(10) unsigned DEFAULT NULL;
alter table commande add column semainelivraison2 int(10) unsigned DEFAULT NULL;
alter table commande add column semainelivraison3 int(10) unsigned DEFAULT NULL;
alter table commande add column semainelivraison4 int(10) unsigned DEFAULT NULL;
alter table commande add column semainelivraison5 int(10) unsigned DEFAULT NULL;
alter table commande add column descriptionlivraison1 text;
alter table commande add column descriptionlivraison2 text;
alter table commande add column descriptionlivraison3 text;
alter table commande add column descriptionlivraison4 text;
alter table commande add column descriptionlivraison5 text;

insert into role (id,code,libelle) values (103,'rapport.commande.centretravaux','TODO');
insert into profil_role (idprofil,idrole) values (1,103);
insert into profil_role (idprofil,idrole) values (6,103);
insert into profil_role (idprofil,idrole) values (7,103);
insert into profil_role (idprofil,idrole) values (8,103);
insert into profil_role (idprofil,idrole) values (14,103);

insert into role (id,code,libelle) values (104,'bonlivraison.etat.edit','TODO');
insert into profil_role (idprofil,idrole) values (1,104);
insert into profil_role (idprofil,idrole) values (8,104);

alter table famille add column defaultforarticleinblmanuel char(1) default NULL;
update famille set defaultforarticleinblmanuel=0; 
update famille set defaultforarticleinblmanuel = 1 where idsociete = 1 and code = 9;
update famille set defaultforarticleinblmanuel=1 where idsociete = 2 and code = 2;

alter table entreprise add column resastockemetteur varchar(100) default NULL;
update entreprise set resastockemetteur = '618_IEP, M. IEP' where id = 1;
update entreprise set resastockemetteur = '085_COUSSEAU, M. COUSSEAU' where id = 2;
alter table entreprise add column comptefacturation varchar(100) default NULL;
update entreprise set comptefacturation = '707100' where id = 1;
update entreprise set comptefacturation = '707100' where id = 2;

insert into role (id,code,libelle) values (105,'saisiereste.terminerMasse','TODO');
insert into profil_role (idprofil,idrole) values (1,105);

--maj du 31/01/2013
insert into role (id,code,libelle) values (106,'interfaces.budgets.envoyer','TODO');
insert into profil_role (idprofil,idrole) values (8,106);
insert into profil_role (idprofil,idrole) values (1,106);
alter table commande add column budgetEnvoye char(1) default 0 not null; 
update societe set gestionbudget = 1 where id = 2;

--maj du 20/02/2013
insert into role (id,code,libelle) values (107,'commandes.planning.gerer','TODO');
insert into profil_role (idprofil,idrole) values (1,107);
insert into profil_role (idprofil,idrole) values (8,107);
insert into profil_role (idprofil,idrole) values (19,107);

--maj du 28/02/2013
ALTER TABLE affaire ADD CONSTRAINT affaire_U1 UNIQUE (identreprise, codefamille, ordre, tache, active);