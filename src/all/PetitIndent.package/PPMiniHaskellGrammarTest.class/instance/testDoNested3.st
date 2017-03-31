test-grammar
testDoNested3
	| string |
	string := 
'
  do print 1
     print 2
     do 
   print 3
   print 4
     print 5'.

	self parse: string rule: #do.
	self assert: result size = 4.
	self assert: result third size = 2.