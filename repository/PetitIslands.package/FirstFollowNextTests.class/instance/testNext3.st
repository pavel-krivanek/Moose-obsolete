test next
testNext3
	| p nextSet a b |
	a := 'a' asParser.
	b := 'b' asParser.
	
	p := a / b.
	
	nextSet := (self next: a in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: ''].
	
	nextSet := (self next: b in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: ''].
	
	nextSet := (self next: p in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: ''].
