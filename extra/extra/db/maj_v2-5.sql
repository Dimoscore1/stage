INSERT INTO role (code, libelle) 
VALUES 
("planning.edit", "TODO"),
("planning.consult", "TODO");

INSERT INTO profil_role (idprofil, idrole)
VALUES
-- Administrateur
(1, (SELECT id from role where code="planning.edit")),
-- responsable informatque
(22, (SELECT id from role where code="planning.consult")),
-- IEP - Suivi de commande
(3, (SELECT id from role where code="planning.edit")),
-- IEP - Bon de livraison etudes
(4, (SELECT id from role where code="planning.edit")),
-- IEP - Saisie de commandes - Facturation
(6, (SELECT id from role where code="planning.edit")),
-- IEP - Saisie  de  commandes.1
(7, (SELECT id from role where code="planning.edit")),
-- Responsable administratif
(8, (SELECT id from role where code="planning.consult")),
-- consultation
(24, (SELECT id from role where code="planning.consult"))

CREATE TABLE status_commande
(
	id integer(10) auto_increment primary key not null,
    libelle varchar(50)
);

ALTER TABLE commande ADD column idStatus integer(10);
ALTER TABLE commande ADD constraint foreign key (idStatus) references status_commande(id);

INSERT INTO status_commande (libelle)
VALUES
("constant.planning.delais_non_definis"),
("constant.planning.delais_determines"),
("constant.planning.production"),
("constant.planning.en_attente");