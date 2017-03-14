tests
testNewDocument
	super testNewDocument.

	self assert: self newFactoryWithClasses newDocument class == self documentClass.