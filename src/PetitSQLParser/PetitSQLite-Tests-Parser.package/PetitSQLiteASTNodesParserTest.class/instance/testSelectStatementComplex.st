tests
testSelectStatementComplex
	super testSelectStatementComplex.
	self assert: (result isMemberOf: SQLSelectStmtNode).
	self assert: (result from isMemberOf: OrderedCollection).
	self assert: result from size equals: 2.
	self assert: result from first equals: 'USR_TAB_C'.
	self assert: result from second equals: 'USR_T_C'