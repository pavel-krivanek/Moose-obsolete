test-grammar
testIf10
	| string |
	string := 
'
if foo then print 1
       else print 2
'.

	self parse: string rule: #if.
	self assert: result size = 3.
	self assert: result first = 'foo'.
	self assert: result second first = #print.
	self assert: result third first = #print.