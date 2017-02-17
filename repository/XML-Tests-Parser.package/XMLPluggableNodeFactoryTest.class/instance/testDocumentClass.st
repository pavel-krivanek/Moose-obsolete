tests
testDocumentClass
	super testDocumentClass.

	self assert: self newFactoryWithClasses documentClass == self documentClass.