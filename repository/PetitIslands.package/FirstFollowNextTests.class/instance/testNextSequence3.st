test next
testNextSequence3
	| a p nextSet b c |
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	
	p := (a, b sea) wrapped, c.
	
	nextSet := (self next: a in: p).
	self assert: nextSet size = 2.
	
	self assert: nextSet anySatisfy: [:e | e matches: 'b' ].
	self assert: nextSet anySatisfy: [:e | e matches: 'c' ].

