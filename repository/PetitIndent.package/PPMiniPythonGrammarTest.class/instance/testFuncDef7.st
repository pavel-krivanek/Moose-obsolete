test-grammar
testFuncDef7

self parse: 
'def _fd(self, other): #comment
	""" this is very"""
	print 2
	
	print 1
' rule: #funcDef.

	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	
	self assert: result second = '_fd'.

	self assert: result third size = 4.
	self assert: result third first = #().
	self assert: result third second  = #print.
	self assert: result third third = #().
	self assert: result third fourth  = #print.
