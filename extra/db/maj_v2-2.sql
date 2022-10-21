/* Bugzilla 10143 - ajout nouveau profil pour les commerciaux */
INSERT INTO profil (id,code,libelle) VALUES (25,'Commercial', 'IEP - Commerciaux');

/*Rôle pour containdre la création de commande à SAV pour les commerciaux*/
INSERT INTO role (id,code,libelle) VALUES (122, 'commande.creerNOTcommerciaux','TODO');

/*Ajout du nouveau role aux profils autres que commerciaux*/
INSERT INTO profil_role (idprofil,idrole) VALUES (1,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (3,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (4,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (5,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (6,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (7,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (8,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (10,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (13,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (13,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (14,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (15,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (16,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (17,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (18,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (19,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (20,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (21,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (22,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (23,122);
INSERT INTO profil_role (idprofil,idrole) VALUES (24,122);

/*Action commande pour profil commerciaux*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,29); /*commande.consultationtransverse*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,30); /*commande.lister*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,33); /*commande.gerer*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,69); /*commande.consulter*/


/*Action bon de livraison pour profil commerciaux*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,37); /*bonlivraison.consulter*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,38); /*bonlivraison.edit*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,39); /*bonlivraison.edit.etude*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,40); /*bonlivraison.edit.manuel*/
INSERT INTO profil_role (idprofil,idrole) VALUES (25,43); /*bonlivraison.lister*/

/* Bugzilla 10019 - création d'un champs date de commande */
alter table commande add datecommande date;