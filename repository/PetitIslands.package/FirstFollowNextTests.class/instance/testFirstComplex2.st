test first
testFirstComplex2
	| p first root |

	p := 'a' asParser / nil asParser / 'b' asParser.
	root := p, 'c' asParser.
	
	first := (self first: root).
	
	self assert: first size: 3.
	self assert: first anySatisfy: [:e | e matches: 'a'].
	self assert: first anySatisfy: [:e | e matches: 'b'].
	self assert: first anySatisfy: [:e | e matches: 'c'].
