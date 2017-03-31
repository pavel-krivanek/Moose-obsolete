test first
testFirstComplex1
	| p first root |

	p := 'a' asParser / nil asParser.
	root := p, 'c' asParser.
	
	first := (self first: root).
	
	self assert: first size: 2.
	self assert: first anySatisfy: [:e | e matches: 'a'].
	self assert: first anySatisfy: [:e | e matches: 'c'].
	self assert: first noneSatisfy: [:e | e matches: ''].