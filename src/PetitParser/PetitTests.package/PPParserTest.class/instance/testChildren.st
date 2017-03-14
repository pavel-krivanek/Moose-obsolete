testing-utilities
testChildren
	| p1 p2 p3 |
	p1 := #lowercase asParser.
	p2 := p1 ==> #asUppercase.
	p3 := PPUnresolvedParser new.
	p3 def: p2 / p3.
	self assert: p1 children isEmpty.
	self assert: p2 children size equals: 1.
	self assert: p3 children size equals: 2