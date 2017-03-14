test isNullable
testIsNullableChoice3
	| a b c p |
	a := 'a' asParser optional.
	b := 'b' asParser optional.
	c := 'c' asParser optional.
	
	p := a / b / c.
	
	self assert: p acceptsEpsilon.