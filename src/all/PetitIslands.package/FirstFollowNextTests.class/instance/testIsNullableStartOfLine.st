test isNullable
testIsNullableStartOfLine
	| a |
	a := #startOfLine asParser.
	self assert: a acceptsEpsilon not.