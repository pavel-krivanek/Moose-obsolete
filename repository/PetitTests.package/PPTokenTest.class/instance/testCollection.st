testing
testCollection
	| input result |
	input := 'foo    '.
	result := self parse: input using: self identifier.
	self assert: result collection equals: input.
	self assert: result collection == input