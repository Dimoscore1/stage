CREATE TABLE image (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  image BLOB NOT NULL,
  mimetype VARCHAR(30),
  PRIMARY KEY(id)
)
ENGINE=InnoDB;

alter table entreprise add column idimage INTEGER UNSIGNED NULL;
update entreprise set idimage=null;
alter table entreprise add INDEX entreprise_I2(idimage);
alter table entreprise add FOREIGN KEY entreprise_FK2(idimage) REFERENCES image(id);

alter table entreprise add column libelleeditionblpredate VARCHAR(100);
update entreprise set libelleeditionblpredate='Limoges, le' where id=1;