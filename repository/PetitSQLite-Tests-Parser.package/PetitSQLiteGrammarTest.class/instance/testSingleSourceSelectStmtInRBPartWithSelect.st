tests
testSingleSourceSelectStmtInRBPartWithSelect

	self 
		parse: '( select * from tableName )'
		rule: #singleSourceSelectStmtInRBPart.