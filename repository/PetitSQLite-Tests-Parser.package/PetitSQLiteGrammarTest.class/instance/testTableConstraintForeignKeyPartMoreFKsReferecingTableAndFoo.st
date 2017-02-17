tests
testTableConstraintForeignKeyPartMoreFKsReferecingTableAndFoo

	self 
		parse: ' foreign key (ColFirst, colSecond) references tableName (foo)'
		rule: #tableConstraintForeignKeyPart.