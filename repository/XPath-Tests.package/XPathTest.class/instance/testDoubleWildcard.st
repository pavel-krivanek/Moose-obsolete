tests
testDoubleWildcard
	self
		assertNodeSet: (XPath for: 'addressbook/*:*' in: document)
		hasNodes: (document allElementsNamed: 'person').
	self
		assertNodeSet: (XPath for: 'book:addressbook/*:*' in: namespacedDocument)
		hasNodes: (namespacedDocument allElementsNamed: 'person').
	self
		assertNodeSet: 
			(XPath
				for: '*:*/*:*'
				in: namespacedDocument
				context: (self newContext declarePrefix: 'two' uri: 'personNS'))
		hasNodes: (namespacedDocument allElementsNamed: 'person').