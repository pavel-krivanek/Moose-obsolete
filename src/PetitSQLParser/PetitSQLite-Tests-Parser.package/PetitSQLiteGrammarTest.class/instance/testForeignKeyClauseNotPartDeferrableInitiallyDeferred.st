tests
testForeignKeyClauseNotPartDeferrableInitiallyDeferred

	self 
		parse: 'Deferrable initially deferred'
		rule: #foreignKeyClauseNotPart.
