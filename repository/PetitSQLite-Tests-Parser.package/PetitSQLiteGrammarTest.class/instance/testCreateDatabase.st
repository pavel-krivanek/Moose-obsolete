tests
testCreateDatabase
	self 
		parse: 'CREATE DATABASE dbName' "result should be #('CREATE' 'DATABASE' 'dbName')"
		rule: #createDatabase.