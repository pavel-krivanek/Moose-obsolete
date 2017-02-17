test next
testNextRepeat3
	| p nextSet a b astar |
	a := 'a' asParser.
	b := 'b' asParser.
	
	p := a star, b.
	
	nextSet := (self next: a in: p).

	self assert: nextSet size: 2.
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].
	self assert: nextSet anySatisfy: [:e | e end matches: 'a'].
