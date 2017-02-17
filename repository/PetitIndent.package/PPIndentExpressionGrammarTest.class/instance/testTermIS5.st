testing
testTermIS5
	self parse: '65*
    64*
        75*
            28
    *68
' rule: #term.

	self assert: result size = 3.
	
	self assert: result first = 65.
	self assert: result second inputValue = '*'.
	self assert: result third first = #indent.
	self assert: result third third = #dedent.