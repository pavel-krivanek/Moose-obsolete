tests
testIndex
	self 
		parse: ' Index ' "result should be 'Index' "
		rule: #index.

	self 
		parse: 'INDEX ' "result should be 'INDEX' "
		rule: #index.