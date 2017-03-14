tests
testTableConstraintPKsOnConflictFail
	self 
		parse: ' CONSTRAINT testName primary key (ColFirst, colSecond) on conflict fail '
		rule: #tableConstraint.