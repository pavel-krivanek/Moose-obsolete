tests
testInsertStatmentIntoSpecificField
	"'INSERT INTO table_name (column1) VALUES (value1)'"
	super testInsertStatmentIntoSpecificField.
	
	self assert: (result isMemberOf: SQLInsertStatementNode).
	self assert: result table equals: 'table_name'.
	self assert: result affectedColumns size equals: 1.
	self assert: result affectedColumns first equals: 'column1'.
	self assert: result values size equals: 1.
	self assert: result values first equals: 'value1'.