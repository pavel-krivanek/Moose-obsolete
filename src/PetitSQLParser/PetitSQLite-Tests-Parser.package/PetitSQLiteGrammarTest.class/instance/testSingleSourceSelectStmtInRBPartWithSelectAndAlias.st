tests
testSingleSourceSelectStmtInRBPartWithSelectAndAlias

	self 
		parse: '( select * from tableName ) tb'
		rule: #singleSourceSelectStmtInRBPart.