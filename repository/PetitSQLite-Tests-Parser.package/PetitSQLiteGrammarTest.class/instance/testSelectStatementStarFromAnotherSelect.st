tests
testSelectStatementStarFromAnotherSelect

	self 
		parse: ' select * from (select * from tablename) ' 
		rule: #selectStatement.