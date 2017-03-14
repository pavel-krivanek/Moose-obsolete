testing-values
testInputValue
	| input result |
	input := 'foo'.
	result := self parse: input using: self identifier.
	self assert: result inputValue equals: input.
	self deny: result inputValue == input