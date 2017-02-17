test-grammar
testIf03
	| string |

	string := 
'
if foo 
	then print 1 
else print 2'.

	self fail: string rule: #if.