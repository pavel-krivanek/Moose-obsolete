tests
testDeleteStatementWithSimpleWhere
	super testDeleteStatementWithSimpleWhere.
	
	self assert: (result isMemberOf: SQLDeleteStmtNode).
	self assert: (result from isMemberOf: OrderedCollection).
	self assert: result from size equals: 1.
	self assert: result from first equals: 'APPLOCK'.
	
	self assert: (result where isMemberOf: OrderedCollection).
	self assert: result where size equals: 1.
	self assert: (result where first isMemberOf: Array).
	self assert: result where first first equals: 'not exists'.
	self assert: result where first second equals: 'APP'.
	