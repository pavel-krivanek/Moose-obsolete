test-grammar
testIf04
	| string |

	string := 
'
if foo 
	then print 1
	     print 11      
	else print 2
	     print22
'.

	self parse: string rule: #if.
	self assert: result second size = 2.
	self assert: result third size = 2.