testing
testTerm
	result := self parse: '1' rule: #term.
	self assert: result = 1.
	