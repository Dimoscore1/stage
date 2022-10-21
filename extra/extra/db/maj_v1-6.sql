ALTER TABLE typecommande ADD idref_typecommande int;
update typecommande set idref_typecommande = 0 where id IN(1,5,6,7,8,9,10,13,14,15,18,21,22,23 );
update typecommande set idref_typecommande = 1 where id IN(3,4,12,16,19,20 );
update typecommande set idref_typecommande = 2 where id IN(2,11,17 );

ALTER TABLE typecommande ADD defaut char;
update typecommande set defaut = 0;

ALTER TABLE bonlivraison ADD precisionchantier VARCHAR(60);

INSERT INTO role (code,libelle) VALUES ('commande.abandonner','TODO');
INSERT INTO role (code,libelle) VALUES ('admin.societe.integration','TODO');