tests
testClassForElement
	super testClassForElement.

	self assert: (self newFactoryWithClasses classForElement: 'test') == self elementClass.