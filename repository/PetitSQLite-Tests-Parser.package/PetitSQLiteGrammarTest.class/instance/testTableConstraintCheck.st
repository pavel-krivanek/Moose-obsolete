tests
testTableConstraintCheck
	self 
		parse: ' CONSTRAINT testName check (ColFirst) '
		rule: #tableConstraint.