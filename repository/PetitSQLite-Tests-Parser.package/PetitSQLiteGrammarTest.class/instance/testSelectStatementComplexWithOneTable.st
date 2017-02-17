tests
testSelectStatementComplexWithOneTable
	
	self 
		parse: ' SELECT a,b,c FROM USR_TAB_C WHERE C.TABLE_NAME = ''A_GL'' AND C.CLMN_NAME = ''E_ID'' and test = ''1'''
		rule: #selectStatement.