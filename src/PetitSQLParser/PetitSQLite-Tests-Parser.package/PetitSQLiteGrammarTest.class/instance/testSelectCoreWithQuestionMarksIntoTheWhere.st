tests
testSelectCoreWithQuestionMarksIntoTheWhere

	self 
		parse: 'select NVALUE from APPDEFAULT where DEFGROUP = ? and SVALUE = ?'
		rule: #selectCore.