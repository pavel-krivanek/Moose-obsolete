test-grammar
testFuncDef10

self parse: 
'def _(self,other):
	print 1
' rule: #funcDef.

	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	
	self assert: result second = '_'.

	self assert: result third size = 1.
	self assert: result third first allSatisfy: [ :e | e = #print ].
