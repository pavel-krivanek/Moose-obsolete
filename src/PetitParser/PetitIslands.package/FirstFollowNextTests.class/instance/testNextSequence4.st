test next
testNextSequence4
	| a p nextSet b c d |
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	d := 'd' asParser.
	
	p := (a, b sea, c sea) wrapped, d.
	
	nextSet := (self next: a in: p).
	self assert: nextSet size = 2.
	
	self assert: nextSet anySatisfy: [:e | e matches: 'bc' ].
	self assert: nextSet anySatisfy: [:e | e matches: 'd' ].

