test-grammar
testFuncDef3

self parse: 
'def __eq__(self,
	other):
	"""
	  this is very
	 strange and
	    unformatted comment
	"""
	print 1
' rule: #funcDef.

	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	
	self assert: result second = '__eq__'.

	self assert: result third size = 2.
	self assert: result third first = #().
	self assert: result third second  = #print.
