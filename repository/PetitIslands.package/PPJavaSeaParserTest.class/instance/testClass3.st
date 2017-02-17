tests
testClass3
	self parse: 'private class Bar<T> extends Zorg implements Qwark, Bark
		{
			public static void methodA() { /* is empty */ }
		}' 
	rule: #javaClass.

	self assert: result simpleName = 'Bar'.
	self assert: result methodDeclarations first simpleName = 'methodA'.