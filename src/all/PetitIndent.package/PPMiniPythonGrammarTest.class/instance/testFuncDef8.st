test-grammar
testFuncDef8

self parse: 
'def _fd(self, other): #comment
	something
	
	crazy
' rule: #funcDef.

	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	
	self assert: result second = '_fd'.

	self assert: result third size = 3.
	self assert: result third first = #().
	self assert: result third second  = #().
	self assert: result third third  = #().
