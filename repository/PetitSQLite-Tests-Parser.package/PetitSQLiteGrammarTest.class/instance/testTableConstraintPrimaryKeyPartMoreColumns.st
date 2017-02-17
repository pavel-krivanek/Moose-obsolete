tests
testTableConstraintPrimaryKeyPartMoreColumns

	self 
		parse: ' primary key (ColFirst, colSecond)'
		rule: #tableConstraintPrimaryKeyPart.