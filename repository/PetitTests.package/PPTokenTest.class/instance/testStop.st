testing
testStop
	| result |
	result := self parse: 'foo' using: self identifier.
	self assert: result stop equals: 3