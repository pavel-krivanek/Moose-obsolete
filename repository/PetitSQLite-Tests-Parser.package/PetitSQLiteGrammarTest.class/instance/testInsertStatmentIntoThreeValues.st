tests
testInsertStatmentIntoThreeValues
	self 
		parse: 'INSERT INTO table_name VALUES (value1, value2, value3)'
		rule: #insertStatement.