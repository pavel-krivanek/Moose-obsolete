testing
testPrim2
	result := self parse: '
	1
' rule: #prim.
	self assert: result size = 3.
	self assert: result second = 1.