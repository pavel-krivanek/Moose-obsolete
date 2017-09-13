tests
testEmpty
	self assert: element modelElement isNil.
	self assert: element owningElement isNil.
	self assert: element ownedElements isEmpty.
	self assert: element sourceEdges isEmpty.
	self assert: element targetEdges isEmpty