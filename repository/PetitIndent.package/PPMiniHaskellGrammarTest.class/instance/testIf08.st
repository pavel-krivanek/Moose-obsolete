test-grammar
testIf08
	| string |

	string := 
'
if foo 
	then if bar
               then print 21
               else print 22'.

	self parse: string rule: #if.
	self assert: result size = 3.
	self assert: result first = 'foo'.
	self assert: result second first first = 'bar'.
	self assert: result second first second size = 1.
	self assert: result second first second first = #print.
	self assert: result second first third size = 1.
	self assert: result second first third first = #print.
	self assert: result third isNil.