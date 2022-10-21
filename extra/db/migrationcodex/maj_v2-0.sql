/* Bogue #9998 modification sur la taille de la colonne numerocommandeachat(table commande) */
alter table commande modify column numeroCommandeAchat varchar(20);