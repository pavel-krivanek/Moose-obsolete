test-grammar
testIf05
	| string |

	"
		Please note that ST editor does not have monospaced editor!
	"	
	string := 
'
if foo 
	then print 1
	     print 11      
	else print 2

	print 42
'.

	self parse: string rule: #start.
	self assert: result size = 2.
	self assert: result first second size = 2.
	self assert: result first third size = 1.
	self assert: result second = #print.