test-grammar
testDo4
	| string |

	string := 
'
do print 1
   if foo
    then print 2
    else print 3
   print 4
'.

	self parse: string rule: #start.
	self assert: result first size = 3.