tests
testSingleSourceIdentifierPartTableNameWithAlias
	
	self 
		parse: 'db.table anotherTableName'
		rule: #singleSourceIdentifierPart.
