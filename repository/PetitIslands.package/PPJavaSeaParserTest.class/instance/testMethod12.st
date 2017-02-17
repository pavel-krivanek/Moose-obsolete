tests - method
testMethod12
	self parse: 'public void _bar () { 
	}' rule: #methodDef.

	self assert: result simpleName = '_bar'.