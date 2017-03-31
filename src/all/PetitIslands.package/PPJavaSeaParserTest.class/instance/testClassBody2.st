tests - class
testClassBody2
	self parse: '{
		// some comment
		public void methodA() { 
		}
	
		private Another methodB( )
		{
			return new Another();
		}
	}' 
	rule: #classBody.
	
	self assert: result first simpleName = 'methodA'.
	self assert: result second simpleName = 'methodB'.	