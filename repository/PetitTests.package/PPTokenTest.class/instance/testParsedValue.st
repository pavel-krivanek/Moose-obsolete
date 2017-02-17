testing-values
testParsedValue
	| input result |
	input := 'foo'.
	result := self parse: input using: self identifier.
	self assert: result parsedValue equals: #($f $o $o)