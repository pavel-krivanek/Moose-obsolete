tests
testSelectCoreWithMoreTablesAndColumns
	super testSelectCoreWithMoreTablesAndColumns.
	self assert: (result isKindOf: SQLSelectStmtNode).
	self assert: (result from isMemberOf: OrderedCollection).
	self assert: result from size equals: 2.
	self assert: result from first equals: 'testTable'.
	self assert: result from second equals: 'testTable2'