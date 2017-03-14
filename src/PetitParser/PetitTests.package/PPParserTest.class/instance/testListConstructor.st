testing-utilities
testListConstructor
	| p1 p2 p3 |
	p1 := PPChoiceParser with: $a asParser.
	p2 := PPChoiceParser with: $a asParser with: $b asParser.
	p3 := PPChoiceParser withAll: (Array with: $a asParser with: $b asParser with: $c asParser).
	self assert: p1 children size equals: 1.
	self assert: p2 children size equals: 2.
	self assert: p3 children size equals: 3