test first
testFirstChoice2
	| p first |
	p := 'a' asParser / nil asParser.
	
	first := (self first: p).
	
	self assert: first anySatisfy: [:e | e matches: 'a'].
	self assert: first anySatisfy: [:e | e matches: ''].
