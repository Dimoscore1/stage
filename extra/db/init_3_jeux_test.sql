USE gestioncommande;

INSERT INTO calendrier (id,idref_typedate,datedebut,datefin,semaine,mois,annee) VALUES (1,1,'2008-09-09','2008-10-11',4,9,2008);
INSERT INTO calendrier (id,idref_typedate,datedebut,datefin,semaine,mois,annee) VALUES (2,1,'2008-10-10','2008-11-12',5,10,2008);
INSERT INTO calendrier (id,idref_typedate,datedebut,datefin,semaine,mois,annee) VALUES (3,2,'2008-07-07','2008-08-08',4,9,2008);
INSERT INTO calendrier (id,idref_typedate,datedebut,datefin,semaine,mois,annee) VALUES (4,3,'2008-02-02','2008-03-03',4,9,2008);
INSERT INTO calendrier (id,idref_typedate,datedebut,datefin,semaine,mois,annee) VALUES (5,3,'2008-09-09','2008-10-11',4,9,2008);

INSERT INTO societe (id,idcalendriermois,code,libellelong,libellecourt,gestionbudget,gestionactivite,sousetat,gestiontypecommande,gestionetude,gestionautomatiquestatutcommande,gestiontempsalloue,gestionremiseoffre,gestionchantier) VALUES (1,1,'CO1','societe long 1','societe 1','1','1','1','1','1','1','1','1','1');
INSERT INTO societe (id,idcalendriermois,code,libellelong,libellecourt,gestionbudget,gestionactivite,sousetat,gestiontypecommande,gestionetude,gestionautomatiquestatutcommande,gestiontempsalloue,gestionremiseoffre,gestionchantier) VALUES (2,1,'CO2','societe long 2','societe 2','0','0','0','0','0','0','0','0','0');

INSERT INTO entreprise (id,idsociete,code,etatvequartzi,etatpointagequartzi) VALUES (1,1,'EN1','1','1');
INSERT INTO entreprise (id,idsociete,code,etatvequartzi,etatpointagequartzi) VALUES (2,1,'EN2','1','1');
INSERT INTO entreprise (id,idsociete,code,etatvequartzi,etatpointagequartzi) VALUES (3,2,'EN3','1','1');

INSERT INTO utilisateur (id,identreprise,idprofil,login,motdepasse,nom,prenom) VALUES (1,1,1,'rogon','rogon','Gonord','Romain');
INSERT INTO utilisateur (id,identreprise,idprofil,login,motdepasse,nom,prenom) VALUES (2,1,1,'faabb','faabb','Abballe','Fabien');
INSERT INTO utilisateur (id,identreprise,idprofil,login,motdepasse,nom,prenom) VALUES (3,1,1,'vinci','vinci','Vinci','Energies');
INSERT INTO utilisateur (id,identreprise,idprofil,login,motdepasse,nom,prenom) VALUES (4,3,1,'faabb2','faabb2','Abballe2','Fabien2');

INSERT INTO section (id,identreprise) VALUES (1,1);

INSERT INTO activite (id,identreprise,code,actif,libellelong,libellecourt) VALUES (1,1,'AC1','1','libelle long 1','libelle court 1');
INSERT INTO activite (id,identreprise,code,actif,libellelong,libellecourt) VALUES (2,1,'AC2','1','Libellé long activite 2','Libellé court 2');
INSERT INTO activite (id,identreprise,code,actif,libellelong,libellecourt) VALUES (3,1,'AC3','1','libelle long 3','libelle court 3');

INSERT INTO ienatureheure (id,codesociete,codeentreprise,code,libellelong,codegroupeheure,typenatureheure,principale) VALUES (1,'CO1','EN1','NH1','Libelle long','GH1',1,'0');

INSERT INTO groupeheure (id,idref_identificationgh,idsection,identreprise,idactivite,code,libellelong,libellecourt) VALUES (1,null,1,1,3,'CO1','Libelle groupe heure 1','Libelle 1');
INSERT INTO groupeheure (id,idref_identificationgh,idsection,identreprise,idactivite,code,libellelong,libellecourt) VALUES (2,1,1,1,3,'CO2','Libelle groupe heure 2','Libelle 2');
INSERT INTO groupeheure (id,idref_identificationgh,idsection,identreprise,idactivite,code,libellelong,libellecourt) VALUES (3,3,1,1,2,'CO3','Libelle groupe heure 3','Libelle 3');

