test-grammar
testFuncDef2

self parse: 
'def __eq__(self,
	other):
	print 1
' rule: #funcDef.

	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	
	self assert: result second = '__eq__'.

	self assert: result third size = 1.
	self assert: result third allSatisfy: [ :e | e = #print ].
