tests
testNewElement
	super testNewElement.

	self assert: self newFactoryWithClasses newElement class == self elementClass.