tests
testSelectStatementStarFrom
	
	self 
		parse: 'select * from tableName' 
		rule: #selectStatement.