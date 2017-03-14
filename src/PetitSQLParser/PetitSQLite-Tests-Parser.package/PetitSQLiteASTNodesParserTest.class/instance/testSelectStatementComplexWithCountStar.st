tests
testSelectStatementComplexWithCountStar
	super testSelectStatementComplexWithCountStar.
	self assert: (result isMemberOf: SQLSelectStmtNode).
	self assert: (result from isMemberOf: OrderedCollection).
	self assert: result from size equals: 1