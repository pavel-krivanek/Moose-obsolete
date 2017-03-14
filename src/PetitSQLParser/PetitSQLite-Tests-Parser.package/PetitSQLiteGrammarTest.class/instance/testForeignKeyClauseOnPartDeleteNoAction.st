tests
testForeignKeyClauseOnPartDeleteNoAction

	self 
		parse: 'ON DELETE No aCtion'
		rule: #foreignKeyClauseOnPart.