test-grammar
testIf01
	| string |

	string :=  'if foo then print 1 else print 2'.

	self parse: string rule: #if.
	self assert: result second size = 1.
	self assert: result second first = #print.
	self assert: result third size = 1.
	self assert: result third first = #print.