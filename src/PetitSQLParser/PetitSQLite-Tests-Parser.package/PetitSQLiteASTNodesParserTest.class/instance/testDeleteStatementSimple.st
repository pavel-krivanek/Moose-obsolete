tests
testDeleteStatementSimple
	super testDeleteStatementSimple.
	
	self assert: (result isMemberOf: SQLDeleteStmtNode).
	self assert: (result from isMemberOf: OrderedCollection).
	self assert: result from size equals: 1.
	self assert: result from first equals: 'TABLEName'.
	