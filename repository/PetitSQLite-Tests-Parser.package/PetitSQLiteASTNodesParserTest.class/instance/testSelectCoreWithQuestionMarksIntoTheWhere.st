tests
testSelectCoreWithQuestionMarksIntoTheWhere
	super testSelectCoreWithQuestionMarksIntoTheWhere.
	self assert: (result isMemberOf: SQLSelectStmtNode).
	self assert: (result from isMemberOf: OrderedCollection).
	self assert: result from size equals: 1.
	self assert: result from first equals: 'APPDEFAULT'