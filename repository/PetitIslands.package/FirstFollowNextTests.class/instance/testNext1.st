test next
testNext1
	| p nextSet |
	p := 'a' asParser.
	
	nextSet := (self next: p in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: ''].