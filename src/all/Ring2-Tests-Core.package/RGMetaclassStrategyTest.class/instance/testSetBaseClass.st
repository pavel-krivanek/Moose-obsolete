tests
testSetBaseClass

	| env class1 class2 |
	
	env := RGEnvironment new.
	class1 := env ensureClassNamed: 'SomeClass1'.
	class2 := env ensureClassNamed: 'SomeClass2'.
	self assert: class1 metaclass baseBehavior equals: class1.
	class1 metaclass baseClass: class2.
	self assert: class1 metaclass baseBehavior equals: class2.
	