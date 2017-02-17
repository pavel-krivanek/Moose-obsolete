tests - method
testMethod3
	self parse: 'Bar methodB(Some argument, and another)
		{
			return new Bar();
		}'
	rule: #methodDef.
	
	self assert: result simpleName = 'methodB'.
	self assert: result returnType = 'Bar'.