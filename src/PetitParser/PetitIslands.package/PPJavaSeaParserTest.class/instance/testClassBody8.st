tests - class
testClassBody8
	self parse: '{
		private static final int ANNOTATION= 0x00002000;
		static { int i; }
		
		public String[] getStrings() {  }
}' 
	rule: #classBody.
	
	
	self assert: result size = 1.
	self assert: result first simpleName = 'getStrings'.
