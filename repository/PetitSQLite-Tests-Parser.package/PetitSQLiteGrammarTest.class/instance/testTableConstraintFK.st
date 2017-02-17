tests
testTableConstraintFK
	self 
		parse: ' CONSTRAINT testName foreign key (ColFirst) references foreignTableName (foo) '
		rule: #tableConstraint.	