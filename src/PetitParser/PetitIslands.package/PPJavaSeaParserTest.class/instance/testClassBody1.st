tests - class
testClassBody1
	self parse: '{
		// some comment
		public void methodA() 
		{ 
		}
	}' 
	rule: #classBody.

	self assert: result first returnType = 'void'.	
	self assert: result first simpleName = 'methodA'.