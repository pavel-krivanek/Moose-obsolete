tests
testTableConstraintForeignKeyPartOneFK

	self 
		parse: ' foreign key (ColFirst) references tableName'
		rule: #tableConstraintForeignKeyPart.