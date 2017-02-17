test first
testFirstChoice3
	| p first |
	p := 'a' asParser / nil asParser / 'b' asParser.
	
	first := (self first: p).
	
	self assert: first anySatisfy: [:e | e matches: 'a'].
	self assert: first anySatisfy: [:e | e matches: 'b'].
	self assert: first anySatisfy: [:e | e matches: ''].