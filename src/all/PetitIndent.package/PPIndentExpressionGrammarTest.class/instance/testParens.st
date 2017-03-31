testing
testParens
	result := self parse: ' 1
' rule: #parens.
	self assert: result size = 3.
	self assert: result first = #indent.
	self assert: result second = 1.
	self assert: result third = #dedent.
	