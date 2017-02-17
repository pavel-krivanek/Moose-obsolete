tests
testForeignKeyClauseOnPartUpdatesetNull
	self 
		parse: 'ON UPDATE Set null'
		rule: #foreignKeyClauseOnPart.
