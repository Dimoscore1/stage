/* Bugzilla 8861  Interface pour importer les articles **/
INSERT INTO role (id,code,libelle) VALUES (110, 'interfaces.article.integrer',	      'TODO');
INSERT INTO profil_role (idprofil,idrole) VALUES (1,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (4,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (6,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (8,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (13,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (17,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (18,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (19,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (20,110);
INSERT INTO profil_role (idprofil,idrole) VALUES (22,110);

/* Bugzilla 8862 Ajout d'informations sur les bons de livraisons crées à partir des études **/
--alter table ieetudefamilleoe add column numerotationBL int(10) unsigned default NULL AFTER `numerooe`;
alter table ieetudefamilleoe add column codeAdresseLivraison varchar(255) default NULL AFTER `codeClient`;
alter table ieetudefamilleoe add column raisonSocialeLivraison varchar(255) default NULL AFTER `codeAdresseLivraison`;
alter table ieetudefamilleoe add column adresse1Livraison varchar(255) default NULL AFTER `raisonSocialeLivraison`;
alter table ieetudefamilleoe add column adresse2Livraison varchar(255) default NULL AFTER `adresse1Livraison`;
alter table ieetudefamilleoe add column adresse3Livraison varchar(255) default NULL AFTER `adresse2Livraison`;
alter table ieetudefamilleoe add column adresse4Livraison varchar(255) default NULL AFTER `adresse3Livraison`;
alter table ieetudefamilleoe add column codePostalLivraison varchar(255) default NULL AFTER `adresse4Livraison`;
alter table ieetudefamilleoe add column villeLivraison varchar(255) default NULL AFTER `codePostalLivraison`;
alter table ieetudefamilleoe add column paysLivraison varchar(255) default NULL AFTER `villeLivraison`;
alter table ieetudefamilleoe add column contactNomLivraison varchar(255) default NULL AFTER `paysLivraison`;
alter table ieetudefamilleoe add column contactTelephoneLivraison varchar(255) default NULL AFTER `contactNomLivraison`;
alter table ieetudefamilleoe add column precisionChantier varchar(255) default NULL AFTER `dateTransfert`;
alter table ieetudefamilleoe add column prixVenteBL decimal(20,5) default NULL AFTER `precisionChantier`;
alter table ieetudefamilleoe add column texteBL varchar(255) default NULL  AFTER `prixVenteBL`;

--alter table ieetudearticleoe add column texteBL varchar(255) default NULL  AFTER `detailBL`;

alter table commande add column idsiteclientlivraison INTEGER UNSIGNED NULL;
alter table commande add column precisionChantier varchar(255) default NULL;

alter table ordreexecution add column prixVenteBL decimal(20,5) default NULL ;

alter table familleoe add column texte varchar(255) default NULL ;

/* Bugzilla 9165 Intégrer le tracking sur le suivi commande en face du bon de livraison  **/
INSERT INTO role(code,libelle) values('interfaces.tracking.integrer','TODO');
INSERT INTO profil_role(idprofil,idrole) values(1,111);
INSERT INTO profil_role(idprofil,idrole) values(4,111);
INSERT INTO profil_role(idprofil,idrole) values(6,111);
INSERT INTO profil_role(idprofil,idrole) values(8,111);
INSERT INTO profil_role(idprofil,idrole) values(13,111);
INSERT INTO profil_role(idprofil,idrole) values(22,111);
alter table bonlivraison add column tracking varchar(255) default NULL ;
