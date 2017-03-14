tests
testTableConstraintPrimaryKeyPartOneUniqueColumn

	self 
		parse: ' unique (ColFirst) on conflict fail '
		rule: #tableConstraintPrimaryKeyPart.