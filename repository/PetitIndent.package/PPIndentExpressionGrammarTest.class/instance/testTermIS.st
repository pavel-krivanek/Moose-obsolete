testing
testTermIS
	result := self parse: '1 * 
	2 + 3
' rule: #term.

	self assert: result size = 3.
	self assert: result first = 1.
	self assert: result second inputValue = '*'.
	self assert: result third first = #indent.
	self assert: result third second first = 2.
	self assert: result third second second inputValue = '+'.
	self assert: result third second third = 3.		
	self assert: result third third = #dedent.
		