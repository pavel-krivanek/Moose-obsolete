tests
testInsertStatmentIntoSpecificField
	self 
		parse: 'INSERT INTO table_name (column1) VALUES (value1)'
		rule: #insertStatement.