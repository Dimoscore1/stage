alter table ieetudearticleoe add column nombreColis int(10) unsigned default NULL;
alter table ieetudearticleoe add column poidsTotal decimal(20,5) default NULL;
alter table ieetudearticleoe add column detailBL char(1) default NULL;

alter table articleoe add column nombreColis int(10) unsigned default NULL;
alter table articleoe add column poidsTotal decimal(20,5) default NULL;
alter table articleoe add column detailBL char(1) default NULL;

alter table articlelignebonlivraison add column nombreColis int(10) unsigned default NULL;
alter table articlelignebonlivraison add column detailBL char(1) default '1';
alter table articlelignebonlivraison add column genCode varchar(255) default NULL;

alter table lignebonlivraison add column poids decimal(20,5) default NULL;
alter table lignebonlivraison add column detailBL char(1) default '1';

delete from profil_role where idprofil in (8,22) and idrole=106;