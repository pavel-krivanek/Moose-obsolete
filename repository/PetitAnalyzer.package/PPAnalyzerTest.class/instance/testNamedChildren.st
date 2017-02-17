testing
testNamedChildren
	| p1 p2 p3 p4 |
	p1 := #digit asParser name: 'a'.
	p2 := (#digit asParser name: 'b') star.
	p3 := (#digit asParser name: 'c') token end.
	p4 := ((#digit asParser name: 'c') token name: 'd') end.
	self assert: p1 namedChildren isEmpty.
	self assert: p2 namedChildren size equals: 1.
	self assert: p2 namedChildren first name equals: 'b'.
	self assert: p3 namedChildren size equals: 1.
	self assert: p3 namedChildren first name equals: 'c'.
	self assert: p4 namedChildren size equals: 1.
	self assert: p4 namedChildren first name equals: 'd'