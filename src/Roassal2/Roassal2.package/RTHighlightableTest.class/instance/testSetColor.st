tests
testSetColor

	| i |
	i := RTHighlightable new.
	i color: Color red.
	self assert: Color red equals: i color