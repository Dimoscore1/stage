/* BugZilla #9383 - Interface Entrante Stock - JEDA */
alter table iesortiestock modify column codesociete varchar(4);
alter table iesortiestock modify column codeentreprise varchar(5);