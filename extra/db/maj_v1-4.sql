alter table entreprise add articlesexclusexport varchar(1024);


ALTER TABLE ieaffaire add INDEX ieaffaire_I3(codesociete); 
ALTER TABLE ieaffaire add INDEX ieaffaire_I4(statut); 
ALTER TABLE iearticle add INDEX iearticle_I4(statut);
ALTER TABLE iecascaderubrique add INDEX iecascaderubrique_I2(codesociete);
ALTER TABLE iecascaderubrique add INDEX iecascaderubrique_I3(statut);
ALTER TABLE iecategoriepointage add INDEX iecategoriepointage_I2(codesociete);
ALTER TABLE iecategoriepointage add INDEX iecategoriepointage_I3(statut);
ALTER TABLE iecategoriepointagehisto add INDEX iecategoriepointagehisto_I2(codesociete);
ALTER TABLE iecategoriepointagehisto add INDEX iecategoriepointagehisto_I3(statut);
ALTER TABLE iecdefouentete add INDEX iecdefouentete_I2(codesociete);
ALTER TABLE iecdefouentete add INDEX iecdefouentete_I3(statut);
ALTER TABLE iecdefouligne add INDEX iecdefouligne_I2(codesociete);
ALTER TABLE iecdefouligne add INDEX iecdefouligne_I3(statut);
ALTER TABLE ieclient add INDEX ieclient_I2(codesociete);
ALTER TABLE ieclient add INDEX ieclient_I3(statut);
ALTER TABLE iecommandefournisseur add INDEX iecommandefournisseur_I2(codesociete);
ALTER TABLE iecommandefournisseur add INDEX iecommandefournisseur_I3(statut);
ALTER TABLE iecontratinterimaire add INDEX iecontratinterimaire_I2(codesociete);
ALTER TABLE iecontratinterimaire add INDEX iecontratinterimaire_I3(statut);
ALTER TABLE ieencaissementclient add INDEX ieencaissementclient_I2(codesociete);
ALTER TABLE ieencaissementclient add INDEX ieencaissementclient_I3(statut);
ALTER TABLE ieetudearticleoe add INDEX ieetudearticleoe_I2(codesociete);
ALTER TABLE ieetudearticleoe add INDEX ieetudearticleoe_I3(statut);
ALTER TABLE ieetudefamilleoe add INDEX ieetudefamilleoe_I2(codesociete);
ALTER TABLE ieetudefamilleoe add INDEX ieetudefamilleoe_I3(statut);
ALTER TABLE iefacture add INDEX iefacture_I2(codesociete);
ALTER TABLE iefacture add INDEX iefacture_I3(statut);
ALTER TABLE iefacturefournisseur add INDEX iefacturefournisseur_I2(codesociete);
ALTER TABLE iefacturefournisseur add INDEX iefacturefournisseur_I3(statut);
ALTER TABLE iegroupeheure add INDEX iegroupeheure_I2(codesociete);
ALTER TABLE iegroupeheure add INDEX iegroupeheure_I3(statut);
ALTER TABLE ienatureheure add INDEX ienatureheure_I2(codesociete);
ALTER TABLE ienatureheure add INDEX ienatureheure_I3(statut);
ALTER TABLE iepersonnel add INDEX iepersonnel_I2(codesociete);
ALTER TABLE iepersonnel add INDEX iepersonnel_I3(statut);
ALTER TABLE iepersonnelhisto add INDEX iepersonnelhisto_I2(codesociete);
ALTER TABLE iepersonnelhisto add INDEX iepersonnelhisto_I3(statut);
ALTER TABLE iepointage add INDEX iepointage_I2(codesociete);
ALTER TABLE iepointage add INDEX iepointage_I3(statut);
ALTER TABLE iequantitestock add INDEX iequantitestock_I2(codesociete);
ALTER TABLE iequantitestock add INDEX iequantitestock_I3(statut);
ALTER TABLE ierubriqueaffaire add INDEX ierubriqueaffaire_I2(codesociete);
ALTER TABLE ierubriqueaffaire add INDEX ierubriqueaffaire_I3(statut);
ALTER TABLE ierubriquetemps add INDEX ierubriquetemps_I2(codesociete);
ALTER TABLE ierubriquetemps add INDEX ierubriquetemps_I3(statut);
ALTER TABLE iesection add INDEX iesection_I2(codesociete);
ALTER TABLE iesection add INDEX iesection_I3(statut);
ALTER TABLE iesectiontaux add INDEX iesectiontaux_I2(codesociete);
ALTER TABLE iesectiontaux add INDEX iesectiontaux_I3(statut);
ALTER TABLE iesemainetype add INDEX iesemainetype_I2(codesociete);
ALTER TABLE iesemainetype add INDEX iesemainetype_I3(statut);
ALTER TABLE iesituationentreprise add INDEX iesituationentreprise_I2(codesociete);
ALTER TABLE iesituationentreprise add INDEX iesituationentreprise_I3(statut);
ALTER TABLE iesituationsociete add INDEX iesituationsociete_I2(codesociete);
ALTER TABLE iesituationsociete add INDEX iesituationsociete_I3(statut);
ALTER TABLE iesortiestock add INDEX iesortiestock_I2(codesociete);
ALTER TABLE iesortiestock add INDEX iesortiestock_I3(statut);
ALTER TABLE ietauxbudget add INDEX ietauxbudget_I2(codesociete);
ALTER TABLE ietauxbudget add INDEX ietauxbudget_I3(statut);

ALTER TABLE isaffaire add INDEX isaffaire_I1(codesociete); 
ALTER TABLE isbudgetaffaire add INDEX isbudgetaffaire_I1(codesociete); 
ALTER TABLE isfactureentete add INDEX isfactureentete_I1(codesociete); 
ALTER TABLE isfactureligne add INDEX isfactureligne_I1(codesociete); 
ALTER TABLE ispointage add INDEX ispointage_I1(codesociete); 
ALTER TABLE isreservationstock add INDEX isreservationstock_I1(codesociete); 
ALTER TABLE isve add INDEX isve_I1(codesociete); 



ALTER TABLE societe ADD integrationEnCours INTEGER NULL;
update societe set integrationEnCours = 0;