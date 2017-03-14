tests
testInsertStatmentIntoSpecificFieldsVariousTypes
	self 
		parse: 'INSERT INTO Persons VALUES (4,''Nilsen'', ''Johan'', ''Bakken2'', ''Stavanger'')'
		rule: #insertStatement.