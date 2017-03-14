testing
testTerm12
	result := self parse: '1 + 2 * 3' rule: #term.
	self assert: result size = 3.
	self assert: result second inputValue = '+'.
	self assert: result first = 1.
	self assert: result third isArray.
	self assert: result third first = 2.
	self assert: result third second inputValue = '*'.
	self assert: result third third = 3.