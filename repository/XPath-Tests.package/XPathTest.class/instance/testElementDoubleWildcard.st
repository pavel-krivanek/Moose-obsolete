tests
testElementDoubleWildcard
	self
		assertNodeSet: (XPath for: 'addressbook/element(*:*)' in: document)
		hasNodes: (document allElementsNamed: 'person').
	self
		assertNodeSet: (XPath for: 'book:addressbook/element(*:*)' in: namespacedDocument)
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self
		assertNodeSet:
			(XPath
				for: 'element(*:*)/element(*:*)'
				in: namespacedDocument
				context: (self newContext declarePrefix: 'two' uri: 'personNS')) 
		hasNodes: (namespacedDocument allElementsNamed: 'person').