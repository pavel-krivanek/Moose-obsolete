tests
testCDataClass
	super testCDataClass.

	self assert: self newFactoryWithClasses cdataClass == self cdataClass.