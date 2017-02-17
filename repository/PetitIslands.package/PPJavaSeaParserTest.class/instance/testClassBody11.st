tests - class
testClassBody11
	self parse: '{
    void foo() { {}}
    void bar() { }
}' 
	rule: #classBody.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2.
	self assert: result first simpleName = 'foo'.
	self assert: result second simpleName  = 'bar'.	