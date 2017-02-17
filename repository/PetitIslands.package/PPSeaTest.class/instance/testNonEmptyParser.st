tests - nonempty
testNonEmptyParser
	| p |
	p := 'a' asParser optional nonEmpty.
	
	self assert: p parse: 'a'.
	self assert: p fail: ''.