test first
testFirstChoice1
	| p first |
	p := nil asParser / '' asParser.
	
	self assert: (self first: p) anySatisfy: [:e | e matches: ''].
