tests
testTable
	self 
		parse: ' table' "result should be 'table' "
		rule: #table.
	
	self 
		parse: 'TABLE ' "result should be 'TABLE' "
		rule: #table.