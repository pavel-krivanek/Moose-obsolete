tests - class
testClassBody4
	self parse: '{
		public void methodA() {
			System.out.println();
		}
		private InnerClass { }
	
		public Bar methodB(Some argument, and another)
		{
			return new Bar();
		}
	}' 
	rule: #classBody.
	
	self assert: result first simpleName = 'methodA'.
	self assert: result second simpleName = 'methodB'.	