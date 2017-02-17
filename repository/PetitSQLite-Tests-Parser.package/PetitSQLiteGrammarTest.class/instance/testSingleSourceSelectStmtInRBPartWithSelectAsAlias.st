tests
testSingleSourceSelectStmtInRBPartWithSelectAsAlias

	self 
		parse: '( select * from tableName ) as tb'
		rule: #singleSourceSelectStmtInRBPart.