tests - nested class
testNestedClass1
	self parse: 'private final class Foo 
		{
			public void foo() {  }
			
			class Bar { 
				public void bar() { }
			}
		}'
	rule: #javaClass.

	self assert: result simpleName = 'Foo'.
	self assert: result methodDeclarations size = 2.
	self assert: result methodDeclarations first simpleName = 'foo'.
	self assert: result methodDeclarations second simpleName = 'Bar'.
	self assert: result methodDeclarations second methodDeclarations first simpleName = 'bar'.