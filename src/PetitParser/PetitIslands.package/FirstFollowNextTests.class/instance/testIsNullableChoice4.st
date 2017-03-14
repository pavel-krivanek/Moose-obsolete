test isNullable
testIsNullableChoice4
	| a b c p |
	a := 'a' asParser optional wrapped.
	b := 'b' asParser optional wrapped.
	c := 'c' asParser optional wrapped.
	
	p := a / b / c.
	
	self assert: p acceptsEpsilon.