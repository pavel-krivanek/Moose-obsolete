tests
testTableConstraintForeignKeyPartOneFKReferencesTableAndFoo

	self 
		parse: ' foreign key (ColFirst) references tableName (foo)'
		rule: #tableConstraintForeignKeyPart.