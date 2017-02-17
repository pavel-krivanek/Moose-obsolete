test isNullable
testIsNullableSeq1
	| a b c p |
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	
	p := a, b, c.
	
	self assert: p acceptsEpsilon not.