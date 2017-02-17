tests
testClassForElementNamespaceURI
	self assert:
		(self newFactory
			classForElement: 'test'
			namespaceURI: '') == XMLElement.
	self assert:
		(self newFactory
			classForElement: 'test'
			namespaceURI: 'testNS') == XMLElement.