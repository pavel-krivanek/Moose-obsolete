tests - method
testMethod2
	self parse: 'Foo m() { /** method body */ }' rule: #methodDef.
	
	self assert: result simpleName = 'm'.
	self assert: result returnType = 'Foo'.