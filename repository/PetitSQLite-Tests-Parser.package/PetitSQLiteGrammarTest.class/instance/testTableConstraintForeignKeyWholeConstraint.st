tests
testTableConstraintForeignKeyWholeConstraint

	self 
		parse: 'CONSTRAINT region
    FOREIGN KEY (region )
    REFERENCES mydb.Region (idRegion )
    ON DELETE NO ACTION
    ON UPDATE CASCADE'
		rule: #tableConstraint.