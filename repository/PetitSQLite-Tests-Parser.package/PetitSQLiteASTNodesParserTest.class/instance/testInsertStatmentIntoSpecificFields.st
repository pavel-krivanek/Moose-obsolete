tests
testInsertStatmentIntoSpecificFields

	"'INSERT INTO table_name (column1, column2, column3) VALUES (value1, ''value2'', value3)'"
	super testInsertStatmentIntoSpecificFields.

	self assert: (result isMemberOf: SQLInsertStatementNode).
	self assert: result table equals: 'table_name'.
	
	self assert: result affectedColumns size equals: 3.
	self assert: result affectedColumns first equals: 'column1'.
	self assert: result affectedColumns second equals: 'column2'.
	self assert: result affectedColumns third equals: 'column3'.
	
	self assert: result values size equals: 3.
	self assert: result values first equals: 'value1'.
	self assert: result values second equals: '''value2'''.
	self assert: result values third equals: '''value3'''.