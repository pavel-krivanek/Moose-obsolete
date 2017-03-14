tests - method
testMethod5
	self parse: 'public void methodA() 
		{ 
		}' 
	rule: #methodDef.
	
	self assert: result simpleName = 'methodA'.