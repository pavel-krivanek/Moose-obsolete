tests - method
testMethod6
	self fail: 'private InnerClass {  }
	
	   public void methodA() 
		{ 
		}' 
	rule: #methodDef.
	