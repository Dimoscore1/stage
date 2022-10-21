CREATE TABLE `conducteur` (`id` int(10) unsigned NOT NULL auto_increment, `conducteur` varchar(100) default NULL, `telephone` varchar(20) default NULL, `mail` varchar(100) default NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `commande` ADD COLUMN (`idconducteur` int(10) unsigned DEFAULT NULL, KEY `commande_I15` (`idconducteur`), CONSTRAINT `commande_FK15` FOREIGN KEY (`idconducteur`) REFERENCES `conducteur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION);
ALTER TABLE `bonlivraison` ADD COLUMN (`idconducteur` int(10) unsigned DEFAULT NULL, KEY `bonlivraison_I6` (`idconducteur`), CONSTRAINT `bonlivraison_FK6` FOREIGN KEY (`idconducteur`) REFERENCES `conducteur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION);
ALTER TABLE `commande` ADD COLUMN (`idcommandeliee` int(10) unsigned default NULL, KEY`commande_I16` (`idcommandeliee`), CONSTRAINT `commande_FK16` FOREIGN KEY (`idcommandeliee`) REFERENCES `commande` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION);

/* Copie des conducteurs des commandes dans la table conducteur */
INSERT INTO conducteur (conducteur)
select conducteur from commande where conducteur is not null and conducteur != "" group by conducteur;


/* MAJ des conducteurs dans les commandes */
set sql_safe_updates = 0;
/*
update commande c
set idconducteur = (select MIN(id) from conducteur where conducteur = c.conducteur)
WHERE conducteur is not null and conducteur != "";

UTILISER LE EXCEL
*/


/* MAJ des code udm des articles */
update article set codeudm = "U" where codeudm = "EA"; 
update article set codeudm = "M" where codeudm = "MTR";

ALTER TABLE `gestioncde`.`commande` 
ADD COLUMN `dateLancementProd` DATE NULL AFTER `idcommandeliee`;

UPDATE bonlivraison bl set bl.idconducteur = (select c.idconducteur from commande c where c.id = (select idcommande from ordreexecution oe where oe.id = bl.idordreexecution));

set sql_safe_updates = 1;