test isNullable
testIsNullableSeq2
	| a b c p |
	a := 'a' asParser.
	b := 'b' asParser optional.
	c := 'c' asParser.
	
	p := a, b, c.
	
	self assert: p acceptsEpsilon not.