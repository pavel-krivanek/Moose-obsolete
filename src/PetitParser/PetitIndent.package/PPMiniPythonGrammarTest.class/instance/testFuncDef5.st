test-grammar
testFuncDef5

self parse: 
'def _fd(self, other): #comment
	""" this is very"""
	print 1
' rule: #funcDef.

	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	
	self assert: result second = '_fd'.

	self assert: result third size = 2.
	self assert: result third first = #().
	self assert: result third second  = #print.
