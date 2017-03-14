tests
testTableConstraintForeignKeyPartMoreFKsAndMatchClause

	self 
		parse: ' foreign key (ColFirst, colSecond) references tableName match testName'
		rule: #tableConstraintForeignKeyPart.