INSERT INTO rubriqueaffaire (id,idref_identificationra,identreprise,code,libellelong,libellecourt,ordreedition,compte,afficherdansapplication) VALUES (1,1,1,'CO1','Libelle long de la rubrique d''affaire 1','libelle court 1',1,null,'1');
INSERT INTO rubriqueaffaire (id,idref_identificationra,identreprise,code,libellelong,libellecourt,ordreedition,compte,afficherdansapplication) VALUES (2,2,1,'CO2','Libelle long de la rubrique d''affaire 2','libelle court 2',2,null,'1');
INSERT INTO rubriqueaffaire (id,idref_identificationra,identreprise,code,libellelong,libellecourt,ordreedition,compte,afficherdansapplication) VALUES (3,3,1,'CO3','Libelle long de la rubrique d''affaire 3','libelle court 3',3,null,'0');
INSERT INTO rubriqueaffaire (id,idref_identificationra,identreprise,code,libellelong,libellecourt,ordreedition,compte,afficherdansapplication) VALUES (4,1,1,'CO4','Libelle long de la rubrique d''affaire 4','libelle court 4',4,null,'0');
INSERT INTO rubriqueaffaire (id,idref_identificationra,identreprise,code,libellelong,libellecourt,ordreedition,compte,afficherdansapplication) VALUES (5,2,1,'CO5','Libelle long de la rubrique d''affaire 5','libelle court 5',5,null,'0');
INSERT INTO rubriqueaffaire (id,idref_identificationra,identreprise,code,libellelong,libellecourt,ordreedition,compte,afficherdansapplication) VALUES (6,4,1,'CO6','Libelle long de la rubrique d''affaire 6','libelle court 6',6,null,'1');
INSERT INTO rubriqueaffaire (id,idref_identificationra,identreprise,code,libellelong,libellecourt,ordreedition,compte,afficherdansapplication) VALUES (7,5,1,'CO7','Libelle long de la rubrique d''affaire 7','libelle court 7',7,null,'1');

INSERT INTO cascaderubrique (id,idref_typetauxbudget,idref_operateur,idrubriqueaffairesource,idrubriqueaffairecible) VALUES (1,0,0,1,3);
INSERT INTO cascaderubrique (id,idref_typetauxbudget,idref_operateur,idrubriqueaffairesource,idrubriqueaffairecible) VALUES (2,0,0,1,4);
INSERT INTO cascaderubrique (id,idref_typetauxbudget,idref_operateur,idrubriqueaffairesource,idrubriqueaffairecible) VALUES (3,0,0,1,5);
INSERT INTO cascaderubrique (id,idref_typetauxbudget,idref_operateur,idrubriqueaffairesource,idrubriqueaffairecible) VALUES (4,0,0,2,4);

INSERT INTO client (id,idsociete,idclient,idref_typeclient,idoracle,code,libelle,actif) VALUES (1,1,1,0,1,'CO1','Libelle client 1','1');
INSERT INTO client (id,idsociete,idclient,idref_typeclient,idoracle,code,libelle,actif) VALUES (2,1,2,1,1,'CO2','Libelle client 2','1');

INSERT INTO detailtypecommande (id,tempsalloue,trancheactivee,plafondactive,valeurplafond) VALUES (1,100,'1','1','10');
INSERT INTO detailtypecommande (id,tempsalloue,trancheactivee,plafondactive,valeurplafond) VALUES (2,200,'0','1','20');
INSERT INTO detailtypecommande (id,tempsalloue,trancheactivee,plafondactive,valeurplafond) VALUES (3,300,'1','0','30');
INSERT INTO detailtypecommande (id,tempsalloue,trancheactivee,plafondactive,valeurplafond) VALUES (4,400,'0','0','40');

INSERT INTO typecommande (id,idsociete,iddetailtypecommandebe,iddetailtypecommandera,code,libellelong,libellecourt,nombrepavillonobligatoire,actif) VALUES (1,1,1,2,'CO1','libelle type de commande 1','Libelle 1',2,'1');
INSERT INTO typecommande (id,idsociete,iddetailtypecommandebe,iddetailtypecommandera,code,libellelong,libellecourt,nombrepavillonobligatoire,actif) VALUES (2,1,3,4,'CO2','libelle type de commande 2','Libelle 2',4,'1');
INSERT INTO typecommande (id,idsociete,iddetailtypecommandebe,iddetailtypecommandera,code,libellelong,libellecourt,nombrepavillonobligatoire,actif) VALUES (3,1,1,4,'CO3','libelle type de commande 3','Libelle 3',2,'1');

INSERT INTO transporteur (id,idsociete,code,libellelong,libellecourt,actif) VALUES (1,1,'TRANS 1','Libelle long du transporteur 1','Libelle 1','1');
INSERT INTO transporteur (id,idsociete,code,libellelong,libellecourt,actif) VALUES (2,1,'TRANS 2','Libelle long du transporteur 2','Libelle 2','1');
INSERT INTO transporteur (id,idsociete,code,libellelong,libellecourt,actif) VALUES (3,1,'TRANS 3','Libelle long du transporteur 3','Libelle 3','1');

INSERT INTO siteclient (id,idsociete,idclient,idtransporteur,idref_typesite,idoracle,code,adr1,adr2,adr3,adr4,codepostal,ville,pays,contact,telcontact,principal,actif) VALUES (1,1,1,1,1,1,'CODE SITE CLIENT 1','adresse 1.1','Adresse 1.2','Adresse 1.3','Adresse 1.4','44000','Nantes','France','Moi','0606060606','1','1');
INSERT INTO siteclient (id,idsociete,idclient,idtransporteur,idref_typesite,idoracle,code,adr1,adr2,adr3,adr4,codepostal,ville,pays,contact,telcontact,principal,actif) VALUES (2,1,2,1,1,1,'CODE SITE CLIENT 2','adresse 2.1','Adresse 2.2','Adresse 2.3','Adresse 2.4','44000','Nantes','France','Moi','0606060606','1','1');
INSERT INTO siteclient (id,idsociete,idclient,idtransporteur,idref_typesite,idoracle,code,adr1,adr2,adr3,adr4,codepostal,ville,pays,contact,telcontact,principal,actif) VALUES (3,1,1,1,1,1,'CODE SITE CLIENT 3','adresse 3.1','Adresse 3.2','Adresse 3.3','Adresse 3.4','44000','Nantes','France','Moi','0606060606','1','1');
INSERT INTO siteclient (id,idsociete,idclient,idtransporteur,idref_typesite,idoracle,code,adr1,adr2,adr3,adr4,codepostal,ville,pays,contact,telcontact,principal,actif) VALUES (4,1,1,1,0,1,'CODE SITE CLIENT 4','adresse 4.1','Adresse 4.2','Adresse 4.3','Adresse 4.4','44000','Nantes','France','Moi','0606060606','1','1');

INSERT INTO categoriepointage (id,idsociete,code,libellelong,libellecourt) VALUES (1,1,'CO1','Libelle long de la categorie pointage 1','Libelle court 1');
INSERT INTO categoriepointage (id,idsociete,code,libellelong,libellecourt) VALUES (2,1,'CO2','Libelle long de la categorie pointage 2','Libelle court 2');
INSERT INTO categoriepointage (id,idsociete,code,libellelong,libellecourt) VALUES (3,1,'CO3','Libelle long de la categorie pointage 3','Libelle court 3');
INSERT INTO categoriepointage (id,idsociete,code,libellelong,libellecourt) VALUES (4,1,'CO4','Libelle long de la categorie pointage 4','Libelle court 4');
INSERT INTO categoriepointage (id,idsociete,code,libellelong,libellecourt) VALUES (5,1,'CO5','Libelle long de la categorie pointage 5','Libelle court 5');

INSERT INTO personnel (id,idsociete,idref_typepersonnel,matricule,nom,prenom,dateentree,datesortie) VALUES (1,1,1,'MA1','Nom 1','Prenom 1','2008-12-12',null);
INSERT INTO personnel (id,idsociete,idref_typepersonnel,matricule,nom,prenom,dateentree,datesortie) VALUES (2,1,1,'MA2','Nom 2','Prenom 2','2008-01-01',null);
INSERT INTO personnel (id,idsociete,idref_typepersonnel,matricule,nom,prenom,dateentree,datesortie) VALUES (3,1,1,'MA3','Nom 3','Prenom 3','2008-02-02','2008-10-10');
INSERT INTO personnel (id,idsociete,idref_typepersonnel,matricule,nom,prenom,dateentree,datesortie) VALUES (4,1,1,'MA4','Nom 4','Prenom 4','2008-03-03',null);

INSERT INTO affaire (id,identreprise,idpersonnel,idclient,idsiteclient,idref_typeaffaire,codefamille,ordre,tache,libellelong,libellecourt,codeposition,dateouverture,active) VALUES (1,1,1,1,1,0,'111','01','001','Libelle affaire long 1','Libelle 1','01','2008-11-01','Y');
INSERT INTO affaire (id,identreprise,idpersonnel,idclient,idsiteclient,idref_typeaffaire,codefamille,ordre,tache,libellelong,libellecourt,codeposition,dateouverture,active) VALUES (2,1,1,1,1,0,'222','01','001','Libelle affaire long 2','Libelle 2','02','2008-11-01','Y');
INSERT INTO affaire (id,identreprise,idpersonnel,idclient,idsiteclient,idref_typeaffaire,codefamille,ordre,tache,libellelong,libellecourt,codeposition,dateouverture,active) VALUES (3,1,1,1,1,0,'333','01','001','Libelle affaire long 3','Libelle "','03','2008-11-01','Y');

INSERT INTO commande (id,idref_typecommande,idtypecommande,idactivite,idaffaire,idclient,idsiteclientfacturation,idref_etatcommande,
  idpersonneletudeexecution,idpersonneletudeprix,idcalendrier,idcommande,idutilisateur,numero,dateenregistrement,
  libelle,montant,referenceclient,dateremiseoffre,semainelivraison,anneelivraison,nombrepavillons,tempsallouera,
  tempsrealisera,tempspointagera,tempsallouebe,tempsrealisebe,tempspointagebe,information,description,aetudier,
  dateetudeprix,dateetudeexecution) 
VALUES 
	(1,1,1,1,1,1,1,1,1,1,1,1,1,'NUM COM 1','2008-12-11','Libellé commande 1',10,'ref client 1','2008-12-01',1,2008,1,1,2,3,4,5,6,'information 1','description 1','0','2008-12-15','2008-12-25');
--
--INSERT INTO commande 
--	(
--  id,idref_typecommande,idtypecommande,idactivite,idaffaire,idclient,idsiteclientfacturation,idref_etatcommande,
--  idpersonneletudeexecution,idpersonneletudeprix,idcalendrier,idcommande,idutilisateur,numero,dateenregistrement,
--  libelle,montant,referenceclient,dateremiseoffre,semainelivraison,anneelivraison,nombrepavillons,tempsallouera,
--  tempsrealisera,tempspointagera,tempsallouebe,tempsrealisebe,tempspointagebe,information,description,aetudier,
--  dateetudeprix,dateetudeexecution)
--VALUES (
--	2,1,1,1,1,1,1,14,
--	1,1,1,1,null,null,null,null,
--	null,null,null,null,null,null,null,
--	null,null,null,null,null,null,null,null,
--	null,null);


--INSERT INTO reception (id,idsiteclient,idcommande,date,livre) VALUES (1,1,1,'2001-01-01','0');
--INSERT INTO reception (id,idsiteclient,idcommande,date,livre) VALUES (2,2,1,'2002-02-02','0');
--INSERT INTO reception (id,idsiteclient,idcommande,date,livre) VALUES (3,3,1,'2001-03-03','0');

INSERT INTO ordreexecution (id,idcommande,code,datecreation,datetransfert,prixdevente,livre) VALUES (1,1,'OE 1','2008-01-01','2008-12-12',10,'1');
INSERT INTO ordreexecution (id,idcommande,code,datecreation,datetransfert,prixdevente,livre) VALUES (2,1,'OE 2','2008-02-02',null,20,'0');
INSERT INTO ordreexecution (id,idcommande,code,datecreation,datetransfert,prixdevente,livre) VALUES (3,1,'OE 3','2008-03-03',null,30,'0');
INSERT INTO ordreexecution (id,idcommande,code,datecreation,datetransfert,prixdevente,livre) VALUES (4,1,'OE 4','2008-04-04','2008-11-11',40,'0');
INSERT INTO ordreexecution (id,idcommande,code,datecreation,datetransfert,prixdevente,livre) VALUES (5,1,'OE 5','2008-05-05','2008-10-10',50,'1');

--INSERT INTO bonlivraison (id,idref_typebl,idordreexecution,idreception,idref_etatbl,idtransporteur,numero,date,
--nombrecolis,dateexpedition,poidsexpedie,dateenvoisoustraitance,dateretoursoustraitance,
--numerofacture,datefacture,infotransporteur,montantht,afacturer,afficheractivite,afficheradresselivraison) 
--VALUES
--(1,1,1,null,1,1,111,'2008-10-10',1,'2008-11-11',5,'2008-12-12','2008-12-13',145,'2008-12-14','info transporteur 1',452.12,'1','1','1');
--
--INSERT INTO bonlivraison (id,idref_typebl,idordreexecution,idreception,idref_etatbl,idtransporteur,numero,date,
--nombrecolis,dateexpedition,poidsexpedie,dateenvoisoustraitance,dateretoursoustraitance,
--numerofacture,datefacture,infotransporteur,montantht,afacturer,afficheractivite,afficheradresselivraison) 
--VALUES
--(2,1,1,null,1,1,222,'2008-10-10',1,'2008-11-11',5,'2008-12-12',null,145,'2008-12-14','info transporteur 2',452.12,'1','1','1');
--
--INSERT INTO bonlivraison (id,idref_typebl,idordreexecution,idreception,idref_etatbl,idtransporteur,numero,date,
--nombrecolis,dateexpedition,poidsexpedie,dateenvoisoustraitance,dateretoursoustraitance,
--numerofacture,datefacture,infotransporteur,montantht,afacturer,afficheractivite,afficheradresselivraison) 
--VALUES
--(3,1,1,null,1,1,333,'2008-10-10',1,null,5,'2008-12-12','2008-12-13',145,null,'info transporteur 2',452.12,'1','1','1');
--
--INSERT INTO bonlivraison (id,idref_typebl,idordreexecution,idreception,idref_etatbl,idtransporteur,numero,date,
--nombrecolis,dateexpedition,poidsexpedie,dateenvoisoustraitance,dateretoursoustraitance,
--numerofacture,datefacture,infotransporteur,montantht,afacturer,afficheractivite,afficheradresselivraison) 
--VALUES
--(4,1,1,null,1,1,444,'2008-10-10',1,null,5,'2008-12-12',null,145,null,'info transporteur 2',452.12,'1','1','1');
--
--INSERT INTO bonlivraison (id,idref_typebl,idordreexecution,idreception,idref_etatbl,idtransporteur,numero,date,
--nombrecolis,dateexpedition,poidsexpedie,dateenvoisoustraitance,dateretoursoustraitance,
--numerofacture,datefacture,infotransporteur,montantht,afacturer,afficheractivite,afficheradresselivraison) 
--VALUES
--(5,0,1,null,1,1,555,'2008-10-10',1,null,5,null,null,145,null,'info transporteur 2',452.12,'1','1','1');
--
--INSERT INTO factureclient (id,idaffaire,idclient,idsiteclient,idcommande,idbonlivraison,dateenregistrement,referenceclient, montanttotalht,numerowinfact,datewinfact) VALUES (1,1,1,1,1,1,'2008-10-10','Référence client 1',111.11,'111','2008-10-10');
--INSERT INTO factureclient (id,idaffaire,idclient,idsiteclient,idcommande,idbonlivraison,dateenregistrement,referenceclient, montanttotalht,numerowinfact,datewinfact) VALUES (2,1,1,1,1,2,'2008-08-08','Référence client 2',222.22,'222','2008-10-10');
--INSERT INTO factureclient (id,idaffaire,idclient,idsiteclient,idcommande,idbonlivraison,dateenregistrement,referenceclient, montanttotalht,numerowinfact,datewinfact) VALUES (3,1,1,1,1,3,'2008-09-09','Référence client 3',333.33,'333','2008-10-10');
--INSERT INTO factureclient (id,idaffaire,idclient,idsiteclient,idcommande,idbonlivraison,dateenregistrement,referenceclient, montanttotalht,numerowinfact,datewinfact) VALUES (4,1,1,1,1,4,'2008-07-07','Référence client 4',444.44,'444',null);
--INSERT INTO factureclient (id,idaffaire,idclient,idsiteclient,idcommande,idbonlivraison,dateenregistrement,referenceclient, montanttotalht,numerowinfact,datewinfact) VALUES (5,1,1,1,1,3,'2008-06-06','Référence client 5',555.55,'555',null);
--INSERT INTO factureclient (id,idaffaire,idclient,idsiteclient,idcommande,idbonlivraison,dateenregistrement,referenceclient, montanttotalht,numerowinfact,datewinfact) VALUES (6,1,1,1,1,2,'2008-05-05','Référence client 6',666.66,'666',null);
--
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (1,1,1,1,'Libelle long du budget 1','budget 1');
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (2,1,1,1,'Libelle long du budget 2','budget 2');
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (3,1,1,1,'Libelle long du budget 3','budget 3');
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (4,1,1,1,'Libelle long du budget 4','budget 4');
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (5,1,1,1,'Libelle long du budget 5','budget 5');
--
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (6,1,2,1,'Libelle long du budget 6','budget 6');
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (7,1,2,1,'Libelle long du budget 7','budget 7');
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (8,1,2,1,'Libelle long du budget 8','budget 8');
--INSERT INTO budget (id,idcalendriermois,idcommande,numerocomplement,libellelong,libellecourt) VALUES (9,1,2,1,'Libelle long du budget 9','budget 9');

--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (1,1,1,111.11);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (2,2,1,222.22);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (3,1,2,333.33);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (4,2,2,444.44);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (5,1,3,555.55);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (6,2,3,666.66);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (7,1,4,777.77);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (8,2,4,888.88);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (9,1,5,999.99);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (10,6,1,101010.10);
--INSERT INTO detailbudgetmontant (id,idrubriqueaffaire,idbudget,montant) VALUES (11,7,1,111111.11);
--
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (1,1,1,11,11,11);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (2,2,1,22,22,22);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (3,3,2,33,33,33);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (4,1,2,44,44,44);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (5,2,3,55,55,55);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (6,3,3,66,66,66);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (7,1,4,77,77,77);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (8,2,4,88,88,88);
--INSERT INTO detailbudgetheure (id,idgroupeheure,idbudget,nombreheures,tauxdevis,heuresvalorisees) VALUES (9,3,5,99,99,99);


--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (1,1,1,'2008-01-01','Libelle histo 1','1','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (2,1,1,'2008-02-02','Libelle histo 2','1','0');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (3,1,1,'2008-03-03','Libelle histo 3','0','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (4,1,2,'2008-04-04','Libelle histo 4','0','0');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (5,1,2,'2008-05-05','Libelle histo 5','1','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (6,1,1,'2008-06-06','Libelle histo 6','1','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (7,1,2,'2008-07-07','Libelle histo 7','0','0');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (8,1,2,'2008-08-08','Libelle histo 8','0','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (9,1,1,'2008-01-01','Libelle histo 9','1','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (10,1,1,'2008-02-02','Libelle histo 10','1','0');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (11,1,1,'2008-03-03','Libelle histo 11','0','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (12,1,2,'2008-04-04','Libelle histo 12','0','0');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (14,1,2,'2008-05-05','Libelle histo 13','1','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (15,1,1,'2008-06-06','Libelle histo 14','1','1');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (16,1,2,'2008-07-07','Libelle histo 15','0','0');
--INSERT INTO historiquecommande (id,idcommande,idutilisateur,date,libelle,editable,etatsynthese) VALUES (17,1,2,'2008-08-08','Libelle histo 16','0','1');

INSERT INTO famille (id,idsociete,code,libellelong,libellecourt,actif) VALUES (1,1,'CO1','Libelle de la famille 1','Libelle 1','1');
INSERT INTO famille (id,idsociete,code,libellelong,libellecourt,actif) VALUES (2,1,'CO2','Libelle de la famille 2','Libelle 2','1');
INSERT INTO famille (id,idsociete,code,libellelong,libellecourt,actif) VALUES (3,1,'CO3','Libelle de la famille 3','Libelle 3','1');

INSERT INTO magasin (id,idsociete,code,libelle) VALUES (1,1,'CODE 1','Libelle magasin 1');
INSERT INTO magasin (id,idsociete,code,libelle) VALUES (2,1,'CODE 2','Libelle magasin 2');
INSERT INTO magasin (id,idsociete,code,libelle) VALUES (3,1,'CODE 3','Libelle magasin 3');
INSERT INTO magasin (id,idsociete,code,libelle) VALUES (4,1,'CODE 4','Libelle magasin 4');
INSERT INTO magasin (id,idsociete,code,libelle) VALUES (5,1,'CODE 5','Libelle magasin 5');

INSERT INTO familleoe (id,idordreexecution,idmagasin,idfamille,tempsalloue,daterealisation,tempsrealisation,tempspointage,livre) VALUES (1,1,1,1,1,'2008-02-02',1,1,'1');
INSERT INTO familleoe (id,idordreexecution,idmagasin,idfamille,tempsalloue,daterealisation,tempsrealisation,tempspointage,livre) VALUES (2,1,2,2,2,'2008-03-03',2,2,'1');

INSERT INTO article (id,idsociete,fabricant,reference,description,udm,prixunitaire,stocke,poids,ecotaxe) VALUES (1,1,'Fab 1','Ref 1','Description 1','udm 1',11,'1',1,'1');
INSERT INTO article (id,idsociete,fabricant,reference,description,udm,prixunitaire,stocke,poids,ecotaxe) VALUES (2,1,'Fab 2','Ref 2','Description 2','udm 2',22,'1',2,'1');
INSERT INTO article (id,idsociete,fabricant,reference,description,udm,prixunitaire,stocke,poids,ecotaxe) VALUES (3,1,'Fab 3','Ref 3','Description 3','udm 3',33,'1',3,'1');
INSERT INTO article (id,idsociete,fabricant,reference,description,udm,prixunitaire,stocke,poids,ecotaxe) VALUES (4,1,'Fab 4','Ref 4','Description 4','udm 4',44,'1',4,'1');
INSERT INTO article (id,idsociete,fabricant,reference,description,udm,prixunitaire,stocke,poids,ecotaxe) VALUES (5,1,'Fab 5','Ref 5','Description 5','udm 5',55,'1',5,'1');
INSERT INTO article (id,idsociete,fabricant,reference,description,udm,prixunitaire,stocke,poids,ecotaxe) VALUES (6,1,'Fab 6','Ref 6','Description 6','udm 6',66,'1',6,'1');
INSERT INTO article (id,idsociete,fabricant,reference,description,udm,prixunitaire,stocke,poids,ecotaxe) VALUES (7,1,'Fab 7','Ref 7','Description 7','udm 7',77,'1',7,'1');

INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (1,1,1,1,0,1,1,1);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (2,2,1,2,1,2,2,2);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (3,3,1,3,2,3,3,3);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (4,4,1,4,3,4,4,4);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (5,5,1,5,4,5,5,5);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (6,4,2,2,0,6,6,6);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (7,3,2,6,2,7,7,7);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (8,3,2,4,3,8,8,8);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (9,2,2,7,4,9,9,9);
INSERT INTO articleoe (id,idmagasin,idfamilleoe,idarticle,idref_etatarticleoe,quantitedemandee,quantitesortie,pmpsortie) VALUES (10,1,2,2,0,10,10,10);
--
--INSERT INTO lignebonlivraison (id,idfamilleoe,idbonlivraison,idref_typelignebl,numeroligne,quantite,numerocolis) VALUES (1,1,1,1,1,11,11);
--INSERT INTO lignebonlivraison (id,idfamilleoe,idbonlivraison,idref_typelignebl,numeroligne,quantite,numerocolis) VALUES (2,1,1,1,2,22,22);
--INSERT INTO lignebonlivraison (id,idfamilleoe,idbonlivraison,idref_typelignebl,numeroligne,quantite,numerocolis) VALUES (3,1,1,2,3,33,33);
--INSERT INTO lignebonlivraison (id,idfamilleoe,idbonlivraison,idref_typelignebl,numeroligne,quantite,numerocolis) VALUES (4,2,1,2,4,44,44);
--INSERT INTO lignebonlivraison (id,idfamilleoe,idbonlivraison,idref_typelignebl,numeroligne,quantite,numerocolis) VALUES (5,2,1,1,5,55,55);
--INSERT INTO lignebonlivraison (id,idfamilleoe,idbonlivraison,idref_typelignebl,numeroligne,quantite,numerocolis) VALUES (6,2,1,1,6,66,66);
--
--INSERT INTO articlelignebonlivraison (id,idarticle,idlignebonlivraison,reference,description,udm,poids) VALUES (1,1,1,'Référence 1','Description 1','UDM 1',11.11);
--INSERT INTO articlelignebonlivraison (id,idarticle,idlignebonlivraison,reference,description,udm,poids) VALUES (2,3,2,'Référence 2','Description 2','UDM 2',22.22);
--INSERT INTO articlelignebonlivraison (id,idarticle,idlignebonlivraison,reference,description,udm,poids) VALUES (3,2,3,'Référence 3','Description 3','UDM 3',33.33);
--
--INSERT INTO commentairelignebonlivraison (id,idlignebonlivraison,texte) VALUES (1,4,'Commentaire 1');
--INSERT INTO commentairelignebonlivraison (id,idlignebonlivraison,texte) VALUES (2,5,'Commentaire 2');
--
--INSERT INTO encaissementclient (id,idfactureclient,idcalendrier,idaffaire,dateencaissement,libelle,montantht) VALUES (1,1,1,1,'2008-01-01','libelle encaissement 1',111111.11);
--INSERT INTO encaissementclient (id,idfactureclient,idcalendrier,idaffaire,dateencaissement,libelle,montantht) VALUES (2,1,2,1,'2008-02-02','libelle encaissement 2',222.22);
--INSERT INTO encaissementclient (id,idfactureclient,idcalendrier,idaffaire,dateencaissement,libelle,montantht) VALUES (3,1,3,1,'2008-03-03','libelle encaissement 3',33.3);
--
--INSERT INTO reste (id,idcalendriermois,idcommande,datemiseenplace,saisievalidee,commandeterminee) VALUES (1,1,1,'2001-01-01','0','0');

--INSERT INTO resteheure (id,idreste,idgroupeheure,alloue,tauxalloue,montantvalorisealloue,realise,tauxrealise,montantvaloriserealise,reste) VALUES (1,1,1,1,1,1,1,1,1,1);
--INSERT INTO resteheure (id,idreste,idgroupeheure,alloue,tauxalloue,montantvalorisealloue,realise,tauxrealise,montantvaloriserealise,reste) VALUES (2,1,2,2,2,2,2,2,2,2);
--INSERT INTO resteheure (id,idreste,idgroupeheure,alloue,tauxalloue,montantvalorisealloue,realise,tauxrealise,montantvaloriserealise,reste) VALUES (3,1,3,3,3,3,3,3,3,3);
--
--INSERT INTO restemontant (id,idreste,idrubriqueaffaire,alloue,realise,reste,tauxdefrais) VALUES (1,1,1,1,1,1,1);
--INSERT INTO restemontant (id,idreste,idrubriqueaffaire,alloue,realise,reste,tauxdefrais) VALUES (2,1,2,1,1,1,1);
--INSERT INTO restemontant (id,idreste,idrubriqueaffaire,alloue,realise,reste,tauxdefrais) VALUES (3,1,3,1,1,1,1);
--INSERT INTO restemontant (id,idreste,idrubriqueaffaire,alloue,realise,reste,tauxdefrais) VALUES (4,1,4,1,1,1,1);
--INSERT INTO restemontant (id,idreste,idrubriqueaffaire,alloue,realise,reste,tauxdefrais) VALUES (5,1,5,1,1,1,1);

INSERT INTO commandefournisseur (id,identreprise,idaffaire,idcalendrier,numero,datecommande,montantht,comptecomptable,libelle,codetiers,libelletiers) VALUES (1,1,1,1,100,'2008-12-12',452.5,'COMPT1','commande fournisseur 1',1,'libelle tiers 1');
INSERT INTO commandefournisseur (id,identreprise,idaffaire,idcalendrier,numero,datecommande,montantht,comptecomptable,libelle,codetiers,libelletiers) VALUES (2,1,1,1,200,'2008-11-11',22.22,'COMPT2','commande fournisseur 2',2,'libelle tiers 2');
INSERT INTO commandefournisseur (id,identreprise,idaffaire,idcalendrier,numero,datecommande,montantht,comptecomptable,libelle,codetiers,libelletiers) VALUES (3,1,1,1,300,'2008-10-10',333.33,'COMPT3','commande fournisseur 3',3,'libelle tiers 3');

INSERT INTO commandefournisseurligne (id,idcommandefournisseur,noligne,codearticle,libellearticle,unite,quantite,montantunitaire) VALUES (1,1,1,'COD1','Libelle article 1','kg',1,11.1);
INSERT INTO commandefournisseurligne (id,idcommandefournisseur,noligne,codearticle,libellearticle,unite,quantite,montantunitaire) VALUES (2,1,4,'COD4','Libelle article 4','kg',4,44.4);
INSERT INTO commandefournisseurligne (id,idcommandefournisseur,noligne,codearticle,libellearticle,unite,quantite,montantunitaire) VALUES (3,1,3,'COD3','Libelle article 3','kg',3,33.3);
INSERT INTO commandefournisseurligne (id,idcommandefournisseur,noligne,codearticle,libellearticle,unite,quantite,montantunitaire) VALUES (4,1,2,'COD2','Libelle article 2','kg',2,22.2);

INSERT INTO facturefournisseur (id,idcommandefournisseur,idcalendrier,idaffaire,numerofacture,datefacture,libelle,comptecomptable,montantht) VALUES (1,1,1,1,100,'2008-01-01','libelle facture fournisseur 1','COMPT1',111.11);
INSERT INTO facturefournisseur (id,idcommandefournisseur,idcalendrier,idaffaire,numerofacture,datefacture,libelle,comptecomptable,montantht) VALUES (2,1,1,1,200,'2008-02-02','libelle facture fournisseur 2','COMPT2',222.22);
INSERT INTO facturefournisseur (id,idcommandefournisseur,idcalendrier,idaffaire,numerofacture,datefacture,libelle,comptecomptable,montantht) VALUES (3,1,1,1,300,'2008-03-03','libelle facture fournisseur 3','COMPT3',333.33);
