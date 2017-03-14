test-grammar
testDo2
	| string |

	"
		Please note that ST editor does not have monospaced editor!
	"	
	string := 
'
do print 1
   print 2
   print 3

print 4
'.

	self parse: string rule: #start.
	self assert: result size = 2.
	self assert: result first size = 3.
	self assert: result second = #print.