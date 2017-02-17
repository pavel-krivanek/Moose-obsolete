testing
testTerm11
	result := self parse: '1 + 2' rule: #term.
	self assert: result size = 3.
	self assert: result first = 1.
	self assert: result second inputValue = '+'.
	self assert: result third = 2.
	