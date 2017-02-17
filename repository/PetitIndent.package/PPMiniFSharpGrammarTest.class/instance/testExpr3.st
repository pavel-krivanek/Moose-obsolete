as yet unclassified
testExpr3
	self parse: 'printf "hi"' rule: #expr.
	self assert: result size = 1.
	self assert: result first first = #printf.
	self assert: result first second = 'hi'.
	
	self parse: 'printf a' rule: #expr.	
	self assert: result size = 1.
	self assert: result first first = #printf.
	self assert: result first second = 'a'.