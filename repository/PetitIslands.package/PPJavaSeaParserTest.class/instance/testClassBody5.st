tests - class
testClassBody5
	self parse: '{
	// I am only empty class
}' 
	rule: #classBody.
	
	self assert: result size = 0.
