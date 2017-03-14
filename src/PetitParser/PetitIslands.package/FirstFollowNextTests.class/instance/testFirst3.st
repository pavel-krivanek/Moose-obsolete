test first
testFirst3
	| p first |
	p := ('a' asParser optional, 'b' asParser asParser optional), 'c' asParser.
	
	self assert: (self first: p) anyMatches: 'a'.
	self assert: (self first: p) anyMatches: 'b'.
