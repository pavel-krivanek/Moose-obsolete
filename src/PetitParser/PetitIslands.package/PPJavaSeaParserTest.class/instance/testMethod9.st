tests - method
testMethod9
	self parse: 'public void foo() { if (true) {} return false;}' rule: #methodDef.

	self assert: result simpleName = 'foo'.