test next
testNextSequence
	| a p nextSet b c |
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	
	p := a, b, c.
	
	nextSet := (self next: a in: p).
	self assert: nextSet noneSatisfy: [:e | e matches: 'b' ].
	self assert: nextSet noneSatisfy: [:e | e matches: 'c' ].
	self assert: nextSet anySatisfy: [:e | e matches: 'bc' ].


