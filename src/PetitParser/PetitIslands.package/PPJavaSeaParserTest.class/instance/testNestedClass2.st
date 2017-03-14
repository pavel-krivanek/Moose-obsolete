tests - nested class
testNestedClass2
	self parse: 'class Foo 
		{
			private class Entry {
        		private void bar() {
       		}
			}
			
			public void baz() {  }
		}'
	rule: #javaClass.

	self assert: result simpleName = 'Foo'.
	self assert: result methodDeclarations size = 2.

	self assert: result methodDeclarations first simpleName = 'Entry'.
	self assert: result methodDeclarations first methodDeclarations first simpleName = 'bar'.
	self assert: result methodDeclarations second simpleName = 'baz'.