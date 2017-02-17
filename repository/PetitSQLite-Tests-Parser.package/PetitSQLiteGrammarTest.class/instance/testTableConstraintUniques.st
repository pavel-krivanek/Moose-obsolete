tests
testTableConstraintUniques
	self 
		parse: ' CONSTRAINT testName unique (ColFirst, colSecond) '
		rule: #tableConstraint.