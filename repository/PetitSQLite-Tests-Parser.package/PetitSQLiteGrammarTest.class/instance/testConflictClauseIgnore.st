tests
testConflictClauseIgnore
	self 
		parse: ' on CONFLICT ignore'
		rule: #conflictClause.