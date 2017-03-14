tests
testTableConstraintPrimaryKeyPartMoreUniqueColumns

	self 
		parse: ' unIQUe (ColFirst, colSecond) on conflict fail '
		rule: #tableConstraintPrimaryKeyPart.