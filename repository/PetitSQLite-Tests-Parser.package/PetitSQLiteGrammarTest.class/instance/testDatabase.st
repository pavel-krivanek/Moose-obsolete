tests
testDatabase
	self 
		parse: ' DATABASE' "result should be 'DATABASE' "
		rule: #database.
	
	self 
		parse: 'DataBase ' "result should be 'DataBase' "
		rule: #database.