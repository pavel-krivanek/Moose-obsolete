tests
testElementNameTest
	self
		assertNodeSet: (document xpath: 'element(addressbook)/element(person)')
		hasNodes: (document allElementsNamed: 'person').
	self assert:
		(namespacedDocument xpath: 'element(addressbook)/element(person)') isEmpty.