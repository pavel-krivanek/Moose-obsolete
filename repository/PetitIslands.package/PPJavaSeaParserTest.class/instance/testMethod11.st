tests - method
testMethod11
	self parse: 'public void foo_bar () { 
	}' rule: #methodDef.

	self assert: result simpleName = 'foo_bar'.