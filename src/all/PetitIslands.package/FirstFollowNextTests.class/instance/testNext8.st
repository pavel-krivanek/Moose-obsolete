test next
testNext8
	| p nextSet a b n  c |
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	n := nil asParser.
	
	p := a, n, a, b, c.
	
	nextSet := (self next: a in: p).
	self assert: nextSet anySatisfy: [:e | e matches: 'abc'].
	self assert: nextSet anySatisfy: [:e | e matches: 'bc'].

