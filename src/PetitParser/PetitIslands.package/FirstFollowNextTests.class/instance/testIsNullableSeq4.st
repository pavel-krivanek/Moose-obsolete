test isNullable
testIsNullableSeq4
	| a b c p |
	a := 'a' asParser optional wrapped.
	b := 'b' asParser optional wrapped.
	c := 'c' asParser wrapped optional.
	
	p := a, b, c.
	
	self assert: p acceptsEpsilon.