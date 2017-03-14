testing
testSize
	| result |
	result := self parse: 'foo' using: self identifier.
	self assert: result size equals: 3