tests
testForeignKeyClauseNotPartNotDeferrable
	
	self 
		parse: 'not Deferrable '
		rule: #foreignKeyClauseNotPart.
