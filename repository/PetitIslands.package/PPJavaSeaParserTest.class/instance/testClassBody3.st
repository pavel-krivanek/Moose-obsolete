tests - class
testClassBody3
	self parse: '{
		// some comment
	
		public void methodA() {
			System.out.println();
		}
	
		/**
		 *
		 */
		public Bar methodB(Some argument, and another)
		{
			return new Bar();
		}
	}' 
	rule: #classBody.
	
	self assert: result first simpleName = 'methodA'.
	self assert: result second simpleName = 'methodB'.	
	self assert: result second returnType = 'Bar'.