test next
testNextDelegate1

	| a nextSet b c p |
	a := 'a' asParser optional wrapped.
	b := 'b' asParser optional wrapped.
	c := 'c' asParser optional wrapped.
	p := a, b, c.

	nextSet := (self next: a in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].
	self assert: nextSet anySatisfy: [:e | e end matches: 'c'].


