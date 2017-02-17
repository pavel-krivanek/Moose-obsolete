test next
testNextRepeat4
	| a nextSet b p root |
	a := 'a' asParser.
	b := 'b' asParser optional.
	
	p := a, b.
	root := p plus.
	
	nextSet := (self next: a in: root).
	self assert: nextSet size = 3.
	self assert: nextSet anySatisfy: [ :e | e matches: 'a'].
	self assert: nextSet anySatisfy: [ :e | e matches: 'ab'].
	self assert: nextSet anySatisfy: [ :e | e acceptsEpsilon ].

