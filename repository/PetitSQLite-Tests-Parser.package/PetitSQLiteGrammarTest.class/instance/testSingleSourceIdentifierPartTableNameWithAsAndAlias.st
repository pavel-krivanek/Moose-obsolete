tests
testSingleSourceIdentifierPartTableNameWithAsAndAlias
	
	self 
		parse: 'db.table as anotherTableName'
		rule: #singleSourceIdentifierPart.