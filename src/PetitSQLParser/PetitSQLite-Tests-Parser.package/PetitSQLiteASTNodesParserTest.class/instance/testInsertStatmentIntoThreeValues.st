tests
testInsertStatmentIntoThreeValues
	"'INSERT INTO table_name VALUES (value1, value2, value3)'"
	super testInsertStatmentIntoThreeValues.
	
	self assert: (result isMemberOf: SQLInsertStatementNode).
	self assert: result table equals: 'table_name'.
	
	self assert: result affectedColumns size equals: 0.
	
	self assert: result values size equals: 3.
	self assert: result values first equals: 'value1'.
	self assert: result values second equals: 'value2'.
	self assert: result values third equals: 'value3'.