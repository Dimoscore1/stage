alter table coefficient add column idcalendriermois INTEGER UNSIGNED NULL;
alter table coefficient add INDEX coefficient_I3(idcalendriermois);
alter table coefficient add FOREIGN KEY  coefficient_FK3(idcalendriermois) REFERENCES calendrier(id);
alter table coefficient drop FOREIGN KEY coefficient_FK2;
ALTER TABLE coefficient MODIFY COLUMN idcalendriersemaine INT(10) UNSIGNED DEFAULT NULL;

insert into coefficient (identreprise,idcalendriermois,idutilisateur,heuresprevra,heuresprevbe,heuresprevatelier,heurestotra,heurestotbe,heurestotatelier,heuresabsra,heuresabsbe,heuresabsatelier)
select c.identreprise, m.id,1,
sum(c.heuresprevra), sum(c.heuresprevbe), sum(c.heuresprevatelier),
sum(c.heurestotra), sum(c.heurestotbe), sum(c.heurestotatelier),
sum(c.heuresabsra), sum(c.heuresabsbe), sum(c.heuresabsatelier)
from coefficient c, calendrier s, calendrier m
where c.idcalendriersemaine=s.id
and m.mois=s.mois
and m.annee=s.annee
and m.idref_typedate=2
group by c.identreprise, m.id, 1
;

alter table coefficient modify column idcalendriermois INTEGER UNSIGNED not NULL;
delete from coefficient where idcalendriersemaine is not null;
alter table coefficient drop column idcalendriersemaine;

select * from coefficient;