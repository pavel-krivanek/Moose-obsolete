test isNullable
testIsNullableEOF
	| a |
	a := #eof asParser.
	self assert: a acceptsEpsilon not.