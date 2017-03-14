test-grammar
testLet1
	| string |
	string := 
'
let a = 1
    b = 2'.

	self parse: string rule: #let.
	self assert: result size = 2.