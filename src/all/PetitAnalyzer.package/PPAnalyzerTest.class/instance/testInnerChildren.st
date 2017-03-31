testing
testInnerChildren
	| p1 p2 p3 |
	p1 := #digit asParser name: 'a'.
	p2 := #digit asParser star name: 'b'.
	p3 := (#digit asParser name: 'c') token star end.
	self assert: p1 innerChildren isEmpty.
	self assert: p2 innerChildren size equals: 1.
	self assert: (p2 innerChildren allSatisfy: [ :each | each name isNil ]).
	self assert: p3 innerChildren size equals: 2.
	self assert: (p3 innerChildren allSatisfy: [ :each | each name isNil ])