tests
testForeignKeyClauseOnPartDeleteSetDefault
	self 
		parse: 'ON DELETE SET Default '
		rule: #foreignKeyClauseOnPart.
