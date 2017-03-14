tests
testConflictClauseReplace
	self 
		parse: ' ON CONFLICT Replace'
		rule: #conflictClause.