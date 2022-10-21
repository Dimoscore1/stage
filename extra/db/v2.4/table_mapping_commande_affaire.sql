CREATE TABLE `commandeetudeaffaire` (
  `idcommande` int(10) unsigned NOT NULL,
  `idaffaire` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcommande`,`idaffaire`),
  KEY `commande_etude_I1` (`idcommande`),
  KEY `affaire_commande_I2` (`idaffaire`),
  CONSTRAINT `commande_etude_I1` FOREIGN KEY (`idcommande`) REFERENCES `commande` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `affaire_commande_I2` FOREIGN KEY (`idaffaire`) REFERENCES `affaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;