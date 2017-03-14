tests
testForeignKeyClauseNotPartNotDeferrableInitiallyImmediate
	self 
		parse: 'not Deferrable initially immediate'
		rule: #foreignKeyClauseNotPart.