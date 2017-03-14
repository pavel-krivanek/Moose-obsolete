tests - class
testClassBody13
	self parse: '{
			class A { 
        		void bar() {}
			}
			
			void baz() {}
		}' 
	rule: #classBody.
	
	self assert: result isPetitFailure not.
	self assert: result first simpleName = 'A'.
	self assert: result first methodDeclarations first simpleName = 'bar'.
	self assert: result second simpleName = 'baz'.
