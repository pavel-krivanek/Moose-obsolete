testing
testAllParsers
	| p1 p2 p3 |
	p1 := #lowercase asParser.
	p2 := p1 ==> #asUppercase.
	p3 := PPUnresolvedParser new.
	p3 def: p2 / p3.
	self assert: p1 allParsers size equals: 1.
	self assert: p2 allParsers size equals: 2.
	self assert: p3 allParsers size equals: 3