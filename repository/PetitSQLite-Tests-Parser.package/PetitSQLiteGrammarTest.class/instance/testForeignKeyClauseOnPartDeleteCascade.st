tests
testForeignKeyClauseOnPartDeleteCascade
	
	self 
		parse: ' ON DELETE cascade'
		rule: #foreignKeyClauseOnPart.