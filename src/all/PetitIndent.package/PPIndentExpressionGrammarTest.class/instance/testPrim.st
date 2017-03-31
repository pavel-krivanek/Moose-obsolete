testing
testPrim
	result := self parse: '1' rule: #prim.
	self assert: result = 1.