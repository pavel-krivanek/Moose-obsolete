tests
testInsertStatmentOneValue
	"'INSERT INTO table_name VALUES (value1)'"
	super testInsertStatmentOneValue.

	self assert: (result isMemberOf: SQLInsertStatementNode).
	self assert: result table equals: 'table_name'.
	
	self assert: result affectedColumns size equals: 0.
	
	self assert: result values size equals: 1.
	self assert: result values first equals: 'value1'.