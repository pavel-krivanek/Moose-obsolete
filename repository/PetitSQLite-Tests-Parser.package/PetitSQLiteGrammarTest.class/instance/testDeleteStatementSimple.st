tests
testDeleteStatementSimple

	self 
		parse: 'DELETE FROM TABLEName'
		rule: #deleteStatement.