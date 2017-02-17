tests
testTableConstraintPrimaryKeyPartWithUniqueOnOneColumn

	self 
		parse: ' unique ( colSecond) '
		rule: #tableConstraintPrimaryKeyPart.