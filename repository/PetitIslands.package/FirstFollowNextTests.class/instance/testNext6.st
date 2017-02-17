test next
testNext6
	| p nextSet a b n a1 a2 |
	a1 := 'a1' asParser wrapped.
	a2 := 'a2' asParser wrapped / nil asParser.
	a := (a1 asParser, a2 asParser) wrapped.
	b := 'b' asParser.
	n := 'nil' asParser optional.
	
	p := a, n, b.
	
	nextSet := (self next: a1 in: p).
	self assert: nextSet anySatisfy: [:e | e matches: 'a2'].
	self assert: nextSet anySatisfy: [:e | e matches: 'nilb'].
	self assert: nextSet anySatisfy: [:e | e matches: 'b'].

	nextSet := (self next: a2 in: p).
	self assert: nextSet anySatisfy: [:e | e matches: 'nilb'].
	self assert: nextSet anySatisfy: [:e | e matches: 'b'].


	nextSet := (self next: a in: p).
	self assert: nextSet anySatisfy: [:e | e matches: 'nilb'].
	self assert: nextSet anySatisfy: [:e | e matches: 'b'].
	
	nextSet := (self next: n in: p).
	self assert: nextSet anySatisfy: [:e | e matches: 'b'].
	
	nextSet := (self next: b in: p).
	self assert: nextSet anySatisfy: [:e | e end matches: ''].
