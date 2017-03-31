tests
testClass2
	self parse: 'public class Foo<Bar> extends Zorg implements Qwark, Bark
		{
			// I am only empty class
		}' 
	rule: #javaClass.

	self assert: result simpleName = 'Foo'.