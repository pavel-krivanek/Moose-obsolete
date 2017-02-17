test first
testFirstComplex4
	| p first root |

	p := 'a' asParser / nil asParser / 'b' asParser.
	root := (p, 'c' asParser not) wrapped.
	
	first := (self first: root).
	
	self assert: first anySatisfy: [:e | e matches: 'a'].
	self assert: first anySatisfy: [:e | e matches: 'b'].
	self assert: first anySatisfy: [:e | e matches: ''].
	self assert: first noneSatisfy: [:e | e end matches: 'c'].
