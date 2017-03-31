test-grammar
testIf06
	| string |

	string := 
'
if foo
then print 2
else print 3
'.

	self parse: string rule: #if.