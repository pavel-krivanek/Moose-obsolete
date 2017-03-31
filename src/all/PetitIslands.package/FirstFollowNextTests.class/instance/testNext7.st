test next
testNext7
	| p nextSet a b n  c |
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	n := nil asParser.
	
	p := a, b, a, n, c.
	
	nextSet := (self next: a in: p).

	self assert: nextSet anySatisfy: [:e | e matches: 'bac'].
	self assert: nextSet anySatisfy: [:e | e matches: 'c'].

