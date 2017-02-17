tests
testInsertStatmentOneValue
	self 
		parse: 'INSERT INTO table_name VALUES (value1)'
		rule: #insertStatement.