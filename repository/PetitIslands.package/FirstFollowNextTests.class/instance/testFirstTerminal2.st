test first
testFirstTerminal2
	| p |
	p := 'a' asParser not.
	
	self assert: (self first: p) noneMatches: 'a'.