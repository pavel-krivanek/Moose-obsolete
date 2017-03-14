tests
testTableConstraintPrimaryKeyPartWithUniqueOnMoreColumns

	self 
		parse: ' unique (ColFirst, colSecond)'
		rule: #tableConstraintPrimaryKeyPart.