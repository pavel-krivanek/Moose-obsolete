tests
testSelectCoreWithComplexFrom

	self 
		parse: 'select SOMETHING from prefix.TABLE where COLUMN = ''XYZ'''
		rule: #selectCore