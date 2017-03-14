tests
testSelectCoreWithStar
	super testSelectCoreWithStar.
	self assert: (result isKindOf: SQLSelectStmtNode).
	self assert: (result from isMemberOf: OrderedCollection).
	self assert: result from size equals: 1