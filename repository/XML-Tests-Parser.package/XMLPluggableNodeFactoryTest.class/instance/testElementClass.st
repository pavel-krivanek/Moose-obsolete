tests
testElementClass
	super testElementClass.

	self assert: self newFactoryWithClasses elementClass == self elementClass.