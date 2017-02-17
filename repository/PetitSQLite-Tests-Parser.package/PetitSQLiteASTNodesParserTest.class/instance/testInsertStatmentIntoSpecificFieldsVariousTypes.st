tests
testInsertStatmentIntoSpecificFieldsVariousTypes
	"'INSERT INTO Persons VALUES (4,''Nilsen'', ''Johan'', ''Bakken2'', ''Stavanger'')'"
	super testInsertStatmentIntoSpecificFieldsVariousTypes.
	
	
	self assert: (result isMemberOf: SQLInsertStatementNode).
	self assert: result table equals: 'Persons'.
	
	self assert: result affectedColumns size equals: 0.
	
	self assert: result values size equals: 5.
	self assert: result values first equals: '4'.
	self assert: result values second equals: '''Nilsen'''.
	self assert: result values third equals: '''Johan'''.
	self assert: (result values at: 4) equals: '''Bakken2'''.
	self assert: (result values at: 5) equals: '''Stavanger'''.