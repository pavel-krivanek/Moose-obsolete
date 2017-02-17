tests
testTableConstraintPK

	self 
		parse: ' CONSTRAINT testName primary key (ColFirst) '
		rule: #tableConstraint.

