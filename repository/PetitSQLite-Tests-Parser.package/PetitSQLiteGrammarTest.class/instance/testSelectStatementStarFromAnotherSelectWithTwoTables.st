tests
testSelectStatementStarFromAnotherSelectWithTwoTables

	self 
		parse: ' select * from (select * from tablename, pippo) ' 
		rule: #selectStatement.