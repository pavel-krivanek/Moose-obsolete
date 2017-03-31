test first
testFirstTerminal4
	| p |
	p := nil asParser.
	
	self assert: (self first: p) anySatisfy: [:e | e end matches: ''].