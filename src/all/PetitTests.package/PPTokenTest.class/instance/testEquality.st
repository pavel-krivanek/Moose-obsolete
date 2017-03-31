testing-comparing
testEquality
	| token1 token2 |
	token1 := self parse: 'foo' using: self identifier.
	token2 := self parse: 'foo' using: self identifier.
	self deny: token1 == token2.
	self assert: token1 equals: token2.
	self assert: token1 hash equals: token2 hash