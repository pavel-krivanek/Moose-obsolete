tests - method
testMethod1
	self parse: 'void foo() { }' rule: #methodDef.
	
	self assert: result simpleName = 'foo'.
	self assert: result returnType = 'void'.