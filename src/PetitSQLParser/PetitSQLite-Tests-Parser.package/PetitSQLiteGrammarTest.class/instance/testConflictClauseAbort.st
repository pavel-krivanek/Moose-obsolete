tests
testConflictClauseAbort
	self 
		parse: ' ON CONFLICT abort'
		rule: #conflictClause.