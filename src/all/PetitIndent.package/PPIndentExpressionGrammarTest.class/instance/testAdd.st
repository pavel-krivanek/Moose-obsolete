testing
testAdd
	result := self parse: '1+2' rule: #add.
	self assert: result isArray.
	self assert: result first = 1.
	self assert: result second inputValue = '+'.
	self assert: result third = 2.