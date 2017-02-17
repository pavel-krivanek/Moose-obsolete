test first
testFirstTerminal3
	| p |
	p := 'a' asParser and.
	
	self assert: (self first: p) anyMatches: 'a'