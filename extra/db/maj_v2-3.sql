/*Ajout des colonnes occupee et occupeur � la table commande pour le message d'avertissement de la commande consult�*/
alter table commande add occupee char;
alter table commande add idoccupeur int DEFAULT 0;