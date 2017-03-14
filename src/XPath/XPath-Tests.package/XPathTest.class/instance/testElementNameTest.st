tests
testElementNameTest
	self
		assertNodeSet: (document xPath: 'element(addressbook)/element(person)')
		hasNodes: (document allElementsNamed: 'person').
	self assert:
		(namespacedDocument xPath: 'element(addressbook)/element(person)') isEmpty.