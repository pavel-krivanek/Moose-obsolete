tests
testForeignKeyClauseOnPartUpdateRestrict
	self 
		parse: 'ON UPDATE restrict'
		rule: #foreignKeyClauseOnPart.
