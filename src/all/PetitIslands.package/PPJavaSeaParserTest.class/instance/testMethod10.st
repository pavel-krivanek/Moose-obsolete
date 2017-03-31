tests - method
testMethod10
	self parse: 'public void foo () { 
	}' rule: #methodDef.

	self assert: result simpleName = 'foo'.