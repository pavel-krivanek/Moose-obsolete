test first
testFirst2
	| p first |
	p := 'a' asParser optional, 'b' asParser.
	
	self assert: (self first: p) anyMatches: 'a'.
	self assert: (self first: p) anyMatches: 'b'.
