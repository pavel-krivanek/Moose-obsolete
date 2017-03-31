test next
testNextRepeat1
	| p nextSet a b n  c |
	a := 'a' asParser star.
	
	nextSet := (self next: a in: a).
	self assert: nextSet size: 1.
	self assert: nextSet anySatisfy: [:e | e end matches: '']
