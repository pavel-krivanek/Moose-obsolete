test next
testNext5
	| p nextSet a b n a1 a2 |
	a1 := 'a1' asParser wrapped.
	a2 := 'a2' asParser wrapped.
	a := (a1 asParser, a2 asParser) wrapped.
	b := 'b' asParser.
	n := 'n' asParser optional.
	
	p := a, n, b.
	
	nextSet := (self next: a1 in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: 'a2'].

	nextSet := (self next: a2 in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].
	self assert: nextSet anySatisfy: [:e | e end matches: 'nb'].



	nextSet := (self next: a in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].
	self assert: nextSet anySatisfy: [:e | e end matches: 'nb'].
	
	nextSet := (self next: n in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].
	
	nextSet := (self next: b in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: ''].
	self assert: nextSet noneSatisfy: [:e | e end matches: 'b'].	