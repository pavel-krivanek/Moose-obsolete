tests
testConflictClauseFail
	self 
		parse: ' ON conflict FAIL'
		rule: #conflictClause.
