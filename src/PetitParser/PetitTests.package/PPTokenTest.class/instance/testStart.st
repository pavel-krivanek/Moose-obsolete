testing
testStart
	| result |
	result := self parse: 'foo' using: self identifier.
	self assert: result start equals: 1