tests
testSelectStatementComplexWithCountStar
	
	self 
		parse: ' SELECT COUNT(*) FROM USER_TAB_COLUMNS C WHERE C.TABLE_NAME = ''A_GLOB'' AND C.COLUMN_NAME = ''ESC_ID'''
		rule: #selectStatement.