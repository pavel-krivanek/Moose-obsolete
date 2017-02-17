test next
testNextRepeat2
	| p nextSet a b astar |
	a := 'a' asParser.
	b := 'b' asParser.
	astar := a star.
	
	p := astar, b.
	
	nextSet := (self next: astar in: p).

	self assert: nextSet size: 1.
	self assert: nextSet anySatisfy: [:e | e end matches: 'b'].


