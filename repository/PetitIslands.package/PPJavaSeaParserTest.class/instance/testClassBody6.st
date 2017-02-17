tests - class
testClassBody6
	self parse: '{
		static { int i; }
}' 
	rule: #classBody.
	
	
	self assert: result size = 0.
