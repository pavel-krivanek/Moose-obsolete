test-grammar
testLet2
	| string |
	string := 
'
let a = 1
     b = 2
'.

	self fail: string rule: #let.