/* BugZilla #9384 - Interface Employés - Evol JEDA */
/* Attention : requête typée purement MySQL (modify au lieu de alter) */
alter table iepersonnelhisto modify column codeentreprise varchar(5);
alter table iepersonnel change column `codesociete` `codeosmose` varchar(20);
alter table iepersonnelhisto change column `codesociete` `codeosmose` varchar(20);

/* Rendre la colonne idgroupeheure nullable */
alter table historiquepersonnel drop foreign key `historiquepersonnel_FK6`;
alter table historiquepersonnel change column idgroupeheure idgroupeheure int(10) unsigned null;
alter table historiquepersonnel add constraint `historiquepersonnel_FK6` foreign key (`idgroupeheure`)
  references groupeheure (`id`) 
  on delete no action
  on update no action;