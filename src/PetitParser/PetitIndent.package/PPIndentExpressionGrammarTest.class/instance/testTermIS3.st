testing
testTermIS3
	result := self parse: '1 * 
	2 + 3
+ 4' rule: #term.

	self assert: result size = 3.
	
	self assert: result first first = 1.
	self assert: result second inputValue = '+'.
	self assert: result third = 4.