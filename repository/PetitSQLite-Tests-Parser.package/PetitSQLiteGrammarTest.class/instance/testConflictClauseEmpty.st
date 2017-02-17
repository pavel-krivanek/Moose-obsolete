tests
testConflictClauseEmpty
	self 
		parse: '' "result should be nil"
		rule: #conflictClause.
