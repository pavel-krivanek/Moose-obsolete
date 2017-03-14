tests - class
testClassBody7
	self parse: '{
		static { int i; }
		
		public String[] getStrings() {  }
}' 
	rule: #classBody.
	
	
	self assert: result size = 1.
	self assert: result first simpleName = 'getStrings'.