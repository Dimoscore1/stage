/* BugZilla #9390 - Changement de code société - Evol JEDA */
/* Attention : requête typée purement MySQL (modify au lieu de alter) */
alter table societe modify column code varchar(4);
update societe set code='F469' where code='618';

/* BugZilla #9392 - Changement de code entreprise - Evol JEDA */
/* Attention : requête typée purement MySQL (modify au lieu de alter) */
alter table entreprise modify column code varchar(5);
update entreprise set code='13763', resastockemetteur='F469_IEP, M. IEP' where code='001' and libellelong='IEP';

alter table isfactureentete modify column codesociete varchar(4), modify column codeentreprise varchar(5);
alter table isfactureligne modify column codesociete varchar(4), modify column codeentreprise varchar(5);

/* BugZilla #9386 - Exporter les affaires - Ajout d'un nouveau rôle - Evol JEDA */
insert into role values(NULL, 'interfaces.affaire.exporter', 'TODO');
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='interfaces.affaire.exporter')
);

/* BugZilla #9389 - Exporter les pointages vers Codex - Evol JEDA */
insert into role values(NULL, 'interfaces.pointage.exporter', 'TODO');
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='interfaces.pointage.exporter')
);

/* BugZilla #9405 - Intégrer les fournisseurs - Evol JEDA */
insert into role values(NULL, 'fournisseur.gerer', 'TODO');
insert into role values(NULL, 'fournisseur.lister', 'TODO');
insert into role values(NULL, 'facture.exporter', 'TODO');
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='fournisseur.gerer')
);
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='fournisseur.lister')
);
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='facture.exporter')
);

/* Correction Effets de Bord de la migration - JEDA */
alter table isaffaire modify column codesociete varchar(4);
alter table isaffaire modify column codeentreprise varchar(5);
alter table isaffaire add affairecodex varchar(24);

/* Bugzilla #9397 - Flux Analytique - Numérotation des affaires  **/
ALTER TABLE affaire add affairecodex VARCHAR(24);

/* Bugzilla #9394 - Rubirique Affaire - Numérotaion CODEX rubrique, Libelle rubrique CODEX(long & court)  **/
ALTER TABLE rubriqueaffaire ADD codecodex VARCHAR(24), ADD libellelongcodex VARCHAR(80), ADD libellecourtcodex VARCHAR(80);

/* Bugzilla #9394 - Rubirique Affaire - Ajout des codes codex et libélles pour les rubriques  **/
UPDATE rubriqueaffaire SET codecodex = "BP_FRN", libellelongcodex = "Fournitures (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "ACH01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_9CASA", libellelongcodex = "FG sur achat (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "FGACH01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_FCH", libellelongcodex = "Autres dépenses (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "STK01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_FCH", libellelongcodex = "Autres dépenses (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "STK02" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_9FG", libellelongcodex = "FG sur autres dépenses (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "FGSSS01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_STSE", libellelongcodex = "Sous traitance site externe (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "STE01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_FCH", libellelongcodex = "Autres dépenses (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "TRA01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_9FG", libellelongcodex = "FG sur autres dépenses (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "FGTRANS" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_STE", libellelongcodex = "Sous traitance étude externe (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "STM01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_DEP", libellelongcodex = "Déplacement / autres indemnités (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "NDFG01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_FCH", libellelongcodex = "Autres dépenses (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "DDIV01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_EQU", libellelongcodex = "Location équipement (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "AMO01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_PRT", libellelongcodex = "Transfert PRT devis (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "RUB05" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_9FFI", libellelongcodex = "Frais financiers (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "FF01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_9FDSS", libellelongcodex = "Frais devis sans suite (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "FDSS01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "BP_9RDVG", libellelongcodex = "Frais redevance groupe (Dépense)", libellecourtcodex = libellelongcodex WHERE code = "FRG01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "PSTVE", libellelongcodex = "Facturation interne intra Vinci Energies (Recette)", libellecourtcodex = libellelongcodex WHERE code = "FACI01" AND identreprise = 1; 
UPDATE rubriqueaffaire SET codecodex = "P888888", libellelongcodex = "Facturation externe (Recette)", libellecourtcodex = libellelongcodex WHERE code = "FACE01" AND identreprise = 1; 


/**Bugzilla #9393 Données de base budget**/
/** ajout du rôle gestion de budget taux**/
insert into role (code, libelle) values('budgettaux.gerer','TODO');
/** idrole à modifier si l'id du role n'est pas le même **/
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='budgettaux.gerer')
);

/*Procédure pour alimenter la table sectionhistorique pour l'année 2018*/
DROP PROCEDURE IF EXISTS alimenteAnneeSectionHistorique;
delimiter $$
CREATE PROCEDURE alimenteAnneeSectionHistorique(mois_debut INT)
BEGIN
  DECLARE counter INT DEFAULT 6;
  insertion: LOOP   
    IF counter < 12 THEN
      IF NOT EXISTS(SELECT * FROM sectionhistorique WHERE idcalendriermois = mois_debut) THEN  
        insert into sectionhistorique (idcalendriermois,idsection,idutilisateur,taux,actif) values(mois_debut,1,1,0,'1');
        insert into sectionhistorique (idcalendriermois,idsection,idutilisateur,taux,actif) values(mois_debut,2,1,86,'1');
      	insert into sectionhistorique (idcalendriermois,idsection,idutilisateur,taux,actif) values(mois_debut,3,1,56,'1');
        insert into sectionhistorique (idcalendriermois,idsection,idutilisateur,taux,actif) values(mois_debut,4,1,53,'1');
      END IF;
      SET counter = counter + 1;
      SET mois_debut = mois_debut + 1;
      ITERATE insertion;
    END IF;
    LEAVE insertion;
  END LOOP insertion;
END$$
delimiter ;
/**à exécuter après la compilation de la procédure ci-dessus**/
CALL alimenteAnneeSectionHistorique(2000201807);
/**Ajout d'une colonne pour identifier les types taux en train d'utiliser**/
alter table ref_typetauxbudget add isactif char(1);
/**Configure tous les ancients types taux comme inactif**/
update ref_typetauxbudget set isactif = 0;
/**Configure tous les ancients types taux comme inactif**/
alter table ref_typetauxbudget add codecodex varchar(24), add libellecodex varchar(80);
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais devis sans suite", isactif = 1 where libelle = "DSS";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais redevance groupe", isactif = 1 where libelle = "RDG";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais financiers budget", isactif = 1 where libelle = "FFIBudget";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais financiers sur découvert", isactif = 1 where libelle ="FFI";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Produits financiers", isactif = 1 where libelle ="PFI";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais généraux sur achats", isactif = 1 where libelle ="FGACH";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais généraux sur sous-traitance externe", isactif = 1 where libelle ="STE";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais généraux sur sous traitance groupe", isactif = 1 where libelle ="STG";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Frais généraux sur sortie de stock ", isactif = 1 where libelle ="SSTK";
update ref_typetauxbudget set codecodex = libelle, libellecodex = "Autres frais / Achats", isactif = 1 where libelle ="AFA";
/**Ajout d'une colonne dans la table tauxbudget qui défini la possiblité de la modification**/
alter table tauxbudget add editable char(1);
/**Tous les anciens records sont midifiables**/
update tauxbudget set editable = 1;
/** Procédure pour alimenter la table tauxbudget pour l'année 2018 **/
DROP PROCEDURE IF EXISTS alimenteAnneeTauxBudget;
delimiter $$
CREATE PROCEDURE alimenteAnneeTauxBudget(mois_debut INT)
BEGIN
  DECLARE counter INT DEFAULT 6;
  insertion: LOOP   
  	IF counter < 12 THEN
  		IF NOT EXISTS(SELECT * FROM tauxbudget WHERE idcalendrier = mois_debut) THEN  
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,2,mois_debut,1,0.08,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,4,mois_debut,1,0.006,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,5,mois_debut,1,0.02,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,6,mois_debut,1,0.08,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,10,mois_debut,1,0.006,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,12,mois_debut,1,0.0267,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,13,mois_debut,1,0.08,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,14,mois_debut,1,0,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,15,mois_debut,1,0,'1');
	    	insert into tauxbudget (identreprise,idref_typetauxbudget,idcalendrier,idutilisateur,taux,editable) values(1,17,mois_debut,1,0,'1');
    	END IF;
	    SET counter = counter + 1;
    	SET mois_debut = mois_debut + 1;
    	ITERATE insertion;
  	END IF;
    LEAVE insertion;
  END LOOP insertion;
END$$
DELIMITER ;
CALL alimenteAnneeTauxBudget(2000201807);
/**Bugzilla #9395 Ajout des identifiants codex dans la table section**/
ALTER TABLE section ADD codecodex VARCHAR(24), ADD libellelongcodex VARCHAR(80), ADD libellecourtcodex VARCHAR(80);
update section set codecodex = "S01", libellelongcodex = libellelong, libellecourtcodex = libellecourt where libellecourt = "RESPONSABLE AFFAIRE" and identreprise = 1;
update section set codecodex = "S02", libellelongcodex = libellelong, libellecourtcodex = libellecourt where libellecourt = "ETUDES" and identreprise = 1;
update section set codecodex = "S07", libellelongcodex = libellelong, libellecourtcodex = libellecourt where libellecourt = "ATELIER" and identreprise = 1;
update section set codecodex = "S10", libellelongcodex = libellelong, libellecourtcodex = libellecourt where libellecourt = "FONCTIONNELS" and identreprise = 1;

/**Bugzilla #9624 Ajout d'un rôle pour gérer les intérimaires**/
insert into role(code,libelle) values('interimaire.gerer','TODO'); 
insert into profil_role(idprofil,idrole)select profil.id, role.id from role, profil where profil.code="admin" and role.code ='interimaire.gerer';

/** Intégration des clients Codex */
insert into role values(NULL, 'interfaces.clientscodex.integrer', 'TODO');
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='interfaces.clientscodex.integrer')
);

/** Intégration des affaires codex */
insert into role values(NULL, 'interfaces.affairescodex.integrer', 'TODO');
insert into profil_role values(
    NULL,
    (select id from profil as p where p.code='admin'),
    (select id from role as r where r.code='interfaces.affairescodex.integrer')
);

/**Bugzilla #9737 Ajout d'un rôle pour gérer les intérimaires**/
insert into role(code,libelle) values('interfaces.consommationStock.exporter','TODO'); 
insert into profil_role(idprofil,idrole)select profil.id, role.id from role, profil where profil.code="admin" and role.code ='interfaces.consommationStock.exporter';

/** code societe: 618 ==> F469 **/
alter table ieetudefamilleoe modify column codesociete varchar(4);
alter table ieetudearticleoe modify column codesociete varchar(4);

/**Bugzilla #9891 ajout d'une colonne numéro commande d'achat **/
alter table commande add numeroCommandeAchat varchar(10);