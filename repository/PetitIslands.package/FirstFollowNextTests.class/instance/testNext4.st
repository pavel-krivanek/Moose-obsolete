test next
testNext4
	| p nextSet a b n |
	a := 'a' asParser.
	b := 'b' asParser.
	n := nil asParser.
	
	p := a, n, b.
	
	nextSet := (self next: a in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].
	
	nextSet := (self next: n in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].
	
	nextSet := (self next: b in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: ''].
