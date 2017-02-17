tests
testSelectStatementWithQuestionMarks
	
	self 
		parse: ' select NVALUE from APPDEFAULT where DEFGROUP = ? and SVALUE = ?'
		rule: #selectStatement.