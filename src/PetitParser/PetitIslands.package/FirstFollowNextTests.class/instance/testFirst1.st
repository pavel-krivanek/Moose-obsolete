test first
testFirst1
	| p first |
	p := nil asParser / 'a' asParser.
	
	self assert: (self first: p) anyMatches: ''.
	self assert: (self first: p) anyMatches: 'a'.
