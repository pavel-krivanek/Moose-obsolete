test first
testFirst4
	| p first |
	p := ('a' asParser plus) optional, 'b' asParser.
	
	self assert: (self first: p) anyMatches: 'a'.
	self assert: (self first: p) anyMatches: 'b'.
