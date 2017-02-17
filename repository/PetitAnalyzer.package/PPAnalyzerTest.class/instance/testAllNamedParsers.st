testing
testAllNamedParsers
	| p1 p2 p3 |
	p1 := #digit asParser name: 'a'.
	p2 := (#digit asParser name: 'b') star.
	p3 := (#digit asParser name: 'c') token end.
	self assert: p1 allNamedParsers size equals: 1.
	self assert: p1 allNamedParsers first name equals: 'a'.
	self assert: p2 allNamedParsers size equals: 1.
	self assert: p2 allNamedParsers first name equals: 'b'.
	self assert: p3 allNamedParsers size equals: 1.
	self assert: p3 allNamedParsers first name equals: 'c'