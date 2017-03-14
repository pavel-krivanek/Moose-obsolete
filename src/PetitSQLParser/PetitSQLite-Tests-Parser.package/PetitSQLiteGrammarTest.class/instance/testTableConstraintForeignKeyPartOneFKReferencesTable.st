tests
testTableConstraintForeignKeyPartOneFKReferencesTable

	self 
		parse: ' foreign key (ColFirst) references tableName'
		rule: #tableConstraintForeignKeyPart.