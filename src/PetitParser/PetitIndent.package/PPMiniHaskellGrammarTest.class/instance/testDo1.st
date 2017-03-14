test-grammar
testDo1
	| string |

	string := 
'
do print 1
   print 2
   print 3'.

	self parse: string rule: #do.
	self assert: result size = 3.