tests
testClassForElementNamespaceURI
	super testClassForElementNamespaceURI.

	self assert:
		(self newFactoryWithClasses
			classForElement: 'test'
			namespaceURI: '') == self elementClass.
	self assert:
		(self newFactoryWithClasses
			classForElement: 'test'
			namespaceURI: 'testNS') == self elementClass.