tests
testCreateTableWithConstraints

	self 
		parse:	'CREATE  TABLE IF NOT EXISTS mydb.Delegation (
  idDelegation INT NOT NULL ,
  name VARCHAR(45) NOT NULL ,
  region INT NOT NULL ,
  idCrop INT NULL ,
  PRIMARY KEY (idDelegation) ,
  
  CONSTRAINT region
    FOREIGN KEY (region )
    REFERENCES mydb.Region (idRegion )
    ON DELETE NO ACTION
    ON UPDATE CASCADE)'
		rule:#createTable