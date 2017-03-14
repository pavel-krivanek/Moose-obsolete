tests
testForeignKey
	self 
		parse: ' FOREIGN KEY' "result should be 'FOREIGN KEY "
		rule: #foreignKey.

	self 
		parse: 'Foreign key ' "result should be 'Foreign key' "
		rule: #foreignKey.