test-grammar
testDoNested1
	| string |
	string := 
'
  do print 1
     print 2
     do print 3
        print 4'.

	self parse: string rule: #do.
	self assert: result size = 3.
	self assert: result third size = 2.