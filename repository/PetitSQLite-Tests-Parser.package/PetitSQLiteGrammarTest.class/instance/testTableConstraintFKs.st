tests
testTableConstraintFKs
	self 
		parse: ' CONSTRAINT testName foreign key (ColFirst, colSecond) references foreignTableName (foo) '
		rule: #tableConstraint.
