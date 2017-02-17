tests - method
testMethod4
	self parse: 'void finalize() throws Throwable { }'
	rule: #methodDef.
	
	self assert: result simpleName = 'finalize'.