tests
testConflictClauseRollback
	self 
		parse: ' ON CONFLICT Rollback'
		rule: #conflictClause.
