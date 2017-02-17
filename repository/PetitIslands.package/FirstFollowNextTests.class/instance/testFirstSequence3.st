test first
testFirstSequence3
	| p first |
	p := nil asParser, nil asParser.
	
	self assert: (self first: p) anySatisfy: [:e | e end matches: ''].
