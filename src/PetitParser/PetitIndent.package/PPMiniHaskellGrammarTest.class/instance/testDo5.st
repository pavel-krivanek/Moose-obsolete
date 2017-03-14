test-grammar
testDo5
	| string |
	string := 
'
     do 
 print 1
 print 2'.

	self parse: string rule: #do.
	self assert: result size = 2.