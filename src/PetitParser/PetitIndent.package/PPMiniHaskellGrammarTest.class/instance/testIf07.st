test-grammar
testIf07
	| string |

	string := 
'
if foo 
   then if bar
               then print 21
               else print 22   
                    print 23      
   else print 11
        print 12
        print 13
'.

	self parse: string rule: #if.
	self assert: result size = 3.
	self assert: result first = 'foo'.
	self assert: result second first first = 'bar'.
	self assert: result second first second size = 1.
	self assert: result second first third size = 2.
	self assert: result third size = 3.