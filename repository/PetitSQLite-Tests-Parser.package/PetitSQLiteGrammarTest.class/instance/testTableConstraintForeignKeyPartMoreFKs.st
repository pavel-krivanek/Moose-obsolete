tests
testTableConstraintForeignKeyPartMoreFKs

	self 
		parse: ' foreign key (ColFirst, colSecond) references tableName'
		rule: #tableConstraintForeignKeyPart.