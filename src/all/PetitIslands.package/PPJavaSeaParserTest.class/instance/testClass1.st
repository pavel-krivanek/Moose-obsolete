tests
testClass1
	self parse: 'private final class Foo 
		{
			// I am only empty class
		}'
	rule: #javaClass.

	self assert: result simpleName = 'Foo'.
	self assert: result methodDeclarations size = 0.