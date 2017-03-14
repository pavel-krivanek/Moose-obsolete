tests
testPrimaryKey
	self 
		parse: ' PRIMARY KEY' "result should be 'PRIMARY KEY "
		rule: #primaryKey.

	self 
		parse: 'Primary key ' "result should be 'Primary key' "
		rule: #primaryKey